<!DOCTYPE html>
<?php include_once 'admin/db.class.php'; ?>

<html lang="en">
<head>
<!-- META SECTION -->
<title>Lullaby</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- END META SECTION -->

<link rel="stylesheet" type="text/css" href="css/styles.css"/>
</head>
<body>
<!-- page container -->
<div class="page-container">
<?php include_once 'menu.php';?>
<!-- page content -->
<div class="page-content">
<!-- page content wrapper -->

<!-- page content wrapper -->

<div class="page-content-wrap bg-img-2 light-elements">

    <div class="row" style="text-align: center;margin-top: 9%">
<p class="lead">CHILD CARE SOFTWARE THAT MAKES LIFE EASIER</p>
<h1>Pricing to fit your child care center</h1>
    </div>
<!-- page content holder -->
<div class="page-content-holder padding-v-30">

<div class="row col-lg-offset-2">
<div class="col-md-4">

<div class="pricing-block">
<div class="pb-block">
<h3>Less than 50 Children</h3>
</div>
<div class="pb-price">
<span>$</span> 59 <span>/ per month</span>
</div>
<div class="pb-block">
<p><span class="fa fa-check"></span> $150 setup and training fee</p>

<p><span class="fa fa-check"></span> No contact</p>
<p><span class="fa fa-check"></span>Automated backup of all your data</p>
<p><span class="fa fa-check"></span>Unlimited customer support </p>
<p><span class="fa fa-check"></span>Lifetime upgrades and new features </p>
</div>
<div class="pb-block">
  <?php
  if(isset($_SESSION['uname']) || isset($_SESSION['pswd'])){ ?>
    <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Buy Now</button></a> <span>30 Day Free Trial</span>
    <?php  }else{ ?>
  <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Sign Up</button></a> <span>30 Day Free Trial</span>
  <?php } ?>

</div>
</div>

</div>
<div class="col-md-4">

<div class="pricing-block active">
<div class="pb-block">
<h3>More than 50 Children</h3>
</div>
<div class="pb-price">
<span>$</span> 99 <span>/ per month</span>
</div>
<div class="pb-block">
<p><span class="fa fa-check"></span> $150 setup and training fee</p>

<p><span class="fa fa-check"></span> No contact</p>
<p><span class="fa fa-check"></span>Automated backup of all your data</p>
<p><span class="fa fa-check"></span>Unlimited customer support </p>
<p><span class="fa fa-check"></span>Lifetime upgrades and new features </p>

</div>
<div class="pb-block">
  <?php
  if(isset($_SESSION['uname']) || isset($_SESSION['pswd'])){ ?>
    <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Buy Now</button></a> <span>30 Day Free Trial</span>
    <?php  }else{ ?>
  <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Sign Up</button></a> <span>30 Day Free Trial</span>
  <?php } ?>

</div>
</div>

</div>
<div class="col-md-4">

<div class="pricing-block">
<div class="pb-block">
<h3>Home Daycares</h3>
</div>
<div class="pb-price">
<span> $ </span>29 <span>/ per month</span>
</div>
<div class="pb-block">
<p><span class="fa fa-check"></span> $150 setup and training fee</p>

<p><span class="fa fa-check"></span> No contact</p>
<p><span class="fa fa-check"></span>Automated backup of all your data</p>
<p><span class="fa fa-check"></span>Unlimited customer support </p>
<p><span class="fa fa-check"></span>Lifetime upgrades and new features </p>

</div>
<div class="pb-block">
  <?php
  if(isset($_SESSION['uname']) || isset($_SESSION['pswd'])){ ?>
    <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Buy Now</button></a> <span>30 Day Free Trial</span>
    <?php  }else{ ?>
  <a href="#signup"><button class="btn btn-primary col-lg-offset-3">Sign Up</button></a> <span>30 Day Free Trial</span>
  <?php } ?>
</div>
</div>

</div>
</div>

</div>
<!-- ./page content holder -->
</div>
<!-- ./page content wrapper -->
   <!-- page content wrapper -->
                <div class="page-content-wrap">
                    <!-- page content holder -->
                    <div class="page-content-holder">

                        <div class="block-heading block-heading-centralized this-animate" data-animate="fadeInDown">

                            <div class="block-heading-text">
                                Do you have more than one location?<br>
                                Each additional center is $49/month + $100 setup and training fee.
                            </div>
                        </div>

                    </div>
                    <!-- ./page content holder -->
                </div>
                <!-- ./page content wrapper -->
  <div class="page-content-wrap bg-light">

                    <div class="divider"><div class="box"><span class="fa fa-angle-down"></span></div></div>

                    <!-- page content holder -->
                    <div class="page-content-holder">

                        <div class="row">

                            <div class="col-md-3">
                                <div class="text-column text-column-centralized this-animate" data-animate="fadeInLeft">
                                    <div class="text-column-icon">
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <h5>Money Back Guarantee</h5>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="text-column text-column-centralized this-animate" data-animate="fadeInUp">
                                    <div class="text-column-icon">
                                        <span class="fa fa-hand-o-up"></span>
                                    </div>
                                    <h5>We Improve our Data</h5>
                                    </div>
                            </div>

                            <div class="col-md-3">
                                <div class="text-column text-column-centralized this-animate" data-animate="fadeInRight">
                                    <div class="text-column-icon">
                                        <span class="fa fa-clock-o"></span>
                                    </div>
                                    <h5>Easily Manage multiple locations</h5>
                                   </div>
                            </div>

                            <div class="col-md-3">
                                <div class="text-column text-column-centralized this-animate" data-animate="fadeInLeft">
                                    <div class="text-column-icon">
                                        <span class="fa fa-phone"></span>
                                    </div>
                                    <h5>We're here to answer your questions at 800-345-7930</h5>

                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- ./page content holder -->
                </div>
                <!-- ./page content wrapper -->

<!----------Sign Up------------>
<!-- page content wrapper -->
                <div class="page-content-wrap" id="signup">
                    <!-- page content holder -->
                    <div class="page-content-holder">

                        <div class="block-heading block-heading-centralized this-animate" data-animate="fadeInDown">
                            <h2 class="heading-underline" id="signup">Sign Up Now</h2>
                            <div class="block-heading-text">
                              GET STARTED WITH A FREE TRIAL. NO CREDIT CARD REQUIRED
                            </div>
                        </div>
                        <div class="row" style="padding-left:15%;font-size: 20px">
                        <form  method="post" action="<?php echo $_SERVER['PHP_SELF'];?>" name="register">
<div class="row ">
<div class="col-md-6">
<input type="text" name="firstname" class="form-control" placeholder="First Name" value=""/>
</div>
<div class="col-md-6">
<input type="text" name="lastname" class="form-control" placeholder="Last Name" value=""/>
</div>
</div><br>
<div class="row ">
<div class="col-md-6">
<input type="email" name="email" class="form-control" placeholder="Your E-mail" value=""/>
</div>
<div class="col-md-6">
<input type="number" name="number" class="form-control" placeholder="Your Phone" value="" required=""/>
</div>
</div><br>
<div class="row ">
<div class="col-md-6">
<input type="password" name="password" class="form-control" placeholder="Your Password" id="password" value=""/>
</div>
<div class="col-md-6">
<input type="password" name="re-password" class="form-control" placeholder="Repeat Password" value=""/>
</div></div>
<br>
<div class="col-lg-offset-0">
<div class="form-group">
<div class="checkbox">
<label><input type="checkbox" name="keep" required=""/>I have read and agreed to the Licensing Agreement</label>
</div>
</div>
</div><br>
<div class="row">
<div class="col-md-12">
<button class="btn btn-primary btn-lg block" type="submit" name="register">Start Free Trial</button>
</div></div>
</form>
</div>
</div>

                    </div>
                    <!-- ./page content holder -->
                </div>

<?php
  if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['register'])){
      $firstname = validate($_POST['firstname']);
      $lastname = validate($_POST['lastname']);
      $email = validate($_POST['email']);
      $number = validate($_POST['number']);
      $pswd = validate($_POST['password']);
      $rpswd = validate($_POST['re-password']);



      class registerinsert extends db{
        public $insert,$insertr;
        public $localhost;
        public $query,$queryr;
        public $fetch,$mail,$email,$subject;
        public function insert_fcn($server,$database,$query,$mail,$email){
          $this->mail = "Please Click The Link To Activate Your Lullaby Software Registration ".$mail." Thank You " ;
          $this->email = $email;
          $this->localhost = $server;
          $this->queryr = $query;
          $this->subject = "Lullaby Software Activation Link";

          $this->insertr = mysqli_query($this->localhost,$this->queryr);
    	 if($this->insertr){
    	 mail($this->email,$this->subject,$this->mail);

      	}else{
  	echo "failed to create".mysqli_errorno($this->localhost);
      	}

        }
        public function emailCheck($connection,$database,$query){
          $this->localhost = $connection;
          $this->query = $query;
          $this->check = mysqli_query($this->localhost,$this->query);
          $this->fetch = mysqli_fetch_array($this->check);
          if($this->fetch){ ?>
            <script>
              alert("EMAIL ALREADY USED");
            </script>
            <?php exit;
          }
        }
      }
      $insert_obj = new registerinsert;
      $emailquery = "SELECT `email` FROM `accounts` WHERE `email` = '$email'";
      $checkemail = $insert_obj -> emailCheck($server,$database,$emailquery);

      $password = password_hash($pswd,PASSWORD_DEFAULT);
      $key = uniqid();
      $mail = $_SERVER['HTTP_HOST']."/admin/login/register.php?key=".$key;

      $query = "INSERT INTO `register`(`firstname`,`lastname`,`email`,`number`,`password`,`key`) values('$firstname','$lastname','$email','$number','$password','$key')";

      $take_input = $insert_obj -> insert_fcn($server,$database,$query,$mail,$email);


    }
  }
  function validate($data){
    $data = trim($data);
    $data = stripcslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
 ?>              <!-- ./page content wrapper -->



<?php include_once 'footer.php';?>

</div>
<!-- ./page container -->

<!-- page scripts -->
<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="js/plugins/mixitup/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/plugins/appear/jquery.appear.js"></script>
<script type="text/javascript" src="js/actions.js"></script>
<!-- ./page scripts -->
</body>
</html>
