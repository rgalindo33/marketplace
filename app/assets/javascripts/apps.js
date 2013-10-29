$(document).ready(function(){
  
  $(document).on('ajax:beforeSend', ".button.install, .button.uninstall", function(e,xhr,settings){
    $(this).html("loading").addClass("loading");
  });

});