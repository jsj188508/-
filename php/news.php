<?php
require('connect.php');
$newTitle=$_GET['data'];
$sql="SELECT newsTex FROM news WHERE newsTitle LIKE '%$newTitle%'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
echo "<h2 class=title>$newTitle</h2>";
$t=date('Y/m/d',time());
echo "<p class='time'>$t</p>";

echo ($row['newsTex']);