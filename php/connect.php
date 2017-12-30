<?php
// 设置php共有的头部传输格（json）式以及编码方式utf-8
header("Content-Type:application/json;charset=utf-8");
// header("Content-Type:text/html;charset=utf-8");
// header("Content-Type:text/xml;charset=utf-8");
// header("Content-Type:application/javascript;charset=utf-8");

// 链接计算机服务器
$conn=mysqli_connect('127.0.0.1','root','','gaoLuHome',3306);
// 设置库的编码方式
$sql="SET NAMES utf8";
// 链接数据库和服务器
mysqli_query($conn,$sql);
