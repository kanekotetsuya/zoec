$(function(){

  $('#slider').slick({
    infinite: true,
    autoplay: true,      // 自動で切り替える
    autoplaySpeed: 2000, // 待機する時間
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '#slider-nav' //サムネイルのクラス名
  });
  $('#slider-nav').slick({
    infinite: true,
    arrows: false,       // 次へ・戻るボタンを非表示
    slidesToShow: 4,
    slidesToScroll: 1,
    asNavFor: '#slider', //スライダー本体のクラス名
    focusOnSelect: true,
  });

});

