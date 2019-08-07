var db = require("../models");

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

  app.get("/register", function (req, res) {
    res.render("register", {});
  });

  /*   app.get("/comments", function(req,res) {
    db.Comment.findAll({}).then(function(result)) {
      res.render("")
    }
  }) */

  // Load example page and pass in an example by id
  /* 
  app.get("/candidates/:fullName", function(req, res) {
    db.Candidate.findOne({ where: { fullName: req.params.fullName } }).then(
      function(dbCandidates) {
        res.render("candidate", {
          Candidate: dbCandidates,
        });
      }
    );
  }); */
  app.get("/candidates/:fullName", function(req, res) {
    db.Candidate.findOne({ where: { fullName: req.params.fullName } }).then(
      function(dbCandidates) {
        db.Comment.findAll({}).then(function(dbComments) {
          res.render("candidate", {
            Candidate: dbCandidates,
            Comments: dbComments
          });
        });
      }
    );
  });
  //for survey
  app.get("/survey", function(req, res) {
    res.render("survey", {});
  });
  // Render 404 page for any unmatched routes

  app.get("*", function(req, res) {
    res.render("404");
  });
};
