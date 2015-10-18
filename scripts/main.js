'use strict';
var Firebase = require('firebase');

var riot = require('riot')
var docTag = require('../tags/documents.tag');
var editorTag = require('../tags/editor.tag');
var historyTag = require('../tags/history.tag');

var ref = new Firebase('https://editionapp.firebaseio.com/')
var documents = riot.mount(docTag, { ref: ref })[0];

documents.on('loadfile', function(id){
  riot.mount( editorTag, { ref: ref.child(id), id: id });
  riot.mount( historyTag, { ref: ref.child(id)} );
});
