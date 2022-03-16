module.exports = (sequelize, DataTypes) => {
    const homePageSecondSection = sequelize.define(
      "homePageSecondSection",
      {
        heading: {
          type: DataTypes.TEXT,
          allowNull: false,
        },
        paragraph: {
          type: DataTypes.TEXT,
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
    return homePageSecondSection;
  };