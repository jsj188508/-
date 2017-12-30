// 点击注册时
$('#zhuce').click(function (){zhuce()});
function zhuce(){
	$('#name').attr('autofocus','autofocus');
	$('.mar').css({'opacity':'1','position':'fixed','z-index':'3'});
	$('#zc').css({'display':'block'});
	$('#information2').html("");
	$('#information').html("");
	$('#ulogin').css({'display':'none'})
}
// 点击注册关闭时
$('.close').click(function(){closeBtn()});
function closeBtn(){
	$('.mar').css({'opacity':'0','position':'absolute','z-index':'-5'});
	$('#zc').css({'display':'none'});
	$('userDesgin').css({'display':'none','z-index':'-5'});
}
// 点击登录时
$('#login').click(
	function userLogin(){
	$('#name').attr('autofocus','');
	$('#uname').attr('autofocus','autofocus');
	$('.mar').css({'opacity':'1','position':'fixed','z-index':'3'});
	$('#ulogin').css({'display':'block'});
}
// common.userLogin();
);
// 点击登录关闭时
$('.close').click(function(){login()});
function login(){
	$('.mar').css({'opacity':'0','position':'absolute','z-index':'-5'});
	$('#ulogin').css({'display':'none'});
}

// 失去焦点后查看用户名有没有被注册过,没有注册过表示可以注册
$('#name').blur(function(){
	var name=$('#name').val();
		if(name==''){
			$('#name').attr('placeholder','请输入注册的用户名');
			$('#information').html("<b>&times;</b>");}
		else{
			var information=$('#information')
			common.Ajax('get','php/select_zc.php',information,name,'false');
		}
})
// 点击注册按钮时，注册用户并创建一个用户的购物车
$('#zc_btn').click(function(){
	var times=$('#information>b').html();
	// console.log(times);
	var name=$('#name').val();
	var pwd=$('#pwd').val();
	var information=$('#information')
	// 提交用户点击注册之前再次查看用户是否已经注册过了
	common.Ajax('get','php/select_zc.php',information,name,'false');
	// console.log(1230);
	if(name!=''&&pwd!=''&&times!='×'){
		$('#information').html('');
		$.ajax({
			'type':'post',
			'url':'php/zc_btn.php',
			'data':{'name':name,'pwd':pwd},
			'dataType':'html',
			'async':false,
			'success':function(data){
				console.log(data);
			}
		});
		closeBtn();
	}
	else if(name==''&&pwd!=''){
		$('#name').attr('placeholder','请输入用户名');
		$('#information').html("<b>&times;</b>");

	}
	else if(name!=''&&pwd==''){
		$('#pwd').attr('placeholder','请输入用户密码');
		$('#information2').html("<b>&times;</b>");
	}else{
		$('#pwd').attr('placeholder','请输入用户密码');
		$('#information2').html("<b>&times;</b>");
		$('#name').attr('placeholder','请输入用户名');
		$('#information').html("<b>&times;</b>");
		
	}

})
$('#loginZcBtn').click(function(){zhuce()})




// 失去焦点后查看用户名有没有被注册过，只有被注册过后才可以登录。
$('#uname').blur(function(){
	var uname=$(this).val();
	// console.log(name);
	if(uname==''){
		$('#uname').attr('placeholder','请输入登录的用户名');
		$('#informat').html("<b>&times;</b>");
	}
	else{
		$.ajax({
			'type':'get',
			'url':'php/select_login.php',
			'data':{'uname':uname},
			'dataType':'html',
			'success':function(data){
				// console.log($('#information').html());
				// console.log(data);
				$('#informat').html(data);
				$('#informat').css({'color':'#e3493c'})
			}
		})
	}

})
// 当用户单机登录按钮时
$('#login_btn').click(function(){
	var uname=$('#uname').val();
	var upwd=$('#upwd').val();
	var times=$('#informat>b').html();
	if(uname!=''&&upwd!=''&&times!='×'){
		$.ajax({
			'type':'get',
			'url':'php/login_btn.php',
			'data':{'uname':uname,'upwd':upwd},
			'dataType':'html',
			'async':false,
			'success':function(data){
				var str=data;
				// console.log(str);
				var i=str.lastIndexOf('&times;');
				// console.log(i);
				// 如果i=-1意味着没找到“X”——就表示登录成功
				if(i!=-1){$('#informat2').html(data);}
				else{
					login();
					$('#loginName').html(uname);
					$('#zhuce').css('display','none');
					$('#out_name').css('display','inline-block');
					$('#login').html(uname);
					$('#gwc').html('我的购物车'+"<b id='gwcNum'>"+data+'</b>');
					// console.log(data)
				}
				
			}
		});
		
	}
	else if(uname==''&&upwd!=''){
		$('#uname').attr('placeholder','请输入用户名');
		$('#informat').html("<b>&times;</b>");
	}else if(uname!=''&&upwd==''){
		$('#upwd').attr('placeholder','请输入用户密码');
		$('#informat2').html("<b>&times;</b>");
	}else{
		$('#upwd').attr('placeholder','请输入用户密码');
		$('#informat').html("<b>&times;</b>");
		$('#uname').attr('placeholder','请输入用户名');
		$('#informat2').html("<b>&times;</b>");
		
	}
})
// 当用户单机退出按钮时
$('#out_name').click(function(){
	$('#login').html('请登录');
	$('#zhuce').css('display','inline-block');
	$('#out_name').css('display','none');
	$('#loginName').html('我的高炉家');
	$('#gwc').html('我的购物车');
})

// 点击loginName设置电话和快递地址
$('#loginName').click(function(){
	$('.mar').css({'position':'fixed','z-index':'3','opacity':'1'});
	//先判断用户有没有登录
	if($('#login').html()=='请登录'){common.userLogin();}
	else{
		// 弹出设置框
		$('#userDesgin').css({'display':'block','z-index':'5'});
		
		//点击关闭按钮 
		// $('.close').click(function(){closeBtn()});
		
		$('.close').click(function(){userclose()})
		function userclose(){
			$('#userDesgin').css({'display':'none','z-index':'-1'});
			$('.mar').css({'position':'absolute','z-index':'-5','opacity':'0'})
		}
		// 点击autoShow显示密码
		$('.autoShow').click(function(){
			if($(this).html()=='⌒'){
				$(this).siblings('input').attr('type','text')
				$(this).html('⊙')}
			else if($(this).html()=='⊙'){
				$(this).siblings('input').attr('type','password')
				$(this).html('⌒')}
		})
		//oldPWD失去焦点取出已经登录的用户名的密码和旧的密码对比
		$('#oldPWD').blur(function(){oldPWDblur();})

		function oldPWDblur(){
			var DesginName=$("#login").html();
			var oldPWDHtml=$('.oldPWDHtml');
			common.appendAjax('get','php/oldPWDblur.php',oldPWDHtml,DesginName,'false',function(){
				// console.log(desginHtml.html());
				// var oldPWDHtml=$('#oldPWD').siblings('u.desginHtml');
				if($('#oldPWD').val()!=oldPWDHtml.html()){
					oldPWDHtml.html('原密码错误，重新输入！');
					oldPWDHtml.css('opacity','1');
					return false;
				}else{oldPWDHtml.css('opacity','0');
					oldPWDHtml.html('');
				}
			});
		}
		// 点击DesginOK验证newPWD新的密码；手机；地址
		$('#DesginOK').click(function(){
			// 调用oldPWDblur();
			oldPWDblur();
			// 验证新密码
			var newPWD=$('#newPWD').val();
			var newPWDHtml=$('u.newPWDHtml');
			// console.log(newPWD);
			if((/^[0-9a-zA-Z]{6,12}$/.test(newPWD))){
				newPWDHtml.css({'opacity':'0'});
			}else{
				newPWDHtml.html('新密码是由6-12位的数字和字母组成');
				newPWDHtml.css({'opacity':'1'});
				// return false;
			}
			//验证手机号
			var desginPhone=$('#DesginPhone').val();
			if(!(/^1[34578]\d{9}$/.test(desginPhone))){
				$('#DesginPhone').val('');
		        $('#DesginPhone').attr('placeholder','手机号码有误，请重填'); 
		        $('#DesginPhone').addClass('messageContent');
				return false;

			}
			// 验证省份
			var DesginPurpose=$('#DesginPurpose').val();
			if(!(/^[a-zA-Z0-9\u4e00-\u9fa5]{2,10}$/.test(DesginPurpose))){
				$('#DesginPurpose').val('');
		        $('#DesginPurpose').attr('placeholder','错误！'); 
		        $('#DesginPurpose').addClass('messageContent');
				return false;
			}
			// 验证市
				var userCity=$('#userCity').val();
			if(!(/^[a-zA-Z0-9\u4e00-\u9fa5]{2,10}$/.test(userCity))){
				$('#userCity').val('');
		        $('#userCity').attr('placeholder','错误！'); 
		        $('#userCity').addClass('messageContent');
				// return false;
			}
			// 验证县/qu
			var userArea=$('#userArea').val();
			if(!(/^[a-zA-Z0-9\u4e00-\u9fa5]{2,10}$/.test(userArea))){
				$('#userArea').val('');
		        $('#userArea').attr('placeholder','错误！'); 
		        $('#userArea').addClass('messageContent');
				// return false;
			}
			// 验证街区
			var userblock=$('#userblock').val();
			if(!(/^[a-zA-Z\u4e00-\u9fa5]{2,20}$/.test(userblock))){
				$('#userblock').val('');
		        $('#userblock').attr('placeholder','姓名是无效的！'); 
		        $('#userblock').addClass('messageContent');
				// return false;
			}

			// 验证实名
			var actualName=$('#actualName').val();
			if(!(/^[a-zA-Z\u4e00-\u9fa5]{2,20}$/.test(actualName))){
				$('#actualName').val('');
		        $('#actualName').attr('placeholder','姓名是无效的！'); 
		        $('#actualName').addClass('messageContent');
				return false;
			}
			cityString=DesginPurpose+userCity+userArea+userblock;
			//提交修改的数据
			var oldPWD=$('#oldPWD').val();
			var desginFinish=$('#desginFinish');
			var oWDHtml=$('.oldPWDHtml').html();
			console.log(oWDHtml);
			while(oldPWD!=''&&newPWD!=''&&desginPhone!=''&&DesginPurpose!=''&&actualName!=''&&oWDHtml==''){
				var desginData=oldPWD+'#'+newPWD+'#'+desginPhone+'#'+actualName+'#'+cityString;
				common.appendAjax('post','php/desgin.php',desginFinish,desginData,'false',function(){
					desginFinish.css({'opacity':'1','height':'20px'});
					setTimeout(function(){
						userclose();
						desginFinish.css({'opacity':'0','height':'0'} 
					);},5000);
				})
				return false;
			}
		})
		// 重置信息
		$('#DesginCancel').click(function(){
			$('#oldPWD').val('');
			$('#newPWD').val('');
			$('#DesginPhone').val('');
			$('#DesginPurpose').val('');
		})
		
	}
})


