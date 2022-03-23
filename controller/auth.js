const express = require('express');
const router = express.Router();
const { body, validationResult } = require('express-validator');
const { nameValidation, phoneValidation, emailValidation, passwordValidation, cpasswordValidation, otpValidation } = require('../helper/validation');
const create = require('../services/users/create')
const destroy = require('../services/users/delete')
const update = require('../services/users/update')
const { getAll, get, getWithPassword } = require('../services/users/get')
const bcrypt = require('bcryptjs')
const { signAccessToken, signRefreshToken, verifyRefreshToken } = require('../helper/jwt');
const { verifyAccessToken } = require('../helper/jwt');



// login page route.
router.post('/login',
    //custom validation for email
    body('email').custom(async (value) => emailValidation(value)),

    body('email').custom(async (value) => {
        let user = await getAll({
            email: value,
            verified: 1,
        });
        if (user.data.length < 1) {
            return Promise.reject('E-mail does not exist');
        }
    }),
    //custom validation for password
    body('password').custom(async (value) => passwordValidation(value)),
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {
            let { email, password } = req.body;
            let userDet = await get({
                email: email,
                verified: 1,
            })

            let user = await getWithPassword({
                email: email,
                verified: 1,
            })

            if (bcrypt.compareSync(password, user.data.password)) {
                let accessToken = await signAccessToken(user.data.id)
                let refreshToken = await signRefreshToken(user.data.id)
                res.cookie('refreshToken',refreshToken, { maxAge: 24 * 60 * 60 * 1000, httpOnly: true, sameSite:'None', secure: true});
                // res.cookie('refreshToken', refreshToken, { maxAge: 24 * 60 * 60 * 1000, httpOnly: true });
                return res.status(200).json({
                    message: 'Logged In Successfully',
                    user: userDet.data,
                    accessToken,
                    refreshToken
                });
            } else {
                return res.status(400).json({
                    message: 'Invalid Password',
                });
            }
        }

    })


// refresh token route.
router.get('/refresh-token',
    async function (req, res) {
        try {
            const cookies = req.cookies;
            if (!cookies?.refreshToken) {

                return res.status(401).json({
                    message: 'Unauthorised',
                });
            }
            const rToken = cookies.refreshToken;
            let id = await verifyRefreshToken(rToken)
            let accessToken = await signAccessToken(id)
            let user = await get({
                id,
                verified: 1,
            })
            // let refreshToken = await signRefreshToken(id)
            // res.cookie('refreshToken', refreshToken, { maxAge: 24 * 60 * 60 * 1000, httpOnly: true });
            return res.status(200).json({
                user: user.data,
                accessToken
            });
        } catch (error) {
            console.log(error)
            return res.status(401).json({
                message: 'Unauthorised',
            });
        }

    })


// logout token route.
router.get('/logout',
    async function (req, res) {
        try {
            const cookies = req.cookies;
            if (!cookies?.refreshToken) {

                return res.status(401).json({
                    message: 'Unauthorised',
                });
            }
            const rToken = cookies.refreshToken;
            let id = await verifyRefreshToken(rToken)
            res.clearCookie('refreshToken', { httpOnly: true, sameSite:'None', secure: true });
            // res.clearCookie('refreshToken', { httpOnly: true });
            return res.status(200).json({
                message: 'Logged out successfully',
            });
        } catch (error) {
            console.log(error)
            return res.status(401).json({
                message: 'Unauthorised',
            });
        }

    })

// user detail route.
router.get('/view-profile',
    verifyAccessToken,
    async function (req, res) {
        let userDet = await get({ id: req.payload.id })
        return res.status(userDet.status).json({
            message: userDet.message,
            user: userDet.data,
        });

    })

    // change password route.
    router.post('/change-password',
    verifyAccessToken,
    //custom validation for password
    body('oldPassword').custom(async (value) => passwordValidation(value)),
    body('oldPassword').custom(async (value, { req }) => {
        let user = await getWithPassword({
            id: req.payload.id,
            verified: 1,
        })
        if (!bcrypt.compareSync(value, user.data.password)) {
            return Promise.reject('Invalid Old Password');
        }
    }),
    body('password').custom(async (value) => passwordValidation(value)),
        // password must be at least 5 chars long
    body('cpassword').custom((value, { req }) => cpasswordValidation(value, { req })),
    async function (req, res) {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.mapped(),
            });
        } else {
            let { password } = req.body;
            let userDet = await update({id: req.payload.id},{ password: bcrypt.hashSync(password, 10) })
            return res.status(userDet.status).json({
                message: userDet.message,
            });
        }
    
    })



module.exports = router;