<?php
require('connect.php');

//接受ajax传输的数据
$uname=$_GET['uname'];
// echo "$uname";
// 在user表中查询用户名是否被注册过
$sql="SELECT uname upwd FROM user WHERE uname='$uname'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql 语法错误";}
// 只要为空表示可以注册
else{
	$ln=mysqli_num_rows($result);
	if($ln==0){echo "该用户还没有被注册  <b>&times;</b>";}
	else{echo "<b style='color:#00ea27'>√</b>";}
}
