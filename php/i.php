<?php
require('connect.php');

// 查询数据库中有多少条数据
$data_="SELECT productId FROM product";
$result=mysqli_query($conn,$data_);
if(!$result){echo "执行失败 $sql";}
else{
	// echo "执行success";
	// 获取结果集中有多少条数据
	$len=mysqli_num_rows($result);
	// echo "$len";

// 	//做分页处理
	$len=intval($len/7+1);
	echo "<div id='i'>
		<button id='shang' class='i_btn'>上一页</button><span>";
	for($i=1;$i<$len;$i++){echo "<b class='index'>$i</b>";}
	echo "<b class='index'>$len</b></span><button id='xia' class='i_btn'>下一页</button>
		<b >共<u style='color:#e3493c'>$len</u>页</b>
		</div>";
}


