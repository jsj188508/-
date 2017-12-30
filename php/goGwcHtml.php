<?php
require('connect.php');

//接受ajax传输的数据
$uname=$_GET['uname'];


$sql="SELECT * FROM ugou where productName!=''&& uname='$uname'";
$result=mysqli_query($conn,$sql);
if(!$result){echo "语句错误";}
else{
	echo "<table id='gwcHtml' frame='box'>
	<caption>您已经来到 $uname 的购物车</caption>
		<thead>
			<th colspan=4>商品信息:</th>
			<th>单价</th>
			<th>数量</th>
			<th>金额</th>
			<th>操作</th>
		</thead>
	";

	while ($rows=mysqli_fetch_assoc($result)) {
		echo "
			<tr >
				<td>
					<dt><input type=checkbox class='selectCheck' id='gwcId$rows[ptId]'/></dt>
					<dt class='ptId'>$rows[ptId]</dt>
				</td>
				<td class='gwcHtmlImg'><img src=$rows[productImg] alt=$rows[productName] /></td>
				<td colspan=2>
					<dd>$rows[productName]</dd>
					<dd>厂家： $rows[cj]</dd>
					<dd>容量:$rows[rongliang]</dd>
					<dd>度数:$rows[du]</dd>
				</td>
				
				<td>￥<b>$rows[price]</b></td>
				<td>
					<button class=reduce></button>
					<input type='text' value=$rows[num] />
					<button class=add>+</button>
				</td>
				<td>￥<span class='sumPrice'>$rows[sumPrice]</span></td>
				<td><button class=productDelete title='删除'>×</button></td>
			</tr>";
	}
	echo "</table>
		<p id='gwcTableF'>
			<label for=selectAll>
				<input type='checkBox' id='selectAll'/>全选
			</label>
			<button id=deleteSelect>删除</button>
			<span>已经选择<b id=selectNum>0</b>件商品</span>
			
			<b class=gwcRight><label for='Delivery'>
			<input type=checkbox id='Delivery'/>货到付款</label>
			合计(不含运费):<span>￥<b id='Total'>0.00</b></span>
			<u id='Settlement'>结算</u></b>
		</p>
		
	";
	
}
