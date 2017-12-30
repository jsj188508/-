var common ={
	// jquery封装ajax
	ajax:function(get,url,html,data,bool,callBack){
		var uname=$('#login').html();
		var ugwc=$('#gwc').html();
		// console.log(uname);
		$.ajax({
			'url':url,
			'type':get,
			'data':{'data':data,'uname':uname,'ugwc':ugwc},
			'dataType':'html',
			'async':bool,
			'success':function(data){
				// console.log(data);
				html=html.append(data);
				callBack(html);
			}	
		})
	},
	// jquery封装ajax
	appendAjax:function(get,url,html,data,bool,callBack){
		var uname=$('#login').html();
		var ugwc=$('#gwc').html();
		// console.log(uname);
		$.ajax({
			'url':url,
			'type':get,
			'data':{'data':data,'uname':uname,'ugwc':ugwc},
			'dataType':'html',
			'async':bool,
			'success':function(data){
				// console.log(data);
				html.html(data);
				callBack(html);
			}	
		})
	},
	// jquery封装ajax不用callback回调函数
	Ajax:function(get,url,html,data,bool){
		var uname=$('#login').html();
		var ugwc=$('#gwc').html();
	$.ajax({
		'url':url,
		'type':get,
		'data':{'data':data,'uname':uname,'ugwc':ugwc},
		'dataType':'html',
		'async':bool,
		'success':function(data){
			html.html(data);
			// console.log(data);
			}
		})
	},
	// 将点击的dom元素传到对象common的productclick方法中
	productclick:function(ele){
		url=ele.href;
		url=decodeURI(url);
		var uname=$('#login').html();
		var ugwc=$('#gwc').html();
		
		url=url.replace('请登录',uname);
		url=url.replace('我的购物车',ugwc);
		// url=url.replace('',out);
		// console.log(url);
		$(ele).attr('href',url);
		alert(ele.href);alert(uname);
	},
	// // 用户登录函数
	userLogin:function(){
	$('#name').attr('autofocus','');
	$('#uname').attr('autofocus','autofocus');
	$('.mar').css({'position':'fixed','zIndex':'5','opacity':'1'});
	$('#ulogin').css({'display':'block'});
	}
	,//购物车结算颜色
	ifTotal:function(){
		var TotalHtml=$('#Total').html();
		if(TotalHtml=='0.00'){$('#Settlement').css({'background':'rgba(0,0,0,0.1)','cursor':'not-allowed'});}
		else{
			$('#Settlement').css({'background':'#e3493c','cursor':'pointer'});
		}
		
	},
	//立即购买和结算函数
	 Settlement:function(loginName,gwcProductName,Productnumber,Settlement,callBack){
	 	 $.ajax({
				'url':'php/ifUserDesgin.php',
				'type':'get',
				'data':{'data':loginName,'gwcProductName':gwcProductName,'Productnumber':Productnumber,'position':Settlement},
				'dataType':'html',
				'async':'false',
				'success':function(data){
					console.log(data);
					if(data==''){
						// console.log('kong');
						$('#ifUserDesgin').html("请点击右上方用户名设置您的信息！");
						// $('#ifUserDesgin').css({'background':'#fff143','color':'#fff','text-align':'center','padding':'5px 0','margin-top':'10px'});
						setTimeout(function(){$('#ifUserDesgin').css({'height':'0','padding':'0'})},8000);
					}
					if(data!=''){
						$('#produc_html').html(data);
						callBack();
						$('#Delivery').click(function(){
							$('#ifUserDesgin').html("订单已经提交！");
							setTimeout(function(){$('#ifUserDesgin').css({'height':'0','padding':'0'})},8000);
						})
					}
				}
			})
	 }
}
