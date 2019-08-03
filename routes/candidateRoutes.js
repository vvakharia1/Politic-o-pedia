var db = require("../models");

module.exports = function (app) {
    // Get all Candidatess
    app.get("/api/candidates", function (req, res) {
        db.Candidates.findAll({}).then(function (dbCandidatess) {
            res.json(dbCandidatess);
        });
    });

    // Create a new Candidates
    app.post("/api/Candidatess", function (req, res) {
        db.Candidates.create(req.body).then(function (dbCandidates) {
            res.redirect("/api/candidates")
        });
    });

    // Delete an Candidates by id
    app.get("/api/candidates/:id", function (req, res) {
        db.Candidates.findOne({ where: { id: req.params.id } }).then(function (dbCandidates) {
            res.render("candidate", { candidates: dbCandidates })
        });
    });

    app.delete("/api/candidates/:id", function (req, res) {
        db.Candidates.destroy({ where: { id: req.params.id } }).then(function (dbCandidate) {
            console.log("destroyed: ", dbCandidate)
            db.Candidates.findAll({}).then(function (allCandidates){
                res.render("candidates", { candidates: allCandidates })
            })
        });
    });
};
