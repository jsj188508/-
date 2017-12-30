<?php
require('connect.php');
$sql="SELECT DISTINCT city FROM freight_city";
$reslut=mysqli_query($conn,$sql);
// if(!$reslut){echo "$sql 错误";}
// else{echo "success";}
// $n=0;
// while($row=mysqli_fetch_assoc($reslut) && $n<4){
// 	$n++;
// 	echo "<a id=city$row[city_id]>$row[city]</a>";
	
// }

function cit($a,$b){
	for($n=$a;$n<$b;$n++){
		$row=mysqli_fetch_assoc($GLOBALS['reslut']);
		echo "<span><u>$row[city]</u><b class='Arrow' style='display:none;'>▲</b></span>";
	}
}
echo "<p class='cits'>";
	cit(0,4);
echo "</p><p class='province'>";
	cit(4,10);
echo "<b class='cits'>123</b></p><p class='province'>";
	cit(10,17);
echo "<b class='cits'>123</b></p><p class='province'>";
	cit(17,24);
echo "<b class='cits'>123</b></p><p class='province'>";
	cit(24,35);
echo "<b class='cits'>123</b></p><p class='province'>";
	// cit(28,35);
echo "<b class='cits'>123</b></p>";


