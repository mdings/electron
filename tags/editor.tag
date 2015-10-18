<editor>
  <button onclick="{save}">Save as revision</button>
  <textarea id="markdown-editor"></textarea>

  var CodeMirror = require('codemirror');

  this.on('mount', function(){
    // get the text from localstorage   
    this.text = localStorage.getItem(opts.id);

    CodeMirror.fromTextArea(document.getElementById('markdown-editor'), {
      lineNumbers: true,
      value: this.text
    });
  });

  save() {
    //- var DiffMatchPatch = require('diff-match-patch');
    //- var DMP = new DiffMatchPatch();

    //- // calculate the diffs and patches and store the
    //- // patched text as a revision
    //- var diffs = DMP.diff_main(this.text, editor.getValue());
    //- var patches = DMP.patch_make(this.text, diffs);
    //- var text = DMP.patch_toText(patches);
    //- opts.ref.child('revisions').push().set({
    //-   body: text,
    //-   timestamp: new Date().getTime()
    //- });
  }
  
 
</editor>

