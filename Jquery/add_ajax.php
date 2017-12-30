<?php
header("Content-Type: application/x-www-form-urlencoded");
// header("Content-Type:text/plain;charset=utf-8");
// $n=$_REQUEST['uname'];
// $a=$_REQUEST['uage'];
// $p=$_REQUEST['uphone'];
// $n=$_GET['name'];
// $a=$_GET['phone'];
// $p=$_GET['age'];

// $input = file_get_contents("php://input"); //接收POST数据
// $xml = simplexml_load_string($input); //提取POST数据为simplexml对象
// var_dump($xml);

$n=$_GET['uname'];
$a=$_GET['uage'];
$p=$_GET['uphone'];
// $n=$_FROM['name'];
// $a=$_FROM['age'];
// $p=$_FROM['phone'];
var_dump($n);
$conn=mysqli_connect("127.0.0.1","root","","ajax",'3306');
$sql="set names utf8";
mysqli_query($conn,$sql);
$sql="INSERT INTO yuangong VALUES(NULL,'$n','$a','$p')";
$result=mysqli_query($conn,$sql);
if(!$result){echo "执行失败！可是是$sql语法错误";}
// else{echo "123";}
