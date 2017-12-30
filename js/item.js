//在jquery中找到元素的集合不用遍历，可以直接点击里面的任意元素
// 减掉导航nav ul里的内容
// console.log($('nav'));
$('nav ul').css('display','none');


// 获取地址栏里的参数并显示
(function(){
	// $('.search').css('display','block');
	// 通过url进行php与html的参数传递
	var url=document.location.href;
	//对url解码
	url=decodeURI(url);
	console.log(url);
	var href_i=url.indexOf('img_a');
	// console.log(href_i);
	if(href_i==-1){
		// $('.pic').css('display','none');
		// $('.information').css('display','none');
		console.log(123)
	}else{
		// 截取url
		var href=url.slice(href_i);
		// console.log(href);
		//分割URL
		var arr=href.split('&');
		console.log(arr);
		// ["src=images/2.png", "name=高炉家和谐年份2年"]
		var arr1=[];
		for(var i=0;i<arr.length;i++){
			arr1.push(arr[i].substring(arr[i].indexOf('=')+1));
			}
		// 获取属性
		// console.log(arr1);
		var src_a=arr1[0][1];
		var src_b=arr1[1][1];
		var src_c=arr1[2][1];
		var src_d=arr1[3][1];
		var name=arr1[4][1];
		var cj=arr1[5][1];
		var price=arr1[6][1];
		var rongliang=arr1[7][1]
		var gwc=arr1[10][1];
		var uname=arr1[9][1];
		var du=arr1[8][1];
	}
	// 设置属性
	$('#goods_img').attr("src",src_a);
	$('.img_a').attr("src",src_a);
	$('.img_b').attr("src",src_b);
	$('.img_c').attr("src",src_c);
	$('.img_d').attr("src",src_d);

	$('.name').html(name);

	$('.cj').html(cj);
	$('.price').html(price);
	$('.rl').html(rongliang);
	$('.du').html(du);

	// console.log(uname);
	$('#login').html(uname);
	$('#loginName').html(uname);
	var text=$('#login').html();
	// console.log(text);
	$('#gwc').html(gwc);
	// 判断用户是否已经登录；如果已经登录，就让

	// 点击加入购物车时
	$('#add_gwc').click(function(){
		// alert(13);
	})
})();

// 网页详情页的特效—
(function(){
	// —————鼠标在图片上的移动效果
	$('div.img').mousemove(function(e){
		// 由于鼠标移动在$('div.img')中，所以要减去h_height和main_ML
		var h_height=$('header').height();//124
		var main_ML=parseInt($('.main').css('marginLeft'));//91.5
		// 获取移动坐标，并减去h_height和main_ML
		var x=e.clientX-main_ML-2;//
		var y=e.clientY-h_height-4;//
		// 设置img上边的透明图层span的坐标与样式
		$('div.img span').css({'opacity':'1','top':y-75,'left':x-75});
		// 设置img的放大图片的区域值
		if(x<330&&x>70&&y>70&&y<330){	
			// console.log(x);
			// console.log(y);
			var bg_src=$('#goods_img').attr('src');
			// console.log(bg_src);
			$('p.bg_img').css({
				'border':'1px solid #ccc',
				'opacity':'1',
				'background':'url('+bg_src+')no-repeat '+(-x)+'px '+(-y)+'px'+' rgba(0,0,0,0.5)',
				'backgroundSize':'183% 183%',
				'z-index':'2'
			});
		}	
	})
// 设置鼠标移除元素后的样式
	$('div.img').mouseout(function(){
		$('div.img span').css({'opacity':'0'});
		$('p.bg_img').css({'opacity':'0','z-index':'-1'});
	})
	//取出 #img_bar img并设置点击事件
	var img_bar=$('#img_bar img');
		$('#img_bar li:first-child').css({'border':'1px solid #289cd9','opacity':'0.8'});	
		img_bar.click(function(){
			// 取出点击缩略图的src属性，并给显示商品图片
			// console.log(this.src);
			$(this).parent('li').css({'border':'1px solid #289cd9','opacity':'0.8'});
			$(this).parent('li').siblings().css({'border':'0','opacity':'1'});
			var src=this.src;
			$('#goods_img').attr('src',src);

		});
})();

// // 价格计算
(function(){
	var price=$('.price').html();
	var m_price=(price*2-50);
	$('.m_price').html((m_price).toFixed(2));
	$('.j_price').html((price/10).toFixed(2));
	$('.yuan_j').html((price*1.2).toFixed(2))
})();

// 购买数量
(function(){
	var p_num=$('#product_num').val();
	// p_numd的样式
	function p_num2(){
		 if(p_num>10){$('#product_num').css({'border':'1px solid #e3493c','color':'#e3493c'})
		 }else{$('#product_num').css({'border':'1px solid #ddd','color':'#333'})}
	}
	$('#num_add').click(function(){
		p_num++;
		$('#product_num').val(p_num);
		p_num2();
	});
	$('#num_jian').click(function(){
		if(p_num>1){
			p_num--;
		}else{return p_num;}
		$('#product_num').val(p_num);
		p_num2();
	});
})();


// 快递地址选择
(function(){
	// 点击配送地址 做显示和内点击事件
	$('#city').click(function(){
		var city_block=$('#city_block')
		$('#city_block').css({'display':'block'});
		$('#county_block').css('display','none');
		 common.Ajax('get','php/freight.php',city_block);

		// 点击省份部分
		$('.province span').click(function(){
				$(this).find('b').css({'display':'block'});
				$(this).siblings('span').find('b').css({'display':'none'});
				$(this).parent('p').siblings('p').find('b').css({'display':'none'});
				$(this).siblings('b').css({'display':'block'});

				var citsText=$(this).find('u').html();
				console.log(citsText);
				// console.log($(this).siblings('b').html());
				var cits=$(this).siblings('b');
				// 使用ajax发送请求
				common.Ajax('get','php/cits.php',cits,citsText);
				//当点击省份之后的点击市部分
				cit();
		});
		// }
		//点击北京天津上海重庆国家级市部分
		function cit(){
			$('.cits u').click(function(){	
					// 设置点击元素与其他元素的样式
					$(this).css({'color':'red'});
					$(this).parent('span').siblings('span').find('u').css({'color':'#000'});
					$(this).siblings('u').css({'color':'#000'});
					$(this).parent('span').parent('p').siblings('p').find('b').find('u').css('color','#000');
					$(this).parent('b').parent('p').siblings('p').find('span').find('u').css('color','#000');
					// 设置city_block隐藏与county_block显示
					$('#city_block').css('display','none');
					$('#county_block').css('display','block');
					
					// 获取点击的city，并作为数据传到后台做查询；并找到盛放数据的容器county_block
					var city=this.innerHTML;
					// 替换页面上默认的市
					$('#city>u').html(city);
					var county_block=$('#county_block');
					// function Ajax(get,url,html,data){
					common.Ajax('get','php/county.php',county_block,city);
					//点击区或县
					$('#county_block u').click(function(){
						var county=$(this).html();
						// console.log(county);
						$('#county').html(county);
						$('#county_block').css('display','none');
					});
				}
			);
		}
		cit();
	})
})()

// 点击立即购买或加入购物车后,先判断用户是否已经登录;
$('#buy_gwc a').click(function(){
	console.log(this);
})


