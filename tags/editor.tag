<editor>
  <button onclick="{save}">Save as draft</button>
  <div id="edition" contenteditable="true" onkeyup="{updateText}" onpaste="{pasteText}">{ text }</span>

  this.on('mount', function(){
    this.text = localStorage.getItem(opts.id);
    this.shadowText = this.text;
    this.update();
  });
  
  updateText(e) {
    this.shadowText = e.target.innerText;
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
    opts.ref.update({
      'content': this.shadowText
    });
  }

  opts.ref.on('child_changed', function(){
    localStorage.setItem( opts.id, this.shadowText );
  }.bind(this));



</editor>

