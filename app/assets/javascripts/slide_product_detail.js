$(function(){

//Product-Detail
  $('#detail-slider').slick({
    infinite: true,
    autoplay: true,      // 自動で切り替える
    autoplaySpeed: 100, // 待機する時間
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '#detail-slider-nav' //サムネイルのクラス名
  });
  $('#detail-slider-nav').slick({
    infinite: true,
    arrows: false,       // 次へ・戻るボタンを非表示
    slidesToShow: 4,
    slidesToScroll: 1,
    asNavFor: '#detail-slider', //スライダー本体のクラス名
    focusOnSelect: true,
  });

});
