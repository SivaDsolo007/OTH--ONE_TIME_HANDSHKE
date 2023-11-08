
<?php
session_start();
// $db=mysqli_connect("localhost:3306","jkmmartc_codehunters","Vetri007","jkmmartc_codehunt_codehunters");
$db=mysqli_connect("localhost","root","","mysite");
if ($db){
  echo "Success DB";
} else echo "Failed DB";
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
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  

  
  
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
<br><br>
<?php
    if(isset($_SESSION['message']))
    {
         echo "<div id='error_msg'>".$_SESSION['message']."</div>";
         unset($_SESSION['message']);
    }
?>
<div class="form-group col-lg-2 mx-auto mb-0">
    <a href="index.php" class="btn btn-primary btn-block py-2">
                            <span class="font-weight-bold">Logout</span> </a>
                        
                    </div>



<!-- <script type="text/javascript">
alert(swal("Good job!", "You clicked the button!", "success"));	
</script> -->

<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->

</body>
</html>