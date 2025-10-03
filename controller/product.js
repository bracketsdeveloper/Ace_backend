const express = require('express');
const router = express.Router();
const { body, check, validationResult } = require('express-validator');
const { verifyAccessToken } = require('../helper/jwt');
const verifyAdmin = require('../middleware/admin');
const create = require('../services/product/create');
const update = require('../services/product/update');
const destroy = require('../services/product/delete');
const { get, getAll, getAndFindAll, getAndFindAllCustom } = require('../services/product/get');
const { textValidation, IDValidation } = require('../helper/validation');
const uuid4 = require('uuid4');
const fs = require('fs');
const fsp = fs.promises;
const path = require('path');
const { Sequeize, Op, QueryTypes } = require('sequelize');
const readXlsxFile = require('read-excel-file/node');

/* ------------------------ Constants & Helpers ------------------------ */

const UPLOAD_DIR = path.resolve(__dirname, '../public/api/products');
const EXCEL_DIR = path.resolve(__dirname, '../public/api/excel');

async function ensureDir(dirPath) {
  await fsp.mkdir(dirPath, { recursive: true });
}

async function safeUnlink(filePath) {
  try {
    await fsp.unlink(filePath);
  } catch (err) {
    if (err && err.code !== 'ENOENT') {
      console.log('unlink error:', err);
    }
  }
}

function coerceSubCategoryId(input) {
  if (
    input === undefined ||
    input === null ||
    input === '' ||
    input === 'null' ||
    input === 'undefined'
  ) return null;
  const n = Number(input);
  return Number.isNaN(n) ? null : n;
}

function moveFile(sampleFile, destAbsPath) {
  return new Promise((resolve, reject) => {
    sampleFile.mv(destAbsPath, (err) => (err ? reject(err) : resolve()));
  });
}

/* ------------------------ CREATE ------------------------ */
// home page second section edit route.
router.post(
  '/create',
  verifyAccessToken,
  verifyAdmin,
  body('name').custom(async (value) => textValidation(value, 'name')),
  body('price').custom(async (value) => textValidation(value, 'price')),
  body('description').custom(async (value) => textValidation(value, 'description')),
  body('productCategoryId').custom(async (value) => IDValidation(value, 'product category Id')),
  body('image').custom(async (value, { req }) => {
    if (!req.files || Object.keys(req.files).length === 0) {
      return Promise.reject('Please select a file');
    }
    const m = req.files.image?.mimetype;
    if (m === 'image/png' || m === 'image/jpg' || m === 'image/jpeg' || m === 'image/webp') {
      return true;
    }
    return Promise.reject('Invalid image type');
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.mapped() });
    }
    try {
      let { name, price, description, productCategoryId, productSubCategoryId } = req.body;
      const subCatId = coerceSubCategoryId(productSubCategoryId);

      const sampleFile = req.files.image;
      const newFileName = `${uuid4()}-${sampleFile.name}`;
      await ensureDir(UPLOAD_DIR);
      const uploadAbsPath = path.join(UPLOAD_DIR, newFileName);

      await moveFile(sampleFile, uploadAbsPath);

      const updateData = await create({
        name,
        price,
        description,
        productCategoryId,
        productSubCategoryId: subCatId,
        image: newFileName,
        userId: req.payload.id,
      });

      return res.status(updateData.status).json({ message: updateData.message });
    } catch (error) {
      console.log(error);
      return res.status(400).json({
        message: 'Oops!! Something went wrong please try again.',
      });
    }
  }
);

/* ------------------------ EDIT/UPDATE ------------------------ */
router.post(
  '/edit/:id',
  verifyAccessToken,
  verifyAdmin,
  check('id').custom(async (value) => IDValidation(value, 'ticket id')),
  check('id').custom(async (value) => {
    const ticket = await getAll({ id: value });
    if (ticket.data.length === 0) {
      return Promise.reject('Invalid id');
    }
  }),
  body('name').custom(async (value) => textValidation(value, 'name')),
  body('price').custom(async (value) => textValidation(value, 'price')),
  body('description').custom(async (value) => textValidation(value, 'description')),
  body('productCategoryId').custom(async (value) => IDValidation(value, 'product category Id')),
  body('image').custom(async (value, { req }) => {
    if (req.files && req.files.image) {
      const m = req.files.image.mimetype;
      if (m === 'image/png' || m === 'image/jpg' || m === 'image/jpeg' || m === 'image/webp') {
        return true;
      }
      return Promise.reject('Invalid image type');
    }
    // image is optional on edit
    return true;
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.mapped() });
    }

    try {
      let { name, price, description, productCategoryId, productSubCategoryId } = req.body;
      const subCatId = coerceSubCategoryId(productSubCategoryId);

      // If no new image uploaded, just update textual fields
      if (!req.files || !req.files.image) {
        const updateData = await update(
          { id: req.params.id },
          { name, price, description, productCategoryId, productSubCategoryId: subCatId, userId: req.payload.id }
        );
        return res.status(updateData.status).json({ message: updateData.message });
      }

      // New image flow
      const ticket = await get({ id: req.params.id });

      // Delete old image safely
      if (ticket.data && ticket.data.image) {
        const oldAbsPath = path.join(UPLOAD_DIR, ticket.data.image);
        await safeUnlink(oldAbsPath);
      }

      // Save new image
      const sampleFile = req.files.image;
      const newFileName = `${uuid4()}-${sampleFile.name}`;
      await ensureDir(UPLOAD_DIR);
      const uploadAbsPath = path.join(UPLOAD_DIR, newFileName);
      await moveFile(sampleFile, uploadAbsPath);

      // Update DB
      const updateData = await update(
        { id: req.params.id },
        {
          name,
          price,
          description,
          productCategoryId,
          productSubCategoryId: subCatId,
          image: newFileName,
          userId: req.payload.id,
        }
      );

      return res.status(updateData.status).json({ message: updateData.message });
    } catch (error) {
      console.log(error);
      return res.status(400).json({
        message: 'Oops!! Something went wrong please try again.',
      });
    }
  }
);

/* ------------------------ VIEW (CUSTOM) ------------------------ */
// home page second section view route.
router.get('/view-custom', async function (req, res) {
  const { page, size, search, price, category, subcategory, sort, sortType } = req.query;

  let where = {};
  let includeWhere = {};
  let orWhere = [];

  if (search !== undefined && search !== null && search !== '') {
    orWhere = [
      ...orWhere,
      { name: { [Op.like]: `%${search}%` } },
      { name: { [Op.like]: `${search}%` } },
      { name: { [Op.like]: `%${search}` } },
      { price: { [Op.like]: `%${search}%` } },
      { price: { [Op.like]: `${search}%` } },
      { price: { [Op.like]: `%${search}` } },
      { description: { [Op.like]: `%${search}%` } },
      { description: { [Op.like]: `%${search}` } },
      { description: { [Op.like]: `${search}%` } },
      { '$productCategories.name$': { [Op.like]: `%${search}%` } },
      { '$productCategories.name$': { [Op.like]: `%${search}` } },
      { '$productCategories.name$': { [Op.like]: `${search}%` } },
      { '$productSubCategories.name$': { [Op.like]: `%${search}%` } },
      { '$productSubCategories.name$': { [Op.like]: `%${search}` } },
      { '$productSubCategories.name$': { [Op.like]: `${search}%` } },
    ];
    where = { ...where, [Op.or]: orWhere };
  }

  if (price !== undefined && price !== null && price !== '') {
    const priceList = String(req.query.price).split(';');
    priceList.pop();
    const newPriceList = priceList.map((item) => parseInt(item));
    const list = newPriceList.sort((a, b) => a - b);
    where = { ...where, price: { [Op.between]: list } };
  }

  if (category !== undefined && category !== null && category !== '') {
    const categoryList = String(req.query.category).split(';');
    orWhere = [...orWhere, { '$product.productCategoryId$': { [Op.in]: categoryList } }];
    where = { ...where, [Op.or]: orWhere };
  }

  if (subcategory !== undefined && subcategory !== null && subcategory !== '') {
    const subcategoryList = String(req.query.subcategory).split(';');
    orWhere = [...orWhere, { '$product.productSubCategoryId$': { [Op.in]: subcategoryList } }];
    where = { ...where, [Op.or]: orWhere };
  }

  const ticket = await getAndFindAllCustom(where, includeWhere, sort, sortType, page, size);

  return res.status(ticket.status).json({
    message: ticket.message,
    data: ticket.data,
  });
});

/* ------------------------ VIEW (BASIC) ------------------------ */
router.get('/view', async function (req, res) {
  const { page, size } = req.query;
  const ticket = await getAndFindAll({}, page, size);

  return res.status(ticket.status).json({
    message: ticket.message,
    data: ticket.data,
  });
});

/* ------------------------ VIEW BY ID ------------------------ */
// home page second section view route.
router.get(
  '/view/:id',
  check('id').custom(async (value) => IDValidation(value, 'ticket id')),
  check('id').custom(async (value) => {
    const ticket = await getAll({ id: value });
    if (ticket.data.length === 0) {
      return Promise.reject('Invalid id');
    }
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.mapped() });
    }

    const ticket = await get({ id: req.params.id });

    return res.status(ticket.status).json({
      message: ticket.message,
      data: ticket.data,
    });
  }
);

/* ------------------------ DELETE ------------------------ */
// home page second section view route.
router.delete(
  '/delete/:id',
  verifyAccessToken,
  verifyAdmin,
  check('id').custom(async (value) => IDValidation(value, 'ticket id')),
  check('id').custom(async (value) => {
    const ticket = await getAll({ id: value });
    if (ticket.data.length === 0) {
      return Promise.reject('Invalid id');
    }
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.mapped() });
    }

    const ticket = await get({ id: req.params.id });

    if (ticket.data && ticket.data.image) {
      const absPath = path.join(UPLOAD_DIR, ticket.data.image);
      await safeUnlink(absPath);
    }

    const mainData = await destroy(req.params.id);

    return res.status(mainData.status).json({
      message: mainData.message,
    });
  }
);

/* ------------------------ CREATE VIA EXCEL ------------------------ */
router.post(
  '/create-via-excel/',
  verifyAccessToken,
  body('upload').custom(async (value, { req }) => {
    if (!req.files || Object.keys(req.files).length === 0) {
      return Promise.reject('Please select a file');
    }
    const m = req.files.upload?.mimetype;
    if (
      m === 'text/csv' ||
      m === 'text/comma-separated-values' ||
      m === 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ||
      m === 'application/vnd.ms-excel'
    ) {
      return true;
    }
    return Promise.reject('Invalid file type');
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(200).json({ errors: errors.mapped() });
    }

    if (!req.files || Object.keys(req.files).length === 0) {
      return res.status(200).json({ error: 'No files were uploaded.' });
    }

    try {
      let sampleFile = req.files.upload;
      const newFileName = `${uuid4()}-${sampleFile.name}`;
      await ensureDir(EXCEL_DIR);
      const uploadAbsPath = path.join(EXCEL_DIR, newFileName);

      await moveFile(sampleFile, uploadAbsPath);

      readXlsxFile(uploadAbsPath)
        .then(async (rows) => {
          rows.shift(); // skip header

          const data = rows.map((row) => ({
            name: row[0],
            description: row[1],
            price: row[2],
            productCategoryId: row[3],
            productSubCategoryId: coerceSubCategoryId(row[4]),
            image: row[5],
            userId: 1, // will be overwritten below
          }));

          for (const lead of data) {
            await create({ ...lead, userId: req.payload.id });
          }

          return res.status(200).json({
            message: 'lead stored successfully',
          });
        })
        .catch((err) => {
          console.log(err);
          return res.status(200).json({
            message: 'Oops!! Something went wrong please try again.',
          });
        });
    } catch (error) {
      console.log(error);
      return res.status(200).json({
        message: 'Oops!! Something went wrong please try again.',
      });
    }
  }
);

/* ------------------------ BULK UPLOAD IMAGES ------------------------ */
router.post(
  '/bulk-upload-images',
  verifyAccessToken,
  body('upload').custom(async (value, { req }) => {
    if (!req.files || Object.keys(req.files).length === 0) {
      return Promise.reject('Please select a file');
    }

    const file = req.files.upload;

    const isValid = (m) =>
      m === 'image/png' || m === 'image/jpg' || m === 'image/jpeg' || m === 'image/webp';

    if (Array.isArray(file)) {
      for (let i = 0; i < file.length; i++) {
        const f = file[i];
        if (!f || Object.keys(f).length === 0) {
          return Promise.reject('Please select a file');
        }
        if (!isValid(f.mimetype)) {
          return Promise.reject('Invalid image type');
        }
      }
      return true;
    } else {
      if (!isValid(file.mimetype)) {
        return Promise.reject('Invalid image type');
      }
      return true;
    }
  }),
  async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.mapped() });
    }

    const file = req.files.upload;
    await ensureDir(UPLOAD_DIR);

    try {
      if (Array.isArray(file)) {
        for (let i = 0; i < file.length; i++) {
          const sampleFile = file[i];
          const newFileName = `${sampleFile.name}`; // keeping original filename
          const uploadAbsPath = path.join(UPLOAD_DIR, newFileName);
          await moveFile(sampleFile, uploadAbsPath);
        }
      } else {
        const sampleFile = file;
        const newFileName = `${sampleFile.name}`;
        const uploadAbsPath = path.join(UPLOAD_DIR, newFileName);
        await moveFile(sampleFile, uploadAbsPath);
      }

      return res.status(200).json({
        message: 'Data uploaded successfully',
      });
    } catch (error) {
      console.log(error);
      return res.status(400).json({
        message: 'Oops!! Something went wrong please try again.',
      });
    }
  }
);

module.exports = router;
