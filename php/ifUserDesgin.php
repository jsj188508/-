<?php
require('connect.php');
//接受ajax传输的数据
$uname=$_GET['data'];
// echo "$uname";
$gwcProductName=$_GET['gwcProductName'];
$Productnumber=$_GET['Productnumber'];
$position=$_GET['position'];

// 在user表中查询用户名是否被注册过
$sql="SELECT * FROM user WHERE uname='$uname'";
// $sql="SELECT uphone,city,actualName,uname FROM user WHERE uname='$uname'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "$sql 语法错误";}
// 只要为空表示可以注册
else{
	$row=mysqli_fetch_assoc($result);
	if($row['uphone']==''){echo "";}
	else{
		echo "<div id='userInformat'>
				<h1 >收货信息</h1>	
				<p id='cit'>收货地址:$row[city]</p>
				<p id='cit'>收货用户:$row[uname]</p>
				<p id='cit'>收货人实名:$row[actualName]</p>
				<p id='cit'>收货人手机:$row[uphone]</p>
				</div>
				<table id='Order'>
					<caption>订单信息</caption>
					<tr>
						<th colspan=2>商品信息</th>
						<th>单价</th>
						<th>数量</th>
						<th>小计</th>
					</tr>";
		
		// echo "$gwcProductName";
		// echo "$position";			
		if($position=='Settlement'){

			$ProductArr=explode('#',$gwcProductName);
			$ProductnumberArr=explode('#',$Productnumber);

			// var_dump("$gwcProductName");
			// var_dump("$ProductnumberArr[0]");
			// var_dump("$ProductArr[0]");


			for($i=0;$i<count($ProductArr)-1;$i++){
				$productName=$ProductArr[$i];
				
				$sql="SELECT * FROM product WHERE name='$productName'";

				$sResult=mysqli_query($conn,$sql);
				if(!$sResult){echo "$sql";}
				else{
					$rows=mysqli_fetch_assoc($sResult);
					// var_dump($rows);
					$sum=$rows['price'] * $ProductnumberArr[$i];

					echo "
						<tr>
							<td class=OrderImg><img src='$rows[pic_A]' alt='$rows[pic_A]' /></td>
							<td>
								<dd>$rows[name]</dd>
								<dd>$rows[chuchang]</dd>
								<dd>$rows[rongliang]</dd>
								<dd>$rows[du]</dd>
							</td>
							<td>$rows[price]</td>
							<td>$ProductnumberArr[$i]</td>
							<td> $sum </td>
						</tr>
					";
				}
			}
		}
		else if($position=='buyNow'){
			// var_dump($gwcProductName);
			$sql="SELECT * FROM product WHERE name='$gwcProductName'";
			$sResult=mysqli_query($conn,$sql);
			if(!$sResult){echo "$sql";}
			else{
				$rows=mysqli_fetch_assoc($sResult);
				// echo "$sql";
				// echo "<hr>";
				// var_dump($rows);
				$sum=$rows['price'] * $Productnumber;
				echo "
					<tr>
						<td class=OrderImg><img src='$rows[pic_A]' alt='$rows[pic_A]' /></td>
						<td>
							<dd>$rows[name]</dd>
							<dd>$rows[chuchang]</dd>
							<dd>$rows[rongliang]</dd>
							<dd>$rows[du]</dd>
						</td>
						<td>$rows[price]</td>
						<td>$Productnumber</td>
						<td> $sum </td>
					</tr>
				";
			}
		}

		echo "</table>";
		echo "<div id='OrderDelivery'>
				<button id=Delivery>提交订单</button>
		</div>";
	}

}
