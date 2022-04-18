const express = require('express');
const router = express.Router();
const { body, validationResult } = require('express-validator');
const { verifyAccessToken } = require('../../helper/jwt');
const verifyAdmin = require('../../middleware/admin');
const update = require('../../services/secondSectionBanner/update')
const {get} = require('../../services/secondSectionBanner/get')
const uuid4 = require('uuid4');
const fs = require('fs');
const path = require('path');


// home page second section edit route.
router.post('/',
    verifyAccessToken,
    verifyAdmin,
    //custom validation for email
    body('image').custom(async (value, { req }) => {
        if(!req.files){
            return Promise.reject('Please select a file');
        }
        if (req.files.image.mimetype == 'image/png' || req.files.image.mimetype == 'image/jpg' || req.files.image.mimetype == 'image/jpeg') {
            return true
        }
        return Promise.reject('Invalid image type');
    }),

    
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {

            try {

                let ticket = await get({
                    id: 1
                })

                if(ticket.data!=null){
                    const dirPath = path.join(__dirname, '../../public/api/uploads/');
                    fs.unlink(`${dirPath}${ticket.data.image}`, async (err) => {
                        if (err) { console.log(err); }
                    });
                }

                let sampleFile = req.files.image;
                let newFileName = `${uuid4()}-${sampleFile.name}`;
                let uploadPath = 'public/api/uploads/' + newFileName;

                sampleFile.mv(uploadPath, async function (err) {
                    if (err){}

                    let updateData = await update({ id: 1 }, { image:newFileName, userId: req.payload.id })

                    return res.status(updateData.status).json({
                        message: updateData.message,
                    });
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