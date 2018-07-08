<sticky-board>
  <sticky each={stickies} text={text}></sticky>

  <style>
  :scope {
    width:100%;
    height:100%;
    position:relative;
    background:#ccfcff;
    display: block;
  }
  </style>

  <script>
    import './sticky.tag'

    this.stickies = [ { text:'Test Sticky' } ]

  </script>
</sticky-board>
