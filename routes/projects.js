var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    console.log(req.query.type);
    res.render('projects', { type: req.query.type });
});


module.exports = router;
