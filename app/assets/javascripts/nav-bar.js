$(function(){

  var sessionFunc = function() {
      $("#session-fa-times").click();
  };

  $("#logout-mask").on("click", function() {
      sessionFunc();
  });

});
