'use strict';
var Firebase = require('firebase');

var riot = require('riot')
var docTag = require('../tags/documents.tag');
var editorTag = require('../tags/editor.tag');

var ref = new Firebase('https://editionapp.firebaseio.com/')
var documents = riot.mount(docTag, { ref: ref })[0];

documents.on('loadfile', function(id){
  riot.mount( editorTag, { ref: ref + id, id: id });
});
