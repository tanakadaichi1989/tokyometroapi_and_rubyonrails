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
//= require bootstrap
//= require turbolinks
//= require_tree .

$(function(){
  //路線名選択
  $('select[name="line_list"]').change(function(){
  //選択した路線のクラス名を取得
  var line_class = $('select[name="line_list"] option:selected').attr("class");
  console.log(line_class);

  var count = $('select[name="station_list"]').children().length;
  console.log(count);

  for(a=0; a<count; a++){
        var station_list = $('select[name="station_list"] option:eq('+a+')');
        if(station_list.attr("class") === line_class){
          station_list.show();
        } else {
          station_list.hide();
      }
      }

      for(b=0; b<count; b++){
        var direction_list = $('select[name="direction_list"] option:eq('+b+')');
        if(direction_list.attr("class") === line_class){
          direction_list.show();
        } else {
          direction_list.hide();
      }
      }

  });


});