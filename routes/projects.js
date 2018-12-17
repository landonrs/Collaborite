var express = require('express');
var router = express.Router();
var db = require('../db/collabDB');

/* GET users listing. */
router.get('/', function(req, res, next) {
    console.log(req.query.type);
    res.render('projects', { type: req.query.type });
});

router.get('/:username', db.getUserInfo);


module.exports = router;
