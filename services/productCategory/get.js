const db = require('../../model/connection');
const productCategories = db.productCategories;
const product = db.product;
const { Sequelize, Op, QueryTypes } = require('sequelize');

const get = async (where) =>{
    try {
        let userData = await productCategories.findOne({
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

const getAll = async (where) =>{
    try {
        let userData = await productCategories.findAll({
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

const getAndFindAllCount = async (where) =>{
    try {
        let userData = await productCategories.findAll({
            attributes: { 
                include: [[Sequelize.fn('COUNT', Sequelize.col('products.id')), 'productCounts']] ,
            },
            where,
            include: [
                {
                  model: product,
                  as: "products", 
                },
            ],
            group: ['products.productCategoryId']
        })
        let response = {
            status: 200,
            message: 'Data recieved successfully',
            data: userData,
            error: false
        }
        return response;
        
    } catch (error) {
        console.log(error);
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
    const { count: totalItems, rows: category } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalItems / limit);

    return { totalItems, category, totalPages, currentPage };
};

const getAndFindAll = async (where, page, size) => {
    const { limit, offset } = getPagination(page, size);
    try {
        let userData = await productCategories.findAndCountAll({
            where,
            order: [
                ['id', 'DESC'],
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

module.exports = {get, getAll, getAndFindAll, getAndFindAllCount}