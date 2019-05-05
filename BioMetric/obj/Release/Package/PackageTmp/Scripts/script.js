$(function(){
    var showPic = $('.showPic'), inputFile = $('#file'), img, btn, txt = 'Browse', txtAfter = 'Browse another pic';
        
    if(!showPic.find('#upload').length){
      showPic.find('.input').append('<input type="button" value="'+txt+'" id="upload">');
      btn = $('#upload');
      showPic.prepend('<img src="" class="hidden" alt="Uploaded file" id="uploadImg" width="100">');
      img = $('#uploadImg');
    }
        
    btn.on('click', function(){
      img.animate({opacity: 0}, 300);
      inputFile.click();
    });
  
    inputFile.on('change', function(e){
      showPic.find('label').html( inputFile.val() );
      
      var i = 0;
      for(i; i < e.originalEvent.srcElement.files.length; i++) {
        var file = e.originalEvent.srcElement.files[i], 
          reader = new FileReader();
  
        reader.onloadend = function(){
          img.attr('src', reader.result).animate({opacity: 1}, 700);
        }
        reader.readAsDataURL(file);
        img.removeClass('hidden');
      }
      
      btn.val( txtAfter );
    });
  });