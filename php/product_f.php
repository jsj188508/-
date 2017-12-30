<?php
require('connect.php');

$uname=$_GET['uname'];//接受ajax请求发送的数据
$ugwc=$_GET['ugwc'];//接受ajax请求发送的数据
// // echo "$sj";

//第P页
$page=$_GET['data'];//接受ajax请求发送的数据
// var_dump($page);
// 一页有多少条数据

$n=8;
//m为当前页的所有数据
$m=($page-1)*$n;
// var_dump($m);
// limit是用于分页显示使用的
$sql="SELECT * FROM product limit $m,$n";
// $sql="SELECT * FROM product ";
$result=mysqli_query($conn,$sql);
if(!$result){echo "执行失败 $sql";}
else{
	echo "<div class=newProduct><ul>";
	while($row=mysqli_fetch_assoc($result)){
		echo "<li>
				<a href='item.html?
					img_a=$row[pic_A]
					&img_b=$row[pic_B]
					&img_c=$row[pic_C]
					&img_d=$row[pic_D]
					&name=$row[name]
					&cj=$row[chuchang]
					&price=$row[price]
					&rongliang=$row[rongliang]
					&du=$row[du]
					&uname=$uname
					&ugwc=$ugwc ' >
				";

			$name=$row['name'];
			if(strlen($name)>25){
				$nnn=substr($name,0,22);// substr(string,start,length)  截取字符串
				echo "<img src=$row[pic_A] title=$name >
				<dt class='productName'> $nnn..</dt>";
			}else{echo "<img src=$row[pic_A]>
			<dt class='productName'>$name</dt>";}

					
				echo "<dt>容量:$row[rongliang] <b class='price'>￥$row[price] 元</b>
					</dt></a>
					<dt><button class='buyNow'>立即购买</button><button class='addGwc'>加入购物车</button></dt>
			 </li>";
	}
	echo '</ul></div>';
}
