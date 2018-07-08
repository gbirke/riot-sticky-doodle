<sticky style={styles} draggable="true" ondragstart="{ onDragStart }" ondragend="{ onDragEnd }">
  <div class="sticky--header">

  </div>
  <div class="sticky--body">
    {text}
  </div>

  <style>
    :scope {
      position: absolute;
      background: #ffffcc;
      border: solid 1px #cccc99;
      display: block;
    }

    .sticky--header {
      border-bottom: solid 1px #cccc99;
      min-height:10px;
    }

    .sticky--body {
      padding: 10px 20px;
    }
  </style>

  <script>

  this.text = this.opts.text;

  this.styles = {
    top: this.opts.top || 10,
    left: this.opts.left || 10
  }

  this.on( 'mount', () => {
    // TODO add drop event handler to parent to circumvent https://bugzilla.mozilla.org/show_bug.cgi?id=505521
  } );

  this.onDragStart = function (evt) {
    this.styles = Object.assign( {}, this.styles, {
      opacity: 0.1
    } );
  }

  this.onDragEnd = function ( evt ) {
    this.styles = Object.assign( {}, this.styles, {
      opacity: 1,
      top: evt.clientY,
      left: evt.clientX
    } );
  }

  </script>
</sticky>
