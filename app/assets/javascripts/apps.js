
var PopWindow = (function(){
  var widget = {};

  widget.pop = function( content){
    displayWindow(content);
  }

  function displayWindow(content){
    $(".extended-info").html(content);
    $(".extended-info").show();
  }
  
}());

