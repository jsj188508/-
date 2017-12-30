<?php
require('connect.php');
$data=$_GET['data'];
	// echo "$data";
$sql="SELECT upwd FROM user WHERE uname='$data'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql";}
else{
	$row=mysqli_fetch_assoc($result);
	echo "$row[upwd]";
}


