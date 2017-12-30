<?php

require('connect.php');
//接受ajax传输的数据
$uname=$_POST['name'];
$pwd=$_POST['pwd'];

$sql="INSERT INTO user VALUES(null,'$uname','$pwd','','','')";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql 语法错误";}
else{
	echo "注册成功！";
}

// 给注册的用户添加购物车
$gwc="INSERT INTO ugou VALUES(null,'$uname','','','','','','','','')";
$result=mysqli_query($conn,$gwc);
if(!$result){echo "$gwc 语法错误";}
else{echo "购物车添加成功";}