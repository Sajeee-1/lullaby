<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- META SECTION -->
        <title>Lullaby</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- END META SECTION -->

        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <!-- page container -->
        <div class="page-container">
            <?php include_once 'menu.php'; ?>
            <!-- page content -->
            <div class="page-content">

         <!-- ./page content wrapper -->

                <!-- page content wrapper -->
                <div class="page-content-wrap">

                    <div class="divider"><div class="box"><span class="fa fa-angle-down"></span></div></div>

                    <!-- page content holder -->
                    <div class="page-content-holder">
                      <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
                        <div class="row">
                            <div class="col-md-7 this-animate" data-animate="fadeInLeft" style="margin-top:5%">

                                <div class="text-column">
                                    <h4>SIGN IN</h4>
                                       </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Child Id <span class="text-hightlight">*</span></label>
                                            <input type="text" required="" class="form-control" name="code"/>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Date of Birth: <span class="text-hightlight">*</span></label>
                                            <input type="date" required="" class="form-control datepicker" name="dob"/>
                                        </div>
                                    </div>
                                    </div>
                            </div>
                            <div class="col-md-5 this-animate" data-animate="fadeInRight" style="margin-top:12%">
                                <input type="submit" class="btn btn-primary btn-lg" value="Sign In" name="signinc">
                            </div>
                        </div>
                      </form>

                    </div>
                    <!-- ./page content holder -->
                </div>
                <!-- ./page content wrapper -->

            </div>
            <!-- ./page content -->

   <?php include_once 'footer.php';?>
        </div>
        <!-- ./page container -->

        <!-- page scripts -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/plugins/mixitup/jquery.mixitup.js"></script>
        <script type="text/javascript" src="js/plugins/appear/jquery.appear.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>



        <script type="text/javascript" src="js/actions.js"></script>
        <!-- ./page scripts -->

        <?php
        if($_SERVER['REQUEST_METHOD'] == "POST"){
          if(isset($_POST['signinc'])){
            $code = $_POST['code'];
            $dob = $_POST['dob'];
            include_once('admin/db.class.php');
            include_once('admin/session_start.php');

            $select_code = mysqli_query($server,"SELECT * FROM `add_child` WHERE SUBSTR(`child_id`,-5) = '$code'");
            if(mysqli_num_rows($select_code) > 0){
              $fetch_child = mysqli_fetch_array($select_code);

            $bdate = $fetch_child['year']."-".$fetch_child['month']."-".$fetch_child['date'];
              if(strtotime($bdate) == strtotime($dob)){

                $_SESSION['chatccode'] = $bcode = $fetch_child['child_id'];
                $_SESSION['chatcompanyid'] = $fetch_child['company_id'];
                ?>
                <script>
                window.location = "chatbox/index.php";
                </script>
                <?php
              }else{ ?>
                <script>
                alert("Wrong Credientials");
                </script>
                <?php
              }
            }else{ ?>
              <script>
              alert("Wrong Credientials");
              </script>
              <?php

            }

          } // close isset
        }// method close
        ?>
    </body>
</html>
