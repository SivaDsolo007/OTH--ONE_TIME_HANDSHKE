<?php
error_reporting(E_ALL ^ E_WARNING); 
session_start();
// if(  isset($_SESSION['username']) )
// {
//   header("location:home.php");
//   die();
// }
// $_SESSION['email'];
//connect to database
// $db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");
$db=mysqli_connect("localhost","root","","mysite");
if($db)
{
  
  if(isset($_POST['login_btn']))
  {
    //   $email=mysqli_real_escape_string($db,$_POST['email']);
    $phone=mysqli_real_escape_string($db,$_POST['phone']);
      $password=mysqli_real_escape_string($db,$_POST['password']);
    //   $aadhar=mysqli_real_escape_string($db,$_POST['aadhar']);
    //   $phone=mysqli_real_escape_string($db,$_POST['phone']);
      
      // $password=md5($password); //Remember we hashed password before storing last time
  // function login($db,$email,$password,$aadhar,$phone){
      $sql="SELECT * FROM user WHERE  phone='$phone' AND password='$password' ";
      $result=mysqli_query($db,$sql); 
      if($result)
      {
        
        if( mysqli_num_rows($result)>0)
        {
          
            $_SESSION['message']="You are now Loggged In";
             $_SESSION['phone']=$phone;
            $var3=$_POST['phone'];
            date_default_timezone_set('Asia/Kolkata');
            $timestamp = time();
            $formatted = date('y-m-d h:i:s a', $timestamp);
            // echo $formatted;
        
            $sql1 =  "UPDATE user SET Time='$formatted' WHERE phone='$var3'";
            if($db->query($sql1) === true){
            //     echo "Records inserted successfully.";
            $x="*454#";
            } 
       
        }
       else
       {
              $_SESSION['message']="Phone and Password combination incorrect";
       }
      }
            // echo nl2br("\n\n\n\n".$code );
            // echo nl2br($output ."\n\n\n\n");
     
}
 } else echo "DB Failed";
?>





<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="main.css">
    <script type="text/javascript" src="main.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <title></title>
    
</head>
<body>


<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
            <!-- Navbar Brand -->
            <a href="#" class="navbar-brand">
                <img src="im/aadhaar-logo2.png" alt="logo" width="250">
            </a>
        </div>
    </nav>
    
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" height="350" src="im/Har-Ghar-Tiranga_Banner.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" height="350" src="im/Bhuvan-APP_-banner.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" height="350" src="im/myAadhaarBanner.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</header>
<br>


<h2 class="text-center">LOG IN FORM</h2> <br>
<div class="container">
    <div class="row py-2 mt-1 align-items-center">      
        
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <H1 class="text-center" >
                <?php echo $x;?> 
            </H1>
            <br>
            <h3 class="text-center">CALL THE USSD</h3><br>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            <form action="index.php" method="post">
                <div class="row">

                    <!-- Email Address -->
                    <!-- <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-envelope text-muted"></i>
                            </span>
                        </div>
                        <input id="email" type="email" name="email" placeholder="Email Address" class="form-control bg-white border-left-0 border-md"required>
                    </div> -->

                    <!-- Phone Number -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-phone-square text-muted"></i>
                            </span>
                        </div>
                      
                        <input id="phoneNumber" type="tel" name="phone" maxlength="14" placeholder="Phone Number" class="form-control bg-white border-md border-left-0 pl-3">
                    </div>
                    <!-- <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-id-card"></i>
                            </span>
                        </div>
                      
                        <input  type="text" name="aadhar" placeholder="aadhar Number" minlength="11" maxlength="12" class="form-control bg-white border-md border-left-0 pl-3">
                    </div> -->
                     <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                               <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                      
                        <input id="password" type="password"  name="password" placeholder="Password"  minlength="8"class="form-control bg-white border-md border-left-0 pl-3">
                    </div>.


                    <!-- Submit Button -->
                    <div class="form-group col-lg-12 mx-auto mb-0">
                            <button   style="background-color: blue; border: none; color: white; padding: 10px; border-radius: 5px; "  class="font-weight-bold px-10" name="login_btn" type="submit" >LOGIN</button>
                            <a href="home.php"> <button style="background-color: blue; border: none; color: white; padding: 10px; border-radius: 5px;"  type="button" class="font-weight-bold"   onclick="fetchdata()">AUTHENTICATE</button></a>
                        
                            <!--<button  class="font-weight-bold" name="login_btn" type="submit" >Login</button> -->
                    
                    </div>

                    <!-- Divider Text -->
                    

                    <!-- Already Registered -->
                <!--     <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Already Registered? <a href="#" class="text-primary ml-2">Login</a></p>
                    </div> -->

                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="ajax-script.js"></script> -->
<script>


function fetchdata(){
      $.ajax({    
        type: "GET",
        url: "backend-script.php",             
        dataType: "html",                  
        success: function(data){                    
            $("#table-container").html(data); 
            if (data==1) {
                location.href = "home.php"; 
            }     
        }
    });
}
alert($("#table-container").html(data));
</script>
</body>
</html>