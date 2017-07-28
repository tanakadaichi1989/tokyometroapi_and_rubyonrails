// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$(function(){
  //注意事項ボタン
  $('#notice-btn').click(function(){
    if($('#notice').hasClass('opened'))
    {$('#notice').removeClass('opened').fadeOut(500),$('#notice-btn').text("注意事項を開く")}
   else
    {$('#notice').addClass('opened').fadeIn(500),$('#notice-btn').text("注意事項を閉じる")}
  });

  //銀座線ボタン
    $('#open-btn-ginza').click(function(){
    if($('#ginza-footer').hasClass('opened'))
    {$('#ginza-footer').removeClass('opened').fadeOut(500),$('#open-btn-ginza').text("+")}
   else
    {$('#ginza-footer').addClass('opened').fadeIn(500),$('#open-btn-ginza').text("-")}
  });


      //丸ノ内線ボタン
    $('#open-btn-marunouchi').click(function(){
    if($('#marunouchi-footer').hasClass('opened'))
    {$('#marunouchi-footer').removeClass('opened').fadeOut(500),$('#open-btn-marunouchi').text("+")}
   else
    {$('#marunouchi-footer').addClass('opened').fadeIn(500),$('#open-btn-marunouchi').text("-")}
});


        //日比谷線ボタン
    $('#open-btn-hibiya').click(function(){
    if($('#hibiya-footer').hasClass('opened'))
    {$('#hibiya-footer').removeClass('opened').fadeOut(500),$('#open-btn-hibiya').text("+")}
   else
    {$('#hibiya-footer').addClass('opened').fadeIn(500),$('#open-btn-hibiya').text("-")}
});

            //東西線ボタン
    $('#open-btn-tozai').click(function(){
    if($('#tozai-footer').hasClass('opened'))
    {$('#tozai-footer').removeClass('opened').fadeOut(500),$('#open-btn-tozai').text("+")}
   else
    {$('#tozai-footer').addClass('opened').fadeIn(500),$('#open-btn-tozai').text("-")}
});


            //千代田線ボタン
    $('#open-btn-chiyoda').click(function(){
    if($('#chiyoda-footer').hasClass('opened'))
    {$('#chiyoda-footer').removeClass('opened').fadeOut(500),$('#open-btn-chiyoda').text("+")}
   else
    {$('#chiyoda-footer').addClass('opened').fadeIn(500),$('#open-btn-chiyoda').text("-")}
});


            //有楽町線ボタン
    $('#open-btn-yurakucho').click(function(){
    if($('#yurakucho-footer').hasClass('opened'))
    {$('#yurakucho-footer').removeClass('opened').fadeOut(500),$('#open-btn-yurakucho').text("+")}
   else
    {$('#yurakucho-footer').addClass('opened').fadeIn(500),$('#open-btn-yurakucho').text("-")}
});

            //半蔵門線ボタン
    $('#open-btn-hanzomon').click(function(){
    if($('#hanzomon-footer').hasClass('opened'))
    {$('#hanzomon-footer').removeClass('opened').fadeOut(500),$('#open-btn-hanzomon').text("+")}
   else
    {$('#hanzomon-footer').addClass('opened').fadeIn(500),$('#open-btn-hanzomon').text("-")}
});


            //南北線ボタン
    $('#open-btn-namboku').click(function(){
    if($('#namboku-footer').hasClass('opened'))
    {$('#namboku-footer').removeClass('opened').fadeOut(500),$('#open-btn-namboku').text("+")}
   else
    {$('#namboku-footer').addClass('opened').fadeIn(500),$('#open-btn-namboku').text("-")}
});

                //副都心線ボタン
    $('#open-btn-fukutoshin').click(function(){
    if($('#fukutoshin-footer').hasClass('opened'))
    {$('#fukutoshin-footer').removeClass('opened').fadeOut(500),$('#open-btn-fukutoshin').text("+")}
   else
    {$('#fukutoshin-footer').addClass('opened').fadeIn(500),$('#open-btn-fukutoshin').text("-")}
});



});