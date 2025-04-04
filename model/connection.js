const { Sequelize, DataTypes } = require("sequelize");

// Create a Sequelize instance with explicit mysql2 dialect module
const sequelize = new Sequelize('ace_gifting', 'ace', 'giftingsolutions@123', {
    host: 'localhost',
    dialect: 'mysql',
    dialectModule: require('mysql2'), // Ensures Sequelize uses mysql2
    logging: false, // SQL query logging in console
    pool: { max: 5, min: 0, idle: 10000 }
});

sequelize.authenticate()
    .then(() => {
        console.log("database connected");
    })
    .catch((err) => {
        console.log('error: ', err);
    });

const db = {};
db.sequelize = sequelize;

// Sync the database
db.sequelize.sync({ force: false })
    .then(() => {
        console.log("synced");
    })
    .catch((err) => {
        console.log('error: ', err);
    });

// Load models
const User = require('./users')(sequelize, DataTypes);
db.users = User;

const homePageSecondSection = require('./homePageSecondSection')(sequelize, DataTypes);
db.homePageSecondSection = homePageSecondSection;

const homePageSecondSectionBanner = require('./homePageSecondSectionBanner')(sequelize, DataTypes);
db.homePageSecondSectionBanner = homePageSecondSectionBanner;

const homePageThirdSection = require('./homePageThirdSection')(sequelize, DataTypes);
db.homePageThirdSection = homePageThirdSection;

const homePageThirdSectionContent = require('./homePageThirdSectionContent')(sequelize, DataTypes);
db.homePageThirdSectionContent = homePageThirdSectionContent;

const homePageFifthSection = require('./homePageFifthSection')(sequelize, DataTypes);
db.homePageFifthSection = homePageFifthSection;

const homePageFifthSectionContent = require('./homePageFifthSectionContent')(sequelize, DataTypes);
db.homePageFifthSectionContent = homePageFifthSectionContent;

const testimonial = require('./testimonial')(sequelize, DataTypes);
db.testimonial = testimonial;

const enquiry = require('./enquiry')(sequelize, DataTypes);
db.enquiry = enquiry;

const productCategories = require('./productCategories')(sequelize, DataTypes);
db.productCategories = productCategories;

const productSubCategories = require('./productSubCategories')(sequelize, DataTypes);
db.productSubCategories = productSubCategories;

const product = require('./product')(sequelize, DataTypes);
db.product = product;

const orderRequest = require('./orderRequest')(sequelize, DataTypes);
db.orderRequest = orderRequest;

const orderRequestProduct = require('./orderRequestProduct')(sequelize, DataTypes);
db.orderRequestProduct = orderRequestProduct;

// Define associations

// User -> HomePageSecondSection
User.hasMany(homePageSecondSection, { as: "homePageSecondSection" });
homePageSecondSection.belongsTo(User, { foreignKey: "userId" });

// User -> HomePageSecondSectionBanner
User.hasMany(homePageSecondSectionBanner, { as: "homePageSecondSectionBanner" });
homePageSecondSectionBanner.belongsTo(User, { foreignKey: "userId" });

// User -> HomePageThirdSection
User.hasMany(homePageThirdSection, { as: "homePageThirdSection" });
homePageThirdSection.belongsTo(User, { foreignKey: "userId" });

// User -> HomePageThirdSectionContent
User.hasMany(homePageThirdSectionContent, { as: "homePageThirdSectionContent" });
homePageThirdSectionContent.belongsTo(User, { foreignKey: "userId" });

// User -> HomePageFifthSection
User.hasMany(homePageFifthSection, { as: "homePageFifthSection" });
homePageFifthSection.belongsTo(User, { foreignKey: "userId" });

// User -> HomePageFifthSectionContent
User.hasMany(homePageFifthSectionContent, { as: "homePageFifthSectionContent" });
homePageFifthSectionContent.belongsTo(User, { foreignKey: "userId" });

// User -> Testimonial
User.hasMany(testimonial, { as: "testimonial" });
testimonial.belongsTo(User, { foreignKey: "userId" });

// User -> ProductCategories
User.hasMany(productCategories, { as: "productCategories" });
productCategories.belongsTo(User, { foreignKey: "userId" });

// User -> ProductSubCategories
User.hasMany(productSubCategories, { as: "productSubCategories" });
productSubCategories.belongsTo(User, { foreignKey: "userId" });

// User -> Product
User.hasMany(product, { as: "product" });
product.belongsTo(User, { foreignKey: "userId" });

// ProductCategories -> Product
productCategories.hasMany(product, { as: "products" });
product.belongsTo(productCategories, { foreignKey: "productCategoryId", as: "productCategories" });

// ProductSubCategories -> Product
productSubCategories.hasMany(product, { as: "subProducts" });
product.belongsTo(productSubCategories, { foreignKey: "productSubCategoryId", as: "productSubCategories" });

// ProductCategories -> ProductSubCategories
productCategories.hasMany(productSubCategories, { as: "productSubCategories" });
productSubCategories.belongsTo(productCategories, { foreignKey: "productCategoryId", as: "productCategories" });

// OrderRequest -> OrderRequestProduct
orderRequest.hasMany(orderRequestProduct, { as: "orderRequestProducts" });
orderRequestProduct.belongsTo(orderRequest, { foreignKey: "orderRequestId" });

// Product -> OrderRequestProduct
product.hasOne(orderRequestProduct, { as: "product" });
orderRequestProduct.belongsTo(product, { foreignKey: "productId" });

module.exports = db;
