<?php
session_start();
$email= $_SESSION['email'];
//$db=mysqli_connect("localhost","root","","mysite");
$db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");
$insert="UPDATE users SET status=0 WHERE email ='$email' ";
$query = mysqli_query($db,$insert);
session_destroy();

unset($_SESSION['username']);
$_SESSION['message']="You are now logged out";


header("location:index.php");
?>