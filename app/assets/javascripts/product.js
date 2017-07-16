$(function(){

  function handleFileSelect(evt) {
    var files = evt.target.files; // FileList object

    for (var i = 0, f; f = files[i]; i++) {
      if (!f.type.match('image.*')) {
        continue;
      }

      var reader = new FileReader();

      reader.onload = (function(theFile) {
        return function(e) {
          $('#current-image').remove();
          var span = ['<img id="current-image" width="250" height="230" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
          $('#js-show-image-field').append(span);
        };
      })(f);

      reader.readAsDataURL(f);
    }
  }

  document.getElementById('file').addEventListener('change', handleFileSelect, false);


});


