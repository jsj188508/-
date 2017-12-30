<?php
require('connect.php');
$data=$_GET['data'];
// $data=$_GET['data'];
// echo "$data";
$sql="SELECT counts FROM county WHERE city='$data'";
$result=mysqli_query($conn,$sql);
if(!$result){
	echo "$sql 语句错误";
}else{
	$row=mysqli_fetch_assoc($result);
	if($row==null){echo "快递达不到目的地";}

	
	$counts=$row['counts'];
	// echo "$counts";
	$counts_arr=explode('#',$counts);
	// echo "$counts_arr[0]";
	for($i=0;$i<count($counts_arr);$i++){
		echo "<u> $counts_arr[$i] </u>";
	}
}
