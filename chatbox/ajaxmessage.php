<!-- Default-JavaScript --> <script src="js/jquery.min.js"></script>
<?php
include_once '../admin/db.class.php';
include_once '../admin/session_start.php';

if($_SERVER['REQUEST_METHOD'] == "POST"){
  $id = $_POST['id'];

  $select_message = mysqli_query($server,"SELECT * FROM `chat` WHERE `child_id`='$id' ORDER BY `time` DESC LIMIT 0,40");
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
  }//if loop for check rows
  ?>
  <div id="sendmessage">
    <input type="text" placeholder="Send message..." id="usermessage">
    <button id="send" onclick="sendmessage()"></button>
  </div>
  <?php
}// if loop for close server method
?>
