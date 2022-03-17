const db = require('../../model/connection');
const orderRequest = db.orderRequest;
const orderRequestProduct = db.orderRequestProduct;
const product = db.product;

const get = async (where) =>{
    try {
        let userData = await orderRequest.findOne({
            where,
            include: [
                {
                  model: orderRequestProduct,
                  as: "orderRequestProducts",
                  include: [
                        {
                        model: product,
                        as: "product",
                        },
                    ],
                },
            ],
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

const getAll = async (where) =>{
    try {
        let userData = await orderRequest.findAll({
            where,
        })
        let response = {
            status: 200,
            message: 'Data recieved successfully',
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

const getPagination = (page, size) => {
    const limit = size ? +size : 10;
    const offset = page ? page * limit : 0;

    return { limit, offset };
};


const getPagingData = (data, page, limit) => {
    const { count: totalItems, rows: orderRequest } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalItems / limit);

    return { totalItems, orderRequest, totalPages, currentPage };
};

const getAndFindAll = async (where, page, size) => {
    const { limit, offset } = getPagination(page, size);
    try {
        let userData = await orderRequest.findAndCountAll({
            where,
            order: [
                ['id', 'DESC'],
            ],
            include: [
                {
                  model: orderRequestProduct,
                  as: "orderRequestProducts",
                  include: [
                        {
                        model: product,
                        as: "product",
                        },
                    ],
                },
            ],
            limit,
            offset,
        })
        let data = getPagingData(userData, page, limit);
        let response = {
            status: 200,
            message: 'data recieved successfully',
            data: data,
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

module.exports = {get, getAll, getAndFindAll}