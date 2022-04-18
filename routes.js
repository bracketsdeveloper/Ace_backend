const authController = require('./controller/auth');
const homePageSecondSectionController = require('./controller/homePage/secondSection');
const homePageSecondSectionBannerController = require('./controller/homePage/secondSectionBanner');
const homePageThirdSectionController = require('./controller/homePage/thirdSection');
const homePageThirdSectionContentController = require('./controller/homePage/thirdSectionContent');
const homePageFifthSectionController = require('./controller/homePage/fifthSection');
const homePageFifthSectionContentController = require('./controller/homePage/fifthSectionContent');
const testimonialController = require('./controller/testimonial');
const enquiryController = require('./controller/enquiry');
const productCategoryController = require('./controller/productCategory');
const productController = require('./controller/product');
const orderRequestController = require('./controller/orderRequest');


const routes = [
    { path: '/api/auth', controller: authController },
    { path: '/api/home-page-second-section', controller: homePageSecondSectionController },
    { path: '/api/home-page-second-section-banner', controller: homePageSecondSectionBannerController },
    { path: '/api/home-page-third-section', controller: homePageThirdSectionController },
    { path: '/api/home-page-third-section-content', controller: homePageThirdSectionContentController },
    { path: '/api/home-page-fifth-section', controller: homePageFifthSectionController },
    { path: '/api/home-page-fifth-section-content', controller: homePageFifthSectionContentController },
    { path: '/api/testimonial', controller: testimonialController },
    { path: '/api/enquiry', controller: enquiryController },
    { path: '/api/product-category', controller: productCategoryController },
    { path: '/api/product', controller: productController },
    { path: '/api/order-request', controller: orderRequestController },
];

module.exports = routes;