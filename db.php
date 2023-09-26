<?php
$host = "localhost";
$username = "root";
$password = "000000";
$database = "music";

$conn = mysqli_connect($host, $username, $password, $database);

if (!$conn) {
    die("数据库连接失败: " . mysqli_connect_error());
}
?>
