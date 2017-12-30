	$('#search_btn').click(function(){
		search_btn();
		});
    $('#search').keydown(function(e){
    	// e.which 来判断是哪个键;
    	if(e.which===13){
    		search_btn();
    	}
    });
    //将ajax封装成一个函数并等待调用
    function search_btn(){
    	var val=$('#search').val();
        var searchHtml=$('#produc_html');
        
        common.appendAjax('get','php/search.php',searchHtml,val,'false',function(){
                addGwc_buyNow();    
        });

        $('#produc_html').css('display',"block");
        $('.pic').css('display',"none");
        $('.information').css('display',"none");
    	
    }
