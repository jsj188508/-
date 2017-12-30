<?php
// •require： 引入一个文件，运行时编译引入.  require_once('connect.php');
// •require_once： 功能等同于require，只是当这个文件被引用过后，不再编译引入;require('connect.php');
require('connect.php');
$data=$_GET['data'];
$uname=$_GET['uname'];
$ugwc=$_GET['ugwc'];

$sql="SELECT * FROM banner WHERE banner_location= '$data'";
$result=mysqli_query($conn,$sql);
if(!$result){
	echo "$sql 语法错误";
}else{
	if($data=='indexBanner'){$index=new index();$index->indexBanner();}
	else if($data=='news'){$index=new index();$index->news();}
	else if($data=='brief'){$index=new index();$index->brief();}
	else if($data=='newProduct'){$index=new index();$index->newProduct();}
	else if($data=='productBanner'){$index=new index();$index->productBanner();}
	else if($data=='contactBanner'){$contact=new contact();$contact->contactBanner();}
	elseif ($data=='contactHtml') {$contact=new contact();$contact->contactHtml();}
	elseif ($data=='binessBanner') {$biness=new biness();$biness->binessBanner();}
	elseif ($data=='binessHtml') {$biness=new biness();$biness->binessHtml();}
	elseif ($data=='profile'||$data=='history'||$data=='brand'||$data=='GLHome')
		{
			$biness=new biness();$biness->binessNav();
		}
	elseif ($data=='processBanner') {$process=new biness();$process->binessBanner();}
	elseif ($data=='processHtml') {
		$process=new process();
		$process->processHtml();
		}
}

class index{
	// public function publick(){
	// 	$result=$GLOBALS['result'];
	// 	$row=mysqli_fetch_assoc($result);
	// 	$banner_text=$row['banner_text'];
	// 	$img_arr=explode('',$banner_text);
	// }
	function indexBanner(){
		$result=$GLOBALS['result'];
		$row=mysqli_fetch_assoc($result);
		$banner_text=$row['banner_text'];
		
		// $img_arr=$GLOBALS['img_arr'];
		echo"<div id='IndexBannerImg'>
			<img src=images/indexBanner2.png>
			</div>";
	}
	function news(){
		$result=$GLOBALS['result'];
		echo "<div class='news'><h2 class='h2'>新闻热点:</h2><p>";
			while($row=mysqli_fetch_assoc($result)){
				$banner_text=$row['banner_text'];
				$img_arr=explode('#',$banner_text);
				echo "<span class='new' title=$img_arr[0]'>$img_arr[0]</span>/";
			}
		echo "</p></div>";
	}
	// 公司简介
	function brief(){
		echo "<div class='divBrief'><h2 class='h2 h2brief' >公司简介:</h2><i class='line h2brief'></i><p class='brief'>";
		$result=$GLOBALS['result'];
		$row=mysqli_fetch_assoc($result);
		$banner_text=$row['banner_text'];
		echo "$banner_text";
		echo "</p></div>";
	}
	function newProduct(){
		echo "<div class='newProduct'><h2 class='h2'>上架新品:</h2><i class='line'></i><ul>";
		$result=$GLOBALS['result'];
		$uname=$GLOBALS['uname'];
		$ugwc=$GLOBALS['ugwc'];
		
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];

			$img_arr=explode('#',$banner_text);
			echo "<li>
					<a  href='item.html?img_a=$img_arr[3]
						&img_b=$img_arr[4]
						&img_c=$img_arr[5]
						&img_d=$img_arr[6]
						&name=$img_arr[1]
						&cj=$img_arr[0]
						&price=$img_arr[2]
						&rongliang=$img_arr[7]
						&du=$img_arr[8]
						&uname=$uname
						&ugwc=$ugwc'>";	
					

			$name=$img_arr[1];
			if(strlen($name)>25){
				$nnn=substr($name,0,22);// substr(string,start,length)  截取字符串
				echo "<img src=$img_arr[3] alt=$img_arr[3] title=$img_arr[1] />
					<dt class='productName'> $nnn..</dt>";
			}else{echo "<img src=$img_arr[3] alt=$img_arr[3]/>
			<dt class='productName'>$name</dt>";}
					
			echo "<dt>
					<b>容量: $img_arr[7]</b> <b class='price'>￥$img_arr[2]元</b></dt></a>	
					
					<dt><button class='buyNow'>立即购买</button><button class='addGwc'>加入购物车</button></dt>
				</li>";	
		}
		echo " </ul><div>";	
	}
	function productBanner(){
		$result=$GLOBALS['result'];
		$row=mysqli_fetch_assoc($result);
		// echo "$row[banner_text]";
		echo "<img src=$row[banner_text]>";
	}
}

class contact{
	// contactBanner和留言信息+
	function contactBanner(){
		$result=$GLOBALS['result'];
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];
			$img_arr=explode('#',$banner_text);
			echo "<div class='companyBanner'>
						<img src='$img_arr[0]' alt='$img_arr[0]' class='companyImg'/>
						<div class='contact'>
							<img src='$img_arr[2]' alt='$img_arr[2]' />
							<dd>
								<span>在线留言</span>
								<h1>Online &nbsp; message</h1>
							</dd>				
							<p>留下您的意见，我们提供更好的服务!</p>				
							<h4 class='cell' >服务热线:$img_arr[1]</h4>
						</div>
				  </div>";
		}
	}
	function contactHtml(){
			echo "
			 	<div class='message'><h2 class='h2'>在线留言:</h2><i class='line'></i>
					<from class='companyFrom'>
						<p class='type'>
							<b>留言类型:</b>
							<span>
								<label for='typeMessage'><input type='radio' id='typeMessage' name='message' checked='checked'/>留言</label>
								
								<label for='typeConsultation'><input type='radio' id='typeConsultation' name='message'/>咨询</label>
								
								<label for='typeBuy'><input type='radio' id='typeBuy' name='message'/>求购</label>
								
								<label for='typeCustomer'><input type='radio' id='typeCustomer' name='message'/>售后</label>

								<label for='typeComplaint'><input type='radio' id='typeComplaint' name='message'/>投诉</label>
							</span>
						</p>
						<dl class='messageInput'>
							<dd>
							<label for='companyName'>公司名称:</label>
							<input type='text' id='companyName' placeholder='请输入你公司的名称'/>
							</dd><dd>
							<label for='contentName'>姓名:</label>
							<input type='text' id='contentName' placeholder='请输入你的姓名'/>
							</dd>
						</dl><dl class='messageInput'>
							<dd>
							<label for='phone'>手机:</label>
							<input type='text' id='phone' placeholder='请输入你的手机号'/>
							</dd><dd>
							<label for='uQQ'>QQ:</label>
							<input type='text' id='uQQ' placeholder='请输入你的QQ号'/>
							</dd>
						</dl><dl class='messageInput messageText' >
							<label for='content'>留言内容:</label>
							<textarea id='content' rows='10'placeholder='98%的代理商通过留言找到好项目，迈出了成功的第一步。'></textarea>	
						</dl>
					
						<p class='submit'>
							<input type='button' value='提交留言' id='submit'/>
							<input type='button' value='取　消' id='cancel'/>
						</p>
						<p id='successText'></p>
					</from>
			 	 </div><div class='ContactInformation'>
			 	 	<h2 class='h2'>联系方式:</h2><i class='line'></i>
			 	 	<h3>安徽双轮池酒业有限公司位置:</h3>
			 	 	<div class='mapPadding'>
						<div id='map' style='width:100%;height:300px;'>
							<script>
								var map = new BMap.Map('map');
								var point = new BMap.Point(116.3108788000,33.4688056800);
								map.centerAndZoom(point, 15);
								var marker = new BMap.Marker(point);  
								map.addOverlay(marker);               
								marker.setAnimation(BMAP_ANIMATION_BOUNCE); 		
							</script>
			 	 		</div>
			 	 	</div>
			 	 	<p class='information'><span>联系人：吴经理</span><span>Q Q:1972831463</span></p>
			 	 	<p class='information'><span>联系电话：0551-66013092</span><span>地址：安徽省亳州市涡阳县高炉酒厂</span></p>
			 	 </div>";
	}	
}

class biness{
	function binessBanner(){
		$result=$GLOBALS['result'];
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];
			echo "<img src='$banner_text' alt='$banner_text'>";
		}
	}
	function binessHtml(){
		$result=$GLOBALS['result'];
		echo "<div class='biness'>";
		
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];
			echo "$banner_text";
		}
		echo "</div>";
	}
	function binessNav(){
		$result=$GLOBALS['result'];
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];
			echo "$banner_text";
		}
	}
}
class process{
	function processHtml(){
		$result=$GLOBALS['result'];
		while ($row=mysqli_fetch_assoc($result)){
			$banner_text=$row['banner_text'];
			echo "<div class=processHtml> $banner_text </div>";
		}
		// echo "123";
	}
}