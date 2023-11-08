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
$db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");
// $db=mysqli_connect("localhost","root","","mysite");
if($db)
{
  
  if(isset($_POST['login_btn']))
  {
      $email=mysqli_real_escape_string($db,$_POST['email']);
      $password=mysqli_real_escape_string($db,$_POST['password']);
      $aadhar=mysqli_real_escape_string($db,$_POST['aadhar']);
      $phone=mysqli_real_escape_string($db,$_POST['phone']);
      
      // $password=md5($password); //Remember we hashed password before storing last time
  // function login($db,$email,$password,$aadhar,$phone){
      $sql="SELECT * FROM users WHERE  email='$email' AND password='$password' ";
      $result=mysqli_query($db,$sql); 
      if($result)

      {
        
        if( mysqli_num_rows($result)>0)
        {
          
            $_SESSION['message']="You are now Loggged In";
             $_SESSION['username']=$email; //needtocheck
            // header("location:home.php");
            $_SESSION['email'] = $email;
            
            $var1=$_POST['email'];
            $var2=$_POST['aadhar'];
            $var3=$_POST['phone'];
          
            // echo substr($var2,4,4) . substr($var1,0,4). substr($var3,6,4);
          
            $code = substr($var2,4,4) . substr($var1,0,4). substr($var3,6,4);
            $cipher_method = "AES-256-CBC";
            $edata = false;
          
            //SECRET KEY GENERATION STAGE 1
            $secret_key_1=bin2hex(openssl_random_pseudo_bytes(32));
            $key1 = hash( 'sha256', $secret_key_1 );
          
             // INITIALIZATION VECTOR GENERATION STAGE 1
            $secret_iv_1 = base64_encode(bin2hex(openssl_random_pseudo_bytes(16)));
            $iv_size_1 = openssl_cipher_iv_length($cipher_method);
            $iv1 = substr( hash( 'sha256', $secret_iv_1 ), 0, 16 );
          
            //ENCRYPTION STAGE 1
            $edata = base64_encode( openssl_encrypt( $code, $cipher_method, $key1, 0, $iv1 ) );
          
            $output = false;
            $encrypt_method = "AES-256-CBC";
          
            // INITIALIZATION VECTOR GENERATION STAGE 2
            $iv_size_2 = openssl_cipher_iv_length( $encrypt_method);
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#%^&*():{}[]<>,.?/';
            $charactersLength = strlen($characters);
            $secret_iv_2 = '';
            for ($i = 0; $i < $iv_size_2; $i++) {
                $secret_iv_2 .= $characters[rand(0, $charactersLength - 1)];
            }
            $iv2 = substr( hash( 'sha256', $secret_iv_2 ), 0, 16 );
          
            //SECRET KEY GENERATION STAGE 2
            function secure_random_key($length) {
                $random_key = '';
                for($i = 0; $i < $length; $i++) {
                    $number = random_int(0, 36);
                    $character = base_convert($number, 10, 36);
                    $random_key .= $character;
                } 
                return $random_key;
            }           
            $secret_key_2 = secure_random_key(32);
            $key2 = hash( 'sha256', $secret_key_2 );
            
          
            //ENCRYPTION STAGE 2
            $output = base64_encode( openssl_encrypt( $edata, $encrypt_method, $key2, 0, $iv2 ) );
            
            $x = "<img class='rounded mx-auto d-block' class='img-fluid' src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=$output&choe=UTF-8'>";
            //QR

            // echo $x;
             
            // Attempt insert query execution
           
              $sql1 =  "UPDATE users SET key1='$secret_key_1',iv1='$secret_iv_1',key2='$secret_key_2',iv2='$secret_iv_2' WHERE email='$var1'";
              if($db->query($sql1) === true){
                  echo "Records inserted successfully.";
              } else{
                  echo "ERROR: Could not able to execute $sql1. " . $db->error;
              }
          
        }
       else
       {
              $_SESSION['message']="Username and Password combiation incorrect";
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


<h2 class="text-center">Log In Form</h2>
<div class="container">
    <div class="row py-2 mt-1 align-items-center">      
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <!-- <img src="" alt="" > -->
            <div >
                <?php echo $x;?> 
            </div>
           
            <h1 class="text-center">Scan the QR Code</h1><br>
          <!--  <p class="text-justify">End-to-end encryption is a method of secure communication that prevents third parties from accessing data while it's transferred from one end system or device to another.</p>
            <p class="font-italic text-muted">Snippet By <a href="https://bootstrapious.com" class="text-muted">
                <u>Bootstrapious</u></a>
            </p> -->
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            <form action="index.php" method="post">
                <div class="row">

                    <!-- Email Address -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-envelope text-muted"></i>
                            </span>
                        </div>
                        <input id="email" type="email" name="email" placeholder="Email Address" class="form-control bg-white border-left-0 border-md"required>
                    </div>

                    <!-- Phone Number -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-phone-square text-muted"></i>
                            </span>
                        </div>
                      
                        <input id="phoneNumber" type="tel" name="phone" maxlength="14" placeholder="Phone Number" class="form-control bg-white border-md border-left-0 pl-3">
                    </div>
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-id-card"></i>
                            </span>
                        </div>
                      
                        <input  type="text" name="aadhar" placeholder="aadhar Number" minlength="11" maxlength="12" class="form-control bg-white border-md border-left-0 pl-3">
                    </div>
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
                        	<button   style="background-color: blue; border: none; color: white; padding: 10px; border-radius: 5px;"  class="font-weight-bold" name="login_btn" type="submit" >Login</button>
						
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
<script type="text/javascript" src="ajax-script.js"></script>
</body>
</html>