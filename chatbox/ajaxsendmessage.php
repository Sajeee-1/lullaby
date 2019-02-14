<!-- Default-JavaScript --> <script src="js/jquery.min.js"></script>
<?php
include_once '../admin/db.class.php';
include_once '../admin/session_start.php';

if($_SERVER['REQUEST_METHOD'] == "POST"){
  $message = $_POST['message'];
  $id = $_SESSION['chatccode'];
  $company = $_SESSION['chatcompanyid'];

  $values = "VALUES('$id','$company','gc','guardian','staff','$message')";
  $insert = mysqli_query($server,"INSERT INTO `chat` (`child_id`,`company_id`,`direction`,`from`,`to`,`message`) $values");
  $update_child = mysqli_query($server,"UPDATE `add_child` SET `message` = `message`+1 WHERE `child_id`='$id' ");
  if($insert){

      //
      $select_message = mysqli_query($server,"SELECT * FROM `chat` WHERE `child_id`='$id' ORDER BY `time` DESC  LIMIT 0,30");
      if(mysqli_num_rows($select_message) > 0){
        while($fetch = mysqli_fetch_array($select_message)){
          ?><label><?php echo substr($fetch['time'],0,11)?></label><?php
          if($fetch['direction'] == "cg"){ ?>

          <div class="message">
            <img src="images/girl.png">
            <div class="bubble">
              <?php echo $fetch['message']?>
              <span><?php echo substr($fetch['time'],11,5)?></span>
            </div>
          </div>

          <?php
          }else{ ?>
            <div class="message right">
              <img src="images/female.png">
              <div class="bubble">
                <?php echo $fetch['message']?>
                <span><?php echo substr($fetch['time'],11,5)?></span>
              </div>
            </div>

            <?php
          }//if loop for direction close
        } // while loop for fetch
        ?>
          <div id="sendmessage">
            <input type="text" placeholder="Send message..." id="usermessage">
            <button id="send" onclick="sendmessage()"></button>
          </div>

        <?php
      } //if loop for check rows

      //

  }else {


echo "ssd";
  } // if loop for insert operation


}
?>
