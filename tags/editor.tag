<editor>
  <div id="markdown-editor"></div>

  this.on('mount', function(){
    var ace = require('brace');
    require('brace/mode/textile');
    require('brace/theme/eclipse');

    this.text = localStorage.getItem(opts.id);
    this.shadowText = this.text;

    var editor = ace.edit('markdown-editor');
    editor.setOptions({
      fontFamily: 'Inconsolata',
      fontSize: '15pt'
    });

    editor.getSession().setMode('ace/mode/textile');
    editor.getSession().setUseWrapMode(true);

    
    editor.setTheme('ace/theme/eclipse');
    editor.setValue(this.text);
  });
  
  updateText(e) {
    //- this.shadowText = e.target.innerHTML;
  }

  
  // make sure pasting happens only as plain text disabling any markup
  pasteText(e) {
    e.preventDefault();
    // get text representation of clipboard
    var text = e.clipboardData.getData("text/plain");
    // insert text manually
    document.execCommand("insertHTML", false, text);
  }

  save() {
    
    //- opts.ref.update({
    //-   'content': this.shadowText
    //- });

  
  }

  //- opts.ref.on('child_changed', function(){
  //-   localStorage.setItem( opts.id, this.shadowText );
  //- }.bind(this));



</editor>

