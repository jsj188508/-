<?php
header("Content-Type: application/x-www-form-urlencoded");
// header("Content-Type:text/plain;charset=utf-8");

$search=$_GET;
var_dump($search);
$te=$search['t'];
// echo "$te";

$conn=mysqli_connect("127.0.0.1","root","","ajax",'3306');
$sql="set names utf8";
mysqli_query($conn,$sql);
$sql="SELECT * FROM yuangong WHERE name='$te'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "执行失败！可是是 $sql 语法错误";}
else{
	// var_dump($result);
	echo "<table border='1px;'>";
	while ($row=mysqli_fetch_assoc($result)) {
		echo "<tr> <td>$row[name]</td><td>$row[age]</td><td>$row[phone]</td>";
	}
	echo "</table>";
}