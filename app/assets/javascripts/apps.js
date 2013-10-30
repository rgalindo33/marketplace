$(document).ready(function(){
  
  $(document).on('ajax:beforeSend', ".button.install, .button.uninstall", function(e,xhr,settings){
    $(this).bind('click',false)
            .html("loading")
            .addClass("loading");
  });


});