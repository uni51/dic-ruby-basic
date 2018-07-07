$(function() {

　// デートピッカーの処理    
  $("#datepicker").datepicker();
  
  // タブの処理
  $('.top_menu li').hover(function() {
        // すべてのタブからselectクラスを取り除く
        $('.top_menu li').removeClass('select');
        // クリックされたタブにクラスselectをつけます。
    　　 $(this).addClass('select');
        // `liタグ`にクラス`hide`を設定
    　　 $('.navi_content li').addClass('hide');
        // 何番目の子要素か調べる
        const index = $('.top_menu li').index($(this));
        // ↑で取得したindex値から該当するコンテンツを取得
        $('.navi_content li').eq(index).removeClass('hide'); // クラス`hide`を取り除く
  });  
  
  // アコーディオンの処理
  $('#accordion dd').hide();
  
  $('#accordion dt').click(function(e){
    $(this).next('dd').slideToggle();
  }) 
});