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
    { path: '/auth', controller: authController },
    { path: '/home-page-second-section', controller: homePageSecondSectionController },
    { path: '/home-page-second-section-banner', controller: homePageSecondSectionBannerController },
    { path: '/home-page-third-section', controller: homePageThirdSectionController },
    { path: '/home-page-third-section-content', controller: homePageThirdSectionContentController },
    { path: '/home-page-fifth-section', controller: homePageFifthSectionController },
    { path: '/home-page-fifth-section-content', controller: homePageFifthSectionContentController },
    { path: '/testimonial', controller: testimonialController },
    { path: '/enquiry', controller: enquiryController },
    { path: '/product-category', controller: productCategoryController },
    { path: '/product', controller: productController },
    { path: '/order-request', controller: orderRequestController },
];

module.exports = routes;