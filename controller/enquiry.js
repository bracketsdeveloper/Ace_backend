const express = require('express');
const router = express.Router();
const { body, check, validationResult } = require('express-validator');
const { verifyAccessToken } = require('../helper/jwt');
const verifyAdmin = require('../middleware/admin');
const create = require('../services/enquiry/create')
const update = require('../services/enquiry/update')
const destroy = require('../services/enquiry/delete')
const {get, getAll} = require('../services/enquiry/get')
const { textValidation, nameValidation, phoneValidation, emailValidation, IDValidation } = require('../helper/validation');


// home page second section edit route.
router.post('/create',
    //custom validation for email
    body('name').custom(async (value) => nameValidation(value)),
    body('phone').custom(async (value) => phoneValidation(value)),
    body('email').custom(async (value) => emailValidation(value)),
    body('subject').custom(async (value) => textValidation(value, 'subject')),
    body('message').custom(async (value) => textValidation(value, 'message')),

    
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {

            try {
                let { name, phone, email, subject, message } = req.body;
                let updateData = await create({ name, phone, email, subject, message })

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
body('name').custom(async (value) => nameValidation(value)),
body('phone').custom(async (value) => phoneValidation(value)),
body('email').custom(async (value) => emailValidation(value)),
body('subject').custom(async (value) => textValidation(value, 'subject')),
body('message').custom(async (value) => textValidation(value, 'message')),


async function (req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.mapped(),
        });
    } else {

        try {
            let { name, phone, email, subject, message } = req.body;
            let updateData = await update({id:req.params.id},{ name, phone, email, subject, message })

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
router.get('/view',
verifyAccessToken,
verifyAdmin,
async function (req, res) {
    let ticket = await getAll({})

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})

// home page second section view route.
router.get('/view/:id',
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