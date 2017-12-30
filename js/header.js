// window.onload=function(){
	$.ajax({
		'url':"php/header.php",
		'type':'GET',
		'dataType':'html',
		'async':false,
		'success':function(data){
			$('header').html(data);
		}
	});
// }
