module.exports = function(sequelize, DataTypes) {
    var Candidate = sequelize.define("Candidate", {
      fullName: {
        type: DataTypes.STRING,
        allowNull: false
      },
      birthDate: {
        type: DataTypes.DATE,
        allowNull: false
      },
      birthLocation: {
        type: DataTypes.STRING,
        allowNull: false
      },
      currentLocation: {
        type: DataTypes.STRING,
        allowNull: false
      },
      politicalParty: {
        type: DataTypes.STRING,
        allowNull: false
      },
      website: {
        type: DataTypes.STRING,
        allowNull: false
      },
      occupation: {
        type: DataTypes.STRING,
        allowNull: false
      } 
    });
    return Candidate;
  };
  