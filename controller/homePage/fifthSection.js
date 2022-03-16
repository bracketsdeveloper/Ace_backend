const express = require('express');
const router = express.Router();
const { body, validationResult } = require('express-validator');
const { verifyAccessToken } = require('../../helper/jwt');
const verifyAdmin = require('../../middleware/admin');
const { textValidation } = require('../../helper/validation');
const update = require('../../services/fifthSection/update')
const {get} = require('../../services/fifthSection/get')


// home page second section edit route.
router.post('/',
    verifyAccessToken,
    verifyAdmin,
    //custom validation for email
    body('heading').custom(async (value) => textValidation(value, 'heading')),
    body('paragraph').custom(async (value) => textValidation(value, 'paragraph')),

    
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {
            let { heading, paragraph } = req.body;
            let updateData = await update({ id: 1 }, { heading, paragraph, userId: req.payload.id })

            return res.status(updateData.status).json({
                message: updateData.message,
            });
        }

    })


// home page second section view route.
router.get('/',
async function (req, res) {
    let ticket = await get({
        id: 1
    })

    return res.status(ticket.status).json({
        message: ticket.message,
        data: ticket.data
    });

})



    module.exports = router;