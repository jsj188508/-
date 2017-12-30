<?php
require('connect.php');
$data=$_POST['data'];
// typeMessage#/jsj228#/#jsj228#dddddddddd
$data=explode('#',$data);
$messageType=$data[0];
$messageName=$data[1];
$messageContact=$data[2];
$messageText=$data[3];
// var_Dump($data);
$sql="INSERT INTO message VALUES(null,'$messageType','$messageName','$messageContact','$messageText')";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql";}
else{echo "留言成功";}