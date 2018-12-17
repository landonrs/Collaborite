var pgp = require('pg-promise')(/*options*/)
var db = pgp('postgres://postgres:root@localhost:5432/collaborite')

// add query functions
function getUserInfo(req, res) {
    var username = req.params.username;
    console.log(username);
    db.one('SELECT * from users where username = $1', username)
  .then(function (data) {
    console.log('DATA:', data.username + " " + data.password);
    res.render('projects', { type: data.username });
  })
  .catch(function (error) {
    console.log('ERROR:', error)
  });
};

module.exports = {
  getUserInfo: getUserInfo
};

