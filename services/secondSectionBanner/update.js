const db = require('../../model/connection');
const homePageSecondSectionBanner = db.homePageSecondSectionBanner;

const update = async(where, data) => {
    try {
        let userData = await homePageSecondSectionBanner.update(data, {
            where
        })
        let response = {
            status: 200,
            message: 'Data updated successfully',
            data: userData,
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

module.exports = update;