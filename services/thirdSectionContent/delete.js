const db = require('../../model/connection');
const homePageThirdSectionContent = db.homePageThirdSectionContent;

const destroy = async(id) => {
    try {
        let userData = await homePageThirdSectionContent.destroy({
            where: {
                id
            }
        })
        let response = {
            status: 200,
            message: 'data deleted successfully',
            data: null,
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

module.exports = destroy;