<?php
error_reporting(E_ALL ^ E_WARNING); 
session_start();
$phone= $_SESSION['phone'];
// include("database.php");
// $var1=$_SESSION['Transfer'] ;
$db=mysqli_connect("localhost","root","","mysite");
// $db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");

$sql1 =  "UPDATE user SET status=1 WHERE phone='$phone'";
echo $sts;
// echo $a;
// $email= $_SESSION['email'];
// echo $email;
// 
?>
