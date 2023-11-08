<?php
error_reporting(E_ALL ^ E_WARNING); 
session_start();
$email= $_SESSION['email'];
// include("database.php");
// $var1=$_SESSION['Transfer'] ;
// $db=mysqli_connect("localhost","root","","mysite");
$db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");
$query = "SELECT * from users WHERE email='$email'";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
$row = mysqli_fetch_row($result);
// $a= $_GET["email"];
$sts = $row["6"];
echo $sts;
// echo $a;
// $email= $_SESSION['email'];
// echo $email;
// 
?>
