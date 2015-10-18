<history>
  <div each={ documents }>dancing</div>

  this.documents = [];

  opts.ref.child('revisions').on('child_added', function( snapshot ){
    this.documents.push(snapshot.val());
    this.update();
  }.bind(this));

</history>