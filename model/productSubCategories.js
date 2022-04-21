module.exports = (sequelize, DataTypes) => {
    const productSubCategories = sequelize.define(
      "productSubCategories",
      {
        name: {
          type: DataTypes.STRING,
          allowNull: false,
        },
        productCategoryId: {
          type: DataTypes.INTEGER,
          allowNull: false,
        },
        userId: {
          type: DataTypes.INTEGER,
          allowNull: false,
        },
        created_at: {
          type: "TIMESTAMP",
          defaultValue: sequelize.literal("CURRENT_TIMESTAMP"),
          allowNull: false,
        },
        updated_at: {
          type: "TIMESTAMP",
          defaultValue: sequelize.literal("CURRENT_TIMESTAMP"),
          allowNull: false,
        },
      },
      {
        timestamps: false,
      }
    );
    return productSubCategories;
  };