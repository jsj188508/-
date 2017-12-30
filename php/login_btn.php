<?php
require('connect.php');

//接受ajax传输的数据
$name=$_GET['uname'];
$pwd=$_GET['upwd'];
// echo "$name";


$sql="SELECT upwd FROM user where uname='$name'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "语句错误";}
else{
	$row=mysqli_fetch_assoc($result);
	// echo "$row[upwd]";
	if($row['upwd']!=$pwd){echo "你的密码输入错误<b>&times;</b>";}
	else{
			// echo "$name 登录成功";

			// 在用户登录成功后查看用户购物车内的数据量
			$n="SELECT * FROM ugou where uname='$name'";
			$nn=mysqli_query($conn,$n);
			if(!$nn){echo "$n 登录失败";}
			else{
				$num=mysqli_num_rows($nn)-1;//在添加用户购物车表时添加了一行用户购物车的标识行；所以减1
				echo "$num";
			}

	}
}
