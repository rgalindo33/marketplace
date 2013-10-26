
var PopWindow = (function(){
  var widget = {};

  widget.pop = function(content){
    console.log(content);
    displayWindow(content);
  };

  function displayWindow(content){
    console.log("in");
    $(".extended-info").html(content);
    $(".extended-info").show();
  }
  
  return widget;
}());

