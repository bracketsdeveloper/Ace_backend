const db = require('../../model/connection');
const productSubCategories = db.productSubCategories;

const create = async(data) => {
    try {
        let userData = await productSubCategories.create(data)
        let response = {
            status: 201,
            message: 'Data Created successfully',
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

module.exports = create