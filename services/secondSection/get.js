const db = require('../../model/connection');
const homePageSecondSection = db.homePageSecondSection;

const get = async (where) =>{
    try {
        let userData = await homePageSecondSection.findOne({
            where,
        })

        
        let response = {
            status: 200,
            message: 'data recieved successfully',
            data: userData.dataValues,
            error: false
        }
        return response;
        
    } catch (error) {
        let response = {
            status: 400,
            message: 'Oops! Something went wrong. Please try again',
            data: null,
            error: true
        }
        return response;
    }
}

module.exports = {get}