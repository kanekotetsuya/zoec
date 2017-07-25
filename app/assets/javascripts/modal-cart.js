$(function(){

  $("#modal-add-cart").click( function(){
    $(this).blur() ;  //ボタンからフォーカスを外す
    if($("#modal-overlay")[0]) return false ;
    $("body").append('<div id="modal-overlay"></div>');
    $("#modal-overlay").fadeIn("slow");

    //コンテンツをセンタリングする
    centeringModalSyncer() ;
    $("#modal-cart-content").fadeIn("slow");
    $("#modal-overlay,#modal-add-cart").unbind().click(function(){
      $("#modal-content,#modal-overlay").fadeOut("slow", function(){
        $('#modal-overlay').remove();
      });
    });

  });

  $(window).resize(centeringModalSyncer);

  function centeringModalSyncer() {
    var w = $(window).width();
    var h = $(window).height();
    var cw = $("#modal-cart-content").outerWidth();
    var ch = $("#modal-cart-content").outerHeight();

    $("#modal-cart-content").css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"});
  }

});
