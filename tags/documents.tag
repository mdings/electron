<documents>
  <h1>Hello World!</h1>
  <button onclick="{add}">Toevoegen</button>
  <div each={ documents } onclick="{parent.loadfile}" id="{ key }">{ value.title }</div>
  
  this.documents = [];

  add() {
    opts.ref.push().set({
      title: 'Hello World',
      author: 'Firebase',
      body: 'This is some dummy content'
    })
  }

  loadfile(e) {
    this.trigger('loadfile', e.item.key);
  }

  opts.ref.on('child_added', function( snapshot ){
    var doc = {
      key: snapshot.key(),
      value: snapshot.val()
    };
    this.documents.push( doc );
    // keep the content of the document in localStorage as well
    localStorage.setItem(doc.key, doc.value['body']);
    this.update();
  }.bind(this));

  opts.ref.on('child_removed', function( snapshot ) {
    localStorage.removeItems(snapshot.key());
  });

</documents>