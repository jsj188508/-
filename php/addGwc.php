<?php
require('connect.php');
//接受ajax传输的数据
$data=$_POST['data'];
$uname=$_POST['uname'];

// echo "$uname";
// echo "$data";
// 高炉家和谐年份5年#118#1#118
$arr=explode('#',"$data");					
// var_dump($arr);
$productName=$arr[0];
$cj=$arr[1];
$productImg=$arr[2];
$price=$arr[3];
$du=$arr[4];
$rongliang=$arr[5];
$num=$arr[6];
$sunPrice=$price*$num;

//$sql="INSERT INTO ugou VALUES(NULL,'$uname','$productName','$cj','$productImg','$price','$du','$rongliang','$num','')";
$sql="INSERT INTO ugou VALUES(NULL,'$uname','$productName','$cj','$productImg','$price','$du','$rongliang','$num','$sunPrice')";


$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql";}
else{
	$sql="SELECT * FROM ugou WHERE uname='$uname'";
	$selectResult=mysqli_query($conn,$sql);
	$nums=mysqli_num_rows($selectResult)-1;
	echo "我的购物车<b id=gwcNum>$nums</b>";
}