var Github = require('github-api'),
    Handlebars = require('handlebars'),
    when = require('when'),
    template = require('../templates/entry.hbs'),
    fm = require('front-matter'),
    postPath,
    postName;

var github = new Github({
  username: "mdings",
  password: "kxdfkJmH29",
  auth: "basic"
});

var repo = github.getRepo('mdings', 'helloworld');

// get the files from the src/documents folder
repo.contents('master', 'src/documents', function(err, response) {
  console.log(response);
});

// read a file
repo.read('master', 'src/documents/posts/hello-world.md', function(err, response) {
  var content = fm(response);
  console.log(content.body);
});