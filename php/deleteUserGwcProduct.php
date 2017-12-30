<?php
require('connect.php');
$data=$_POST['data'];
// echo "$data";
$arr=explode('#',"$data");
// echo count($arr);
// if(count($arr)<2){
// 	echo "$data";
// 	$sql="DELETE FROM ugou WHERE ptId='$data'";
// 	$result=mysqli_query($conn,$sql);
// 	if(!$result){echo "$sql";}
// 	else{echo "<td >删除完成！</td>";}
// }else{

// }
for($i=0;$i<count($arr);$i++){
	$dataPtId=$arr[$i];
	$sql="DELETE FROM ugou WHERE ptId='$dataPtId'";
	$result=mysqli_query($conn,$sql);
	if(!$result){echo "$sql";}
	// else{}
}
echo "<td >删除完成！</td>";




