﻿<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "Kari_1412";
$dbname = "uni_health_db";
$tbl_name="users"; // Table name

// Connect to server and select databse.
$conn= new mysqli($servername, $username, $password, $dbname);
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$pass = stripslashes($pass);
$uname = stripslashes($uname);
$sql="SELECT * FROM $tbl_name WHERE username='$uname' AND password='$pass'";
$result = $conn->query($sql);
if (!$result)
{
	echo "Invalid Login";
}
else
{
while ($row = $result->fetch_assoc()){
	$_SESSION['auth']='YES';
	$_SESSION['uname']=$uname;
	header("location:success.php");
}
}
$conn->close();
?>