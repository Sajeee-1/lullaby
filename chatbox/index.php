
<?php
include_once '../admin/db.class.php';
include_once '../admin/session_start.php';
$ccid = $_SESSION['chatccode'];

$selectchild = mysqli_query($server,"SELECT * FROM `add_child` WHERE `child_id` = '$ccid'");
$fetch_child = mysqli_fetch_array($selectchild);
?>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>Chat History</title>

	<!-- For-Mobile-Apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Friends Chat History Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps -->

	<!-- Style --> <link rel="stylesheet" href="css/style1.css" type="text/css" media="all">

	<!-- Web-Fonts -->
		<link href='//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
	<!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>CHAT HISTORY </h1>
<div class="sidebar">
  <h2>Child Id : <?php echo substr($fetch_child['child_id'],-5);?><br>
  Child Name:<?php echo $fetch_child['first_name'].", ".$fetch_child['last_name']?></h2>
  </div>
	<div class="sidebar1">
		<h2>Child Id : <?php echo substr($fetch_child['child_id'],-5);?><br>
		Child Name:<?php echo $fetch_child['first_name'].", ".$fetch_child['last_name']?></h2>
		</div>


<!--------------------contact chat layout start-------------------->

	<div class="container w3layouts agileits">
		<div id="chatbox">

			<div id="friendslist">

				<div id="topmenu">
					<span class="friends">CONTACTS</span>
				</div>

<!----------------------------contact view start-------------------------->

				<div id="friends">


					<div class="friend w3layouts" onclick="getmessage()">

						<img src="../admin/familylist/<?php echo $fetch_child['profile_pic'];?>">
						<p>
							<strong><?php echo $fetch_child['first_name'].",".$fetch_child['last_name'];?></strong>
							<span><?php echo substr($fetch_child['child_id'],-5);?></span>

						</p>
						<?php if($fetch_child['status'] == "active") {?>
						<div class="status available"></div>
						<?php } else{?>
						<div class="status away"></div>
							<?php } ?>
					</div>

<!--------------------------------------------------------------->

<!--------------------------------------------------------->
					<div id="search">
						<input type="text" id="searchfield" value="Search contacts...">
					</div>

				</div>

				<!----------------------------contact view over-------------------------->

			</div>
			<!---------------contact list over-------------------------->

			<div id="chatview" class="p1">

				<div id="profile">
					<div id="close">
						<div class="cy"></div>
						<div class="cx"></div>
					</div>
					<p>Bucky Barnes</p>
					<span>wintersoldier@gmail.com</span>
				</div>

				<div id="chat-messages">



					<div id="sendmessage">
		        <input type="text" placeholder="Send message..." id="usermessage">
		        <button id="send" onclick="sendmessage()"></button>
		      </div>
				</div>



			</div>

		</div>

	</div>

	<script>
	function getmessage(){
			var childid = "<?php echo $ccid;?>";
			$.ajax({
				type:'POST',
				url:'ajaxmessage.php',
				data:'id='+childid,
				success:function(data){
					$("#chat-messages").html(data);
				}
			});
	}

	function sendmessage(){
		var message = document.getElementById("usermessage").value;

		$.ajax({
			type:'POST',
			url:'ajaxsendmessage.php',
			data:'message='+message,
			success:function(mes){
				//alert(mes);
				$("#chat-messages").html(mes);
			}
		});
	}
	</script>

	<!-- Custom-JavaScript-File-Links -->
		<!-- Default-JavaScript --> <script src="js/jquery.min.js"></script>
		<!-- Tabs-JavaScript -->    <script src="js/tabs.js"></script>
	<!-- //Custom-JavaScript-File-Links -->

</body>
<!-- //Body -->

</html>
