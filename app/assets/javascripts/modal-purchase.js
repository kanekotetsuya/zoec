$(function(){
  var url = location.href;

  $("#modal-open").click( function(){
    var current_url = location.href;

    $(this).blur() ;  //ボタンからフォーカスを外す
    if($("#modal-overlay")[0]) return false ;
    $("body").append('<div id="modal-overlay"></div>');
    $("#modal-overlay").fadeIn("slow");

    //コンテンツをセンタリングする
    centeringModalSyncer() ;
    $("#modal-content").fadeIn("slow");
    $("#modal-overlay,#modal-close").unbind().click(function(){
      $("#modal-content,#modal-overlay").fadeOut("slow", function(){
        $('#modal-overlay').remove();
        if(url = current_url) location.reload();
      });
    });

  });

  $(window).resize(centeringModalSyncer);

  function centeringModalSyncer() {
    var w = $(window).width();
    var h = $(window).height();
    var cw = $("#modal-content").outerWidth();
    var ch = $("#modal-content").outerHeight();

    $("#modal-content").css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"});
  }

});
