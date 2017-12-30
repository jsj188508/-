<?php
header("Content-Type: application/x-www-form-urlencoded");
// 使用$_POST接受AJAX的post请求传回的参数
// 使用$_GET接受AJAX的get请求传回的参数
$sj=$_POST;
// $sj=$_GET;
$n=$sj['name'];
$a=$sj['age'];
$p=$sj['phone'];

//使用php var_dump或echo函数能够输出到HTML制定的页面元素中，可以先在前端AJAX找到指定的元素，设内容为data
var_dump($n);
$conn=mysqli_connect('127.0.0.1','root','','ajax',3306);
$sql="SERT NAMES UTF8";
mysqli_query($conn,$sql);
$sql="INSERT INTO yuangong VALUES(null,'$n','$a','$p')";
$result=mysqli_query($conn,$sql);
if(!$result){echo "执行失败！可是是$sql语法错误";}

