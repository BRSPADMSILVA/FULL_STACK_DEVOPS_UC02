const {DataTypes} = require('sequelize')

const db = require ('./db/coon')

const User = db.define('User', {
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    occupation: {
        type: DataTypes.STRING,

    },
    newsletter: {
        type: DataTypes.BOOLEAN,
    }, 
});

module.exports = user