<?php
require('connect.php');
$data=$_POST['data'];
	// echo "$data";
$arr=explode('#', "$data");

$oldPwd=$arr[0];
$newPwd=$arr[1];
$phone=$arr[2];
$actualName=$arr[3];
$city=$arr[4];
// var_dump($arr);
$sql="UPDATE user SET upwd='$newPwd',actualName='$actualName',uphone='$phone',city='$city' WHERE upwd='$oldPwd'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql";}
else{
	// $row=mysqli_fetch_assoc($result);
	echo "设置完成！";
}


