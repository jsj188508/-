<?php
require('connect.php');

$search=$_GET['data'];
// echo "$search";
$uname=$_GET['uname'];
$ugwc=$_GET['ugwc'];


$sql="SELECT * FROM product WHERE (name LIKE '%$search%') or(chuchang LIKE '%$search%') 
	ORDER BY price ";
$result=mysqli_query($conn,$sql);
if(!$result){echo "执行失败！可是是 $sql 语法错误";}
else{
	// var_dump($result);
	echo "<div class='newProduct'><ul class='searchProduct'>";
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
					&ugwc=$ugwc'>
				<img src=$row[pic_A]>
					<dt ><b class='productName'>$row[name]</b></dt>
					<dt>容量:$row[rongliang] <b class='price'>￥$row[price] 元</b>
					</dt></a>
					<dt><button class='buyNow'>立即购买</button><button class='addGwc'>加入购物车</button></dt>
			 </li>";
	}	if($row=mysqli_fetch_assoc($result)){echo "<tr> <td>你搜索的数据不存在，建议你搜索酒类的关键字</td></tr>";}
	echo "</ul></div>";
}