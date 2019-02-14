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
                
                               
                <!-- page content wrapper -->
                <div class="page-content-wrap" style="margin-top:5%">                    
                    
                    <div id="google-map" style="width: 100%; height: 300px;"></div>
                    
                </div>
                <!-- ./page content wrapper -->
                
                <!-- page content wrapper -->
                <div class="page-content-wrap">                    
                    
                    <div class="divider"><div class="box"><span class="fa fa-angle-down"></span></div></div>                    
                    
                    <!-- page content holder -->
                    <div class="page-content-holder">
                    
                        <div class="row">
                            <div class="col-md-7 this-animate" data-animate="fadeInLeft">
                                
                                <div class="text-column">
                                    <h4>Contact Us</h4>
                                    <div class="text-column-info">
                                        Proin luctus nulla fringilla massa euismod commodo. Donec sit amet elementum libero. Curabitur ut lorem id tellus malesuada tincidunt et eget purus. 
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name <span class="text-hightlight">*</span></label>
                                            <input type="text" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>E-mail <span class="text-hightlight">*</span></label>
                                            <input type="text" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Subject <span class="text-hightlight">*</span></label>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Message <span class="text-hightlight">*</span></label>
                                            <textarea class="form-control" rows="8"></textarea>
                                        </div>
                                        <button class="btn btn-primary btn-lg pull-right">Send Message</button>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-5 this-animate" data-animate="fadeInRight">
                                
                                <div class="text-column text-column-centralized">
                                    <div class="text-column-icon">
                                        <span class="fa fa-home"></span>
                                    </div>                                    
                                    <h4>Our Office</h4>
                                    <div class="text-column-info">
                                        <p><strong><span class="fa fa-map-marker"></span> Address: </strong> 000 StreetName, Suite 111, City Name, ST 01234</p>
                                        <p><strong><span class="fa fa-phone"></span> Phone: </strong> (012) 345-67-89</p>
                                        <p><strong><span class="fa fa-envelope"></span> E-mail: </strong> <a href="#">johndoe@domain.com</a></p>
                                    </div>
                                </div>
                                
                                <div class="text-column text-column-centralized">
                                    <div class="text-column-icon">
                                        <span class="fa fa-clock-o"></span>
                                    </div>
                                    <h4>Business Hours</h4>
                                    <div class="text-column-info">
                                        <p><strong>Monday &mdash; Friday</strong>: 10:00am - 6:00pm</p>
                                        <p><strong>Saturday &mdash; Sunday</strong>: 10:00am - 2:00pm</p>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
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
        

        <script type="text/javascript">
            
            var mapCords = new google.maps.LatLng(37.751117, -122.423095);
            var mapOptions = {zoom: 14,center: mapCords, mapTypeId: google.maps.MapTypeId.ROADMAP}    
            var map = new google.maps.Map(document.getElementById("google-map"), mapOptions);

            var cords = new google.maps.LatLng(37.751117, -122.423095);
            var marker = new google.maps.Marker({position: cords, 
                                                 map: map, 
                                                 title: "Marker 1",
                                                 icon: 'http://aqvatarius.com/development/atlant-frontend/img/map-marker.png'}
                                               );
                                       
        </script>
        
        <script type="text/javascript" src="js/actions.js"></script>                
        <!-- ./page scripts -->
    </body>
</html>






