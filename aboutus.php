<?php
session_start();
?>

<html>

  <head>
    <title> About | Toby's Lane </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/aboutus.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  

  <body>

  
    
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Toby's Lane</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li class="active"><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Foods </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart 
            (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
            </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {
  ?>
<?php
}
?>

        </div>

      </div>
    </nav>

    <main>
    <style>
        .profile-card {
            width: 700px;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        .profile-card h1 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        
        .profile-card p {
            font-size: 16px;
            line-height: 1.6;
            color: #666;
        }
    </style>

<div class="profile-card">
    <h1>About Toby's Lane Coffee Shop</h1>
    <p>Welcome to Toby's Lane Coffee Shop! We're dedicated to serving the finest coffee and creating a cozy ambiance for our customers.</p>

    <p>At Toby's Lane, we take pride in brewing premium coffee blends sourced from sustainable and ethical farms worldwide. Our baristas are trained experts, ensuring each cup is crafted to perfection.</p>

    <p>Our journey started with a passion for providing a space where coffee enthusiasts and casual drinkers alike can savor a delightful cup of coffee. The aroma and taste experience we offer aim to elevate your coffee ritual.</p>

    <p>What sets Toby's Lane apart is our commitment to community. We support local growers and initiatives, giving back to the neighborhoods we serve.</p>

    <p>Whether you're seeking a robust espresso or a soothing latte, Toby's Lane Coffee Shop promises an exceptional coffee experience in a welcoming atmosphere.</p>

    <p>Thank you for joining us on this journey of coffee exploration!</p>
</div>
    
        

    
    </div>
    <footer class="footer">
        <div class="container">
            <div class="bottom-footer">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <div class="map-container">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1628.0022884679618!2d121.17514318477787!3d13.95480628226506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd6b0b1333b7d9%3A0xd490c7123a167297!2sToby&#39;s%20Lane!5e0!3m2!1sen!2sph!4v1701790906978!5m2!1sen!2sph"
                                frameborder="0" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="address color-white">
                            <h4>Contact Information</h4>
                            <p><i class="fa-solid fa-location-dot"></i> Lipa City, Philippines, 4217</p>
                            <p><i class="icon fa fa-phone"></i> 0956 946 0588</p>
                            <p><i class="icon fa fa-envelope"></i> tobyslaneph@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <style>
        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
        }

        .bottom-footer {
            text-align: center;
        }

        .map-container {
            width: 100%;
            max-width: 500px; /* Adjust the maximum width as needed */
            margin: 20px auto;
        }

        /* Style for the iframe */
        .map-container iframe {
            width: 100%;
            height: 200px; /* Adjust the height as needed */
            border: 0;
        }
    </style>
    </footer>
    
         </body>
</html>


