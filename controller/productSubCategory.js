const express = require('express');
const router = express.Router();
const { body, check, validationResult } = require('express-validator');
const { verifyAccessToken } = require('../helper/jwt');
const verifyAdmin = require('../middleware/admin');
const create = require('../services/productSubCategory/create')
const update = require('../services/productSubCategory/update')
const destroy = require('../services/productSubCategory/delete')
const {get, getAll, getAndFindAll, getAndFindAllCount} = require('../services/productSubCategory/get')
const {getAll:getAllCategory} = require('../services/productCategory/get')
const { textValidation, IDValidation } = require('../helper/validation');


// home page second section edit route.
router.post('/create',
verifyAccessToken,
verifyAdmin,
    //custom validation for email
    body('name').custom(async (value) => textValidation(value ,'name')),
    body('productCategoryId').custom(async (value) => IDValidation((value).toString(), 'ticket id')),
    body('productCategoryId').custom(async (value, { req }) => {
        let ticket = await getAllCategory({
            id: value,
        })
        if (ticket.data.length == 0) {
            return Promise.reject('Invalid id');
        }
    }),
    
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {

            try {
                let { name, productCategoryId } = req.body;
                let updateData = await create({ name, productCategoryId, userId: req.payload.id })

                return res.status(updateData.status).json({
                    message: updateData.message,
                });
                
                
            } catch (error) {
                console.log(error);
                return res.status(400).json({
                    message: 'Oops!! Something went wrong please try again.',
                });
            }
            
        }

    })


    // home page second section edit route.
router.post('/edit/:id',
verifyAccessToken,
verifyAdmin,
check('id').custom(async (value) => IDValidation(value, 'ticket id')),
check('id').custom(async (value, { req }) => {
    let ticket = await getAll({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),
body('name').custom(async (value) => textValidation(value ,'name')),
body('productCategoryId').custom(async (value) => IDValidation((value).toString(), 'ticket id')),
body('productCategoryId').custom(async (value, { req }) => {
    let ticket = await getAllCategory({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),


async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    } else {

        try {
            let { name, productCategoryId } = req.body;
            let updateData = await update({id:req.params.id},{ name, productCategoryId, userId: req.payload.id })

            return res.status(updateData.status).json({
                message: updateData.message,
            });
            
            
        } catch (error) {
            console.log(error);
            return res.status(400).json({
                message: 'Oops!! Something went wrong please try again.',
            });
        }
        
    }

})


// home page second section view route.
router.get('/:productCategoryId/view',
check('productCategoryId').custom(async (value) => IDValidation((value).toString(), 'ticket id')),
check('productCategoryId').custom(async (value, { req }) => {
    let ticket = await getAllCategory({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),
async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    }
    const { page, size } = req.query;
    let ticket = await getAndFindAll({productCategoryId:req.params.productCategoryId}, page, size)

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})

router.get('/view-inner-count',

async function (req, res) {
    const { page, size } = req.query;
    let ticket = await getAndFindAllCount({})

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})

router.get('/:productCategoryId/view-sub-categories',
check('productCategoryId').custom(async (value) => IDValidation((value).toString(), 'ticket id')),
check('productCategoryId').custom(async (value, { req }) => {
    let ticket = await getAllCategory({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),

async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    }
    let ticket = await getAll({productCategoryId:req.params.productCategoryId})

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})

// home page second section view route.
router.get('/view/:id',

check('id').custom(async (value) => IDValidation(value, 'ticket id')),
check('id').custom(async (value, { req }) => {
    let ticket = await getAll({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),
async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    }

    let ticket = await get({
        id:req.params.id
    })

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})

// home page second section view route.
router.delete('/delete/:id',
verifyAccessToken,
verifyAdmin,
check('id').custom(async (value) => IDValidation(value, 'ticket id')),
check('id').custom(async (value, { req }) => {
    let ticket = await getAll({
        id: value,
    })
    if (ticket.data.length == 0) {
        return Promise.reject('Invalid id');
    }
}),
async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    }

    let mainData = await destroy(req.params.id)

    return res.status(mainData.status).json({
        message: mainData.message,
    });

})



    module.exports = router;