<?php
require('connect.php');
$data=$_GET['data'];
// echo "$data";
$sql="SELECT cits FROM freight_city WHERE city='$data'";
$result=mysqli_query($conn,$sql);
if(!$result){
	echo "$sql";
}else{
	$row=mysqli_fetch_assoc($result);
	$cits=$row['cits'];
	// echo "$cits";
	$cits_arr=explode('市',$cits);
	// echo "$cits_arr[0]";
	for($i=0;$i<count($cits_arr);$i++){
		echo "<u>$cits_arr[$i]</u>";
	}
}
