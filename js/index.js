// 首页部分
window.onload=function(){
	indexHtml();
	var nav_li=$('nav li');
	$('nav li').click(function(){

		$(this).addClass('navActive');
		$(this).siblings('li').removeClass('navActive');
		var id=$(this).attr('id');
		// console.log(id);

		if(id=='index'){indexHtml();}
		else if(id=='product'){product();}
		else if(id=='biness'){biness();}
		else if(id=='contact'){contact();}
		else if(id=='Process'){process();}
		else{$('.search').css('display','none');}
	});
	//页脚部分
	var footer=$('footer');
	common.Ajax('get','php/footer.php',footer,'','false');
	$('.mar').css({'background':'url(images/loginBJ.png) no-repeat center center','background-size':'100% 100%'});
	$('label.name').css({'background':'url(images/login.png) no-repeat 0px -7px'});
	$('label.pwd').css({'background':'url(images/login.png) no-repeat -37px -7px'});
	$('[for=DesginPhone]').css({'background':'url(images/login.png) no-repeat -72px -7px'});
	$('[for=DesginPurpose]').css({'background':'url(images/login.png) no-repeat -108px -7px'});
	$('[for=actualName]').css({'background':'url(images/login.png) no-repeat -155px -7px'});
}
// 手机屏幕下点击navshow
$('#navshow').click(function(){
	$('nav>ul').toggle();
	// console.log($('body'))
});



// 首页部分
var indexHtml=function (){
		$('#produc_main').css('margin-top','50px')
		$('.search').css('display','none');
		var indextext=$('#produc_html');
		var banner=$('#banner');
		// 调用ajax获取indexBanner图片
		common.appendAjax('get','php/index.php',banner,'indexBanner','false',function(callBack){
		  	var bannerWidth=$('body').width();
			var bannerHeight=bannerWidth*0.59;
			console.log('jjj');
			
			$('#IndexBannerImg img').attr('width',bannerWidth);
			$('#IndexBannerImg img').attr('height',bannerHeight);

			// console.log(videoWidth);
			// console.log(videoHeight);
			// console.log(videoTop);
			var newsHtml=$('#banner');
			// 调用ajax生成新闻页面
			common.ajax('get','php/index.php',newsHtml,'news','false',function(callBack){
				// 点击新闻部分
				$('.new').click(function(){
					// $('#produc_html').css({'margin-top':'0'});
					var newText=$(this).html();
					var newHtml=$('#produc_html');
					common.Ajax('get','php/news.php',newHtml,newText,'false')
				})
				$('.news').css({"marginLeft":-$('.news').width()/2});
				$('.news span').hover(
					function(){
						$('.news h2').css({'background':'rgba(102, 0, 0,1)'});
						$(this).css({'border-color':'#e3493c','color':'#ccc'});
					},function(){
						$('.news h2').css({'background':'#e3493c'});
						$(this).css({'border-color':'#999','color':'#400101'});
					})
			
			});	
			common.appendAjax('get','php/index.php',indextext,'brief','false',function(callBack){
				$('.brief button').click(function(){
					$(this).css('display','none');
					$('.brief span').css('display','inline');
					// console.log(123);
				})
				common.ajax('get','php/index.php',indextext,'newProduct','false',function(callBack){
						//为每个产品添加点击事件
						$('.newProduct a').click(function(){
							return false;
							// var Ele=$(this)[0];
							// //将点击的dom元素传到对象common的productclick方法中修改URL
							// common.productclick(Ele);
						})
						addGwc_buyNow();
						
				});
			});	
		});

	};
//产品部分的js 
var product=function (){
	$('#produc_main').css('margin-top','15px')
	var banner=$('#banner');
	common.Ajax('get','php/index.php',banner,'productBanner','false');
	$('.search').css('display','inline-block');
	// 通过ajax将页面中的用户名传到php中
	var uname=$('#login').html();
	var ugwc=$('#gwc').html();
	// 动态添加product和分页容器

	$('#produc_html').html(`<div class='productH2Parent'>
			<h2 class='h2'>产品展示</h2><i class='line'></i>
			<div id='product_text'></div>
		</div>`);
	$('#produc_html').append("<div id='i'></div>");
	//初始化产品页面;
	var productHtml=$("#product_text");
	common.appendAjax('get','php/product.php',productHtml,'','false',function(){
		// 调用加入购物车与立即购买的函数
		addGwc_buyNow();
	});
	
	//分页数字显示
	var iHtml=$("#i");
	// 用不到的参数可以不用
	common.ajax('get','php/i.php',iHtml,'','false',function(){fy();});

	// 做分页显示处理
	function fy(){
		var b=$('b.index');
		// console.log(b);
		var sub;//设置点击第几页为sub变量
		b.click(function subClick(){
		  	num=$(this).html();
		  	sub=num-1;
		  	// console.log(sub);
		  	// 分别点击第一个和最后一个时
		  	if(num==1){
		  		$('#shang').css({'background':'#ccc','opacity':'0.5'});
		  		$('#xia').css({'background':'#e3493c','opacity':'1'});
		  		$(this).css({'border':'0','background':'#e3493c','color':'#fff'});
			  	$(this).siblings('b').css({'border':'1px solid #ccc','background':'#fff','color':'#000'});
		  	}else if(num==b.length){
		  		$('#shang').css({'background':'#e3493c','opacity':'1'});
		  		$('#xia').css({'background':'#ccc','opacity':'0.5'});
		  		$(this).css({'border':'0','background':'#e3493c','color':'#fff'});
			  	$(this).siblings('b').css({'border':'1px solid #ccc','background':'#fff','color':'#000'});
		  	}else{//点击中间的部分
		  		left();
		  		$(this).css({'border':'0','background':'#e3493c','color':'#fff'});
			  	$(this).siblings('b').css({'border':'1px solid #ccc','background':'#fff','color':'#000'});
			  	$('#i>button').css({'background':'#e3493c','opacity':'1'});
			 }

			function left(){
				// console.log(num);
  				if(num>5){left=-33*(num-5)+'px';}else{left='0px';}
  				$('#produc_main #i b:first-child').css({'margin-left':left});
			}
	  		// 点击当前元素的样式和其他元素的样式
		  	// 点击每个b.index时，都要发送ajax请求
		  	// console.log(productHtml);
		  	// console.log(num);

		  	common.appendAjax('get','php/product_f.php',productHtml,num,'false',function(){
				addGwc_buyNow();
		  		console.log(13);
		  	});
		})
		
		// 点击上一页
		$('#shang').click(function shang(){
			$('#xia').css({'color':'#fff','background':'#e3493c','opacity':'1',});
			$('#len').css({'display':'inline-block'});
			sub--;
			if(b[sub]==undefined){
				sub=0;
				// sub++;
			}else if(sub==0){
					$(this).css({'background':'#ccc','opacity0':'0.5'});
			}else if(sub>5){left=-33*(sub-4)+'px';}else{left='0px';}			
			// console.log(sub);
			// console.log(b[sub]);
				b[sub].style.background="#e3493c";
				b[sub].style.color="#fff";
				b[sub].style.border="0";
				b[sub+1].style.background="#fff";
				b[sub+1].style.color="#000";
				b[sub+1].style.border="1px solid #ccc";
				// console.log(sub);
				$('#produc_main #i b:first-child').css({'margin-left':left});
			
				num=sub-1;//当index为1时num=0；是不可取的
				if(num==0){num=2;}
				if(num==-1){num=1;}
		  	common.appendAjax('get','php/product_f.php',productHtml,num,'false',function(){
				addGwc_buyNow();
		  	});
	  		// getIndexAjax();
		})
		// // 点击下一页
		$('#xia').click(function xia(){
			$('#shang').css({'color':'#fff','background':'#e3493c','opacity':'1'});
			sub++;
			if(isNaN(sub)){
				sub=1;
				console.log(1);
			}else if(sub==11){
	  				// sub=12;
	  				console.log(123);
	  				$(this).css({'background':'#ccc','opacity':'0.5'});
	  		}else if(sub>11){sub=11;}
	  		if(sub>5){left=-33*(sub-5)+'px';}else{left='0px';}
			// console.log(sub);
			b[sub].style.background="#e3493c";
				b[sub].style.color="#fff";
				b[sub].style.border="0";
				b[sub-1].style.background="#fff";
				b[sub-1].style.color="#000";
				b[sub-1].style.border="1px solid #ccc";

			// console.log(sub);
			$('#produc_main #i b:first-child').css({'margin-left':left});
				// left();
				num=sub+1;
		  	common.appendAjax('get','php/product_f.php',productHtml,num,'false',function(){
		  		addGwc_buyNow();	
		  	});
		
		})
	};
	
	
	// 
}
// 品牌故事
var biness=function(){
	$('#produc_main').css('margin-top','0px')

	$('.search').css('display','none');
	var banner=$('#banner');
	common.Ajax('get','php/index.php',banner,'binessBanner','false');

	var binessHtml=$('#produc_html');

	common.appendAjax('get','php/index.php',binessHtml,'binessHtml','false',function(){

		var binessText=$('.binessText');
		common.Ajax('get','php/index.php',binessText,'profile','false');

		$('.binessNav>li').click(function(){
			$(this).addClass('binessActive');
			$(this).siblings('li').removeClass('binessActive');

			var binessNavData=this.id;
			common.Ajax('get','php/index.php',binessText,binessNavData,'false');
		})
		
	})
}
var process=function(){
	$('.search').css('display','none');
	var banner=$('#banner');
	common.Ajax('get','php/index.php',banner,'processBanner','false');
	
	var processHtml=$('#produc_html');
	common.Ajax('get','php/index.php',processHtml,'processHtml','false');
}




// 联系我们
var contact=function(){
	var banner=$('#banner');
	common.Ajax('get','php/index.php',banner,'contactBanner','false');
	
	$('.search').css({'display':'none'});
	var contactHtml=$('#produc_html');
	//将数据传至后台，拿到html页面并修改相应的元素样式
	common.appendAjax('get','php/index.php',contactHtml,'contactHtml','false',function(callBack){
		var len=$('.companyBanner ul>li').length;
		var ulWidth=100*len;
		$('.companyBanner ul').css({'width':ulWidth+'%'});
		$('.companyBanner ul>li').css({'width':ulWidth/len+'%'});	
		$('.companyBanner ul>li img').css({'width':'100%'});
		//提交留言表单
		var Id="typeMessage";
		$('[name=message]').click(function(){Id=this.id;})
		$('#submit').click(function(){
			console.log(Id);
			var companyName=$('#companyName').val();
			var phone=$('#phone').val();
			var Name=$('#contentName').val();
			var uQQ=$('#uQQ').val();
			var contact=$('#content').val();
			if((Name!=''||companyName!='')&&(phone!=''||uQQ!='')&&content!=''){
				// 表单验证
				if(!(/^[0-9a-zA-Z\u4e00-\u9fa5]*$/.test(companyName))){
			    	$('#companyName').val('');
			        $('#companyName').attr('placeholder',"错误，请重填,但可以提交"); 
			        
			    }
			    if(!(/^[0-9a-zA-Z\u4e00-\u9fa5]*$/.test(Name))){
			    	$('#Name').val('');
			        $('#Name').attr('placeholder',"错误，请重填"); 
			        $('#phone').addClass('messageContent');
			        return false; 
			    }
				if(!(/^1[34578]\d{9}$/.test(phone))){
					$('#phone').val('');
			        $('#phone').attr('placeholder',"手机号码有误，请重填"); 
			        $('#phone').addClass('messageContent');
			        return false; 
			    }	
			    if(!(/^[1-9][0-9]{4,9}$/.test(uQQ))){
			    	$('#uQQ').val('');
			        $('#uQQ').attr('placeholder',"QQ号有误，请重填,但可以提交"); 
			    }

			    if(!(/^[0-9a-zA-Z\u4e00-\u9fa5]*$/.test(content))){
			    	$('#content').val('');
			        $('#content').attr('placeholder',"提交留言内容不能为空！"); 
			        $('#content').addClass('messageContent');
			         return false; 
			    }
			    
				//设置样式
				$('#contentName').removeClass('messageContent');
				$('#content').removeClass('messageContent');
				$('#phone').removeClass('messageContent');
    

				// 提交表单
				var messageData=Id+'#'+companyName+'/'+Name+'#'+phone+'/'+uQQ+'#'+contact;
				// console.log(messageData);
				var successText=$('#successText');
				common.appendAjax('post','php/message.php',successText,messageData,'false',function(){
					$('#successText').css({'height':'26px'});
					setTimeout(function(){$('#successText').css({'height':'0'})},5000);

				});
				
			}
			
			else if(Name==''){
				$('#contentName').attr('placeholder','*请你输入你的名字信息!*');
				$('#contentName').addClass('messageContent');
			}
			else if(phone==''){
				$('#phone').attr('placeholder','*请你输入联系你的信息!*');
				$('#phone').addClass('messageContent');
			}
				else if(content==''){
				$('#content').attr('placeholder','*请你输入主要的留言信息!*');
				$('#content').addClass('messageContent');
			}
			
		});	
	});
}
//点击加入购物车与立即购买
function addGwc_buyNow(){
	// 判断用户是否登录         
	function ifUser(){
		if($('#login').html()=='请登录'){
			common.userLogin();
			$('.mar').css('position','fixed');
		}
		// console.log();
	}
	//点击加入购物车
	$('.addGwc').click(function(){
		// ifUser();
		if($('#login').html()=='请登录'){ifUser();}
		else{
			var url=$(this).parent('dt').siblings('a').attr('href');
			num=url.indexOf('img_a');
			var url=url.slice(num);
			// console.log(url);
			var arr=url.split('&');
			// console.log(arr);
			var arr1=[];
			for(var i=0;i<arr.length;i++){arr1.push(arr[i].split('='));}
			
			var src_a=arr1[0][1];
			// console.log(arr1);

			var src_a=arr1[0][1];
			var productName=arr1[4][1];
			var cj=arr1[5][1];
			var price=arr1[6][1];
			var rongliang=arr1[7][1]
			var du=arr1[8][1];

			var gwcHtml=`
					<p class='addSuccess'>
						<span id=''>√</span>
						<b>商品已成功加入购物车</b>
					</p>
					<div id='addSuccess'>
						<img src=`+src_a+` class='addSuccessImg'/>
						<div class='addInformation'>
							<h2>`+productName+`</h2>
							<p><u>厂家:`+cj+`</u></p>
							<p>
								<span><b>价格:￥</b>`+price+`元</span>
								<span><b>容量:</b>`+rongliang+`</span>
								<span><b>度数</b>`+du+`</span>
								<span>`+'数量 1'+`</span>
							</p>
						</div>
						<p id='BackBtn'><a id='Back'>返回</a><a id='goGwc'>去购物车<b> »</b></a></p>
					</div>`;
			$('#produc_html').html(gwcHtml);
			// console.log($('#banner'));
			$('#banner').html(`<img src=images/addGwcSuccess.png>`);
			
			var gwcNum=$('#gwc');
			var addGwcData=productName+'#'+cj+'#'+src_a+'#'+price+'#'+du+'#'+rongliang+'#'+1;
			// console.log(addGwcData)
			common.Ajax('post','php/addGwc.php',gwcNum,addGwcData,'false');
			
			// 点击返回
			$('#Back').click(function(){
				var navLiId=$('nav li.navActive').attr('id');
				// console.log(navLiId);
				navLiId=='index'?indexHtml():product();
			})
			// 点击去购物车
			$('#goGwc').click(function(){goGwc();});

		}	
	})
	// 点击立即购买
	$('.buyNow').click(function(){
		
		if(true){ifUser()}
		else{}
			var href=$(this).parent('dt').siblings('a').attr('href');
			var href_i=href.indexOf('img_a');
			var href=href.slice(href_i);
			// console.log(href);
			var arr=href.split('&');
			// console.log(arr);
			// console.log(arr[0]);
			var arr1=[];
			for(var i=0;i<arr.length;i++){arr1.push(arr[i].substring(arr[i].indexOf('=')+1));}
			console.log(arr1);
			var gwcProductName=arr1[4].replace(/(^\s*)|(\s*$)/g, "");
			
			var Productnumber=1;
			// var orderHtml=$('#produc_html');
			var loginName=$('#loginName').html();
			common.Settlement(loginName,gwcProductName,Productnumber,'buyNow',function(){
				
			});
	})
// 去掉链接
	$('.newProduct a').click(function(){
		return false;
	})

}
// 购物车函数
function goGwc(){
	var goGwcHtml=$('#produc_html');
	common.appendAjax('get','php/goGwcHtml.php',goGwcHtml,'','false',function(){
		//操作购物车加法与减法 
		$('.add').click(function(){
			// console.log(this);
			addNum=$(this).siblings('input').val();
			addNum++;
			if(addNum>0){$(this).siblings('button').html('-')};
			// console.log(addNum);
		
			$(this).siblings('input').val(addNum);
			var price=$(this).parent('td').siblings('td').find('b').html();
			$(this).parent('td').siblings('td').find('span').html((addNum*price).toFixed(2,5));
		})
		// 减法 操作
		$('.reduce').click(function(){
			addNum=$(this).siblings('input').val();
			addNum--;
			if(addNum==0||addNum==1){$(this).html('');addNum=1;};
			console.log(addNum);
			
			$(this).siblings('input').val(addNum);
			var price=$(this).parent('td').siblings('td').find('b').html();
			$(this).parent('td').siblings('td').find('span').html((addNum*price).toFixed(2,5));
		})
		// 删除操作
		$('.productDelete').click(function(){
			var ptId=$(this).parent('td').siblings('td').find('dt.ptId').html();

			var deleteHtml=$(this).parent('td').parent('tr');
			
			common.appendAjax('post','php/deleteUserGwcProduct.php',deleteHtml,ptId,'false',function(){
				deleteHtml.css({'background':'#fff143','color':'#fff'});
				deleteHtml.find('td').attr('colspan','8');
				setTimeout(function(){deleteHtml.html('')},2000);
			})
			var gwcNum=$('#gwcNum').html()
			gwcNum--;
			$('#gwcNum').html(gwcNum);
			$('#Total').html('0');
		})
		
		// 点击全选
		var selectAllNum=0;
		$('#selectAll').click(function(){selectInput()})
		function selectInput(){
			selectAllNum++;
			if(selectAllNum%2==0){
				$('input.selectCheck').removeAttr("checked");
				$('#Total').html('0');
				$('#Settlement').css({'background':'rgba(0,0,0,0.1)','cursor':'not-allowed'});
			}
			else{
				$('input.selectCheck').attr('checked','checked')
				var sumPriceHtml=$('input.selectCheck').parent('dt').parent('td').siblings('td').find('span.sumPrice');
				for(var i=0,priceSum=0;i<sumPriceHtml.length;i++){
					priceSum+=parseInt(sumPriceHtml[i].innerHTML);
				}
				$('#Total').html(priceSum.toFixed(2,7));
				$('#Settlement').css({'background':'#e3493c','cursor':'pointer'});
			}
			selectNum=$('input.selectCheck[checked=checked]').length;
			// console.log(selectNum);
			$('#selectNum').html(selectNum);
			
		}
		// 选中单个
		$('input.selectCheck').click(function(){
			selectNum=$('#selectNum').html();
			var Total=parseInt($('#Total').html());
			// console.log(Total);
			var sumPrice=parseInt($(this).parent('dt').parent('td').siblings('td').find('span.sumPrice').html());
			// console.log(sumPrice);
			if($(this).is(':checked')){
				selectNum++;
				Total=(Total+sumPrice).toFixed(2,7);
				// console.log(Total);
				$(this).attr('checked','checked')
				$(this).parent('dt').parent('td').siblings('td').css({'border-bottom':'1px solid #e3493c'});
				$(this).parent('dt').parent('td').css({'border-bottom':'1px solid #e3493c'});
			}
			else{
				Total=(Total-sumPrice).toFixed(2,7);
				console.log(Total);
				selectNum--;
				$(this).parent('dt').parent('td').siblings('td').css({'border-bottom':'1px solid transparent'});
				$(this).parent('dt').parent('td').css({'border-bottom':'1px solid transparent'});
				
			}	
			// console.log(selectNum);	
			$('#selectNum').html(selectNum);
			$('#Total').html(Total);
			common.ifTotal();
		});
		// 点击删除按钮
		$('#deleteSelect').click(function(){

			var selectCheck=$('input[checked=checked]').parent('dt').parent('td').parent('tr');
			var selectPtId=$('input[checked=checked]').parent('dt').siblings('dt.ptId');
			for(var n=0,dataPtId='';n<selectPtId.length;n++){
				dataPtId+=selectPtId[n].innerHTML+'#';
			}

			common.appendAjax('post','php/deleteUserGwcProduct.php',selectCheck,dataPtId,'false',function(){
				selectCheck.css({'background':'#fff143','color':'#fff'});
				selectCheck.find('td').attr('colspan','8');
				setTimeout(function(){selectCheck.html('')},2000);
			});
			$('#Total').html('0');

			var gwcNum=$('#gwcNum').html()-selectPtId.length;
			$('#gwcNum').html(gwcNum);
		});
		// 点击结算按钮
		$('#Settlement').click(function(){
			var selectCheck=$('.selectCheck[checked=checked]');
			
			if(selectCheck.length==0){return;}
			else{
				for(var i=0,gwcProductName='',Productnumber=0;i<selectCheck.length;i++){
					var gwcId=selectCheck[i].getAttribute('id');
					gwcProductName += $('#'+gwcId).parent('dt').parent('td').siblings('td').find('img').attr('alt')+'#';
					Productnumber += parseInt($('#'+gwcId).parent('dt').parent('td').siblings('td').find('input').val())+'#';
				}
				// console.log(Productnumber);
				
				// 判断用户是否设置信息
				var loginName=$('#loginName').html();
				// var orderHtml=$('#produc_html');
				// 调用立即购买和结算函数
				common.Settlement(loginName,gwcProductName,Productnumber,'Settlement',function(){

				});
			}
		});
	});
}
// 点击购物查看里面的内容
$('#gwc').click(function(){
	var loginName=$('#login').html();
	if(loginName!='请登录')goGwc();
	else{common.userLogin();}
});








