// 品牌故事部分
$('#biness').click(function(){
	$(this).css('background','#600');
	$(this).siblings('span').css('background','none');
	// 清楚$('#produc_html')内其他部分的neir
	$('#produc_html').html('');
	$('#produc_html').html('<h1>我们的品牌</h1>');
});