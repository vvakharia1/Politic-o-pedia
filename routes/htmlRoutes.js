var db = require("../models");
var isAuthenticated = require("../config/middleware/isAuthenticated");
var path = require("path");


module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    res.render("index", {});
  });
  app.get("/candidates", function(req, res) {
    db.Candidate.findAll({}).then(function(result) {
      res.render("allCandidates", {
        Candidates: result
      });
    });
  });

  // Load example page and pass in an example by id

  app.get("/candidates/:id", function(req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(dbCandidates) {
      res.render("candidate", {
        Candidate: dbCandidates
      });
    });
  });

  //for survey
  app.get("/survey", isAuthenticated, function(req, res) {
    res.render("survey", {});
  });
  // Render 404 page for any unmatched routes

  app.get("*", function(req, res) {
    res.render("404");
  });
};
