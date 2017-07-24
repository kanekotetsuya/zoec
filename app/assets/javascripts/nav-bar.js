$(function(){

//logout
  $(".fa-times")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "ログアウト",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


//user-edit
  $(".fa-address-card-o")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "ユーザー編集",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


//user-cart
  $(".fa-shopping-cart")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "カート",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });



//product-edit
  $(".fa-briefcase")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "商品登録",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


//author-edit
  $(".fa-users")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "権限編集",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


//new-user
  $(".fa-user-plus")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "新規登録",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


//login
  $(".fa-sign-in")
  .mouseover(function() {
    $(this).showBalloon({
      contents : "ログイン",
      position : "bottom",
      css: {
        "color": "#505050",
        "margin": "0 auto",
        "font-size": "16px",
        "padding": "3px"
      }
    })
  })
  .mouseout(function() {
    $(this).hideBalloon();
  });


});
