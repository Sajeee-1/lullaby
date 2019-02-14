<?php
include_once 'admin/session_start.php';
include_once 'admin/db.class.php';
?>

<html>
    <head>
        <style>
            ol, ul {
  list-style: none;
            }
@media only screen and (max-width: 599px) {
  .site_header {
    background: #003751;
    overflow: hidden; }
    .site_header .center {
      padding: 0; } }

@media only screen and (min-width: 600px) {
  .site_header {
    position: fixed;
    z-index: 1000;
    width: 100%;
    height: 125px;
    background: #666;
    background: rgba(0, 0, 0, 0.5); } }

@media only screen and (min-width: 768px) {
  .site_header {
    height: 86px; } }

@media only screen and (max-width: 767px) {
  .site_header_logo__image {
    margin: 25px auto 0 auto;
    display: block;
    max-width: 260px;
    height: auto; } }

@media only screen and (min-width: 768px) {
  .site_header_logo {
    position: absolute;
    left: 59px;
    top: 13px; }
    .site_header_logo__image {
      display: block;
      width: auto;
      height:66px; } }

.site_header_menu__dropdown_button {
  display: none; }

.site_header_menu__dropdown_checkbox {
  position: absolute;
  top: -9999px;
  left: -9999px; }

.site_header_menu__link {
  font-family: "Open Sans";
  color: #aaa9aa;
  font-size: 15px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  text-decoration: none;
  transition: all .1s; }

@media only screen and (max-width: 599px) {
  .site_header_menu__dropdown_button {
    display: block;
    margin: 15px 0 0 0;
    padding: 14px 10px;
    font-family: "Open Sans";
    font-size: 18px;
    background: white;
    text-align: center; }
  .site_header_menu__list {
    display: none;
    background: white; }
  .site_header_menu__item {
    text-align: center;
    padding: 10px 0;
    border-top: dotted 1px #aaa9aa; }
  .site_header_menu__link:hover {
    color: #003751; }
  .site_header_menu__link--active {
    color: #003751; }
  .site_header_menu__dropdown_checkbox:checked + .site_header_menu__list {
    display: block; } }

@media only screen and (min-width: 600px) and (max-width: 767px) {
  .site_header_menu {
    margin: 15px auto 0 auto; }
    .site_header_menu__list {
      text-align: center;
   }
    .site_header_menu__item {
      display: inline-block;
      margin: 0 7px; }
      .site_header_menu__item:first-child {
        display: none; } }

@media only screen and (min-width: 768px) {
  .site_header_menu {
    position: absolute;
    right: 32px;
    top: 30px;
  }
    .site_header_menu__list:after {
      content: "";
      display: table;
      clear: both; }
    .site_header_menu__item {
      float: left;
      margin: 0 0 0 20px;
    }
      .site_header_menu__item:first-child {
        display: none; }
    .site_header_menu__link {
      padding: 5px 0; }
      .site_header_menu__link:hover {
        position: relative;
        top: 1px;
        color: white;
        transition: all .15s; }
    .site_header_menu__link--active {
      color: white; }
    .site_header_menu__item--try_it_free .site_header_menu__link {
      padding: 5px 10px;
      color: white;
      text-transform: none;
      background: #ec1748;
      border-radius: 3px; }
    .site_header_menu__item--login {
      margin: 0 0 0 10px; }
    .site_header_menu__item--login .site_header_menu__link {
      padding: 5px 15px;
      color: white;
      background: #918f91;
      border-radius: 3px; } }

@media only screen and (min-width: 1000px) {
  .site_header_menu__item {
    margin: 0 0 0 40px; }
    .site_header_menu__item:first-child {
      display: block;
      margin: 0; }
  .site_header_menu__item--try_it_free .site_header_menu__link {
    padding: 5px 15px; }
  .site_header_menu__item--login {
    margin: 0 0 0 15px; } }

@media only screen and (min-width: 1280px) {
  .site_header_menu__item {
    margin: 0 0 0 70px;

  }
  .site_header_menu__item--login {
    margin: 0 0 0 15px; } }

        </style>
    </head>
<body>
    <div class="site_header">
    <div class="center">
        <a class="site_header_logo" href="/">
            <img class="site_header_logo__image" src="img/lullabyfinal.png" alt="Lullaby Childcare Software">
        </a>
        <div class="site_header_menu">
            <label class="site_header_menu__dropdown_button" for="site_header_menu__dropdown_checkbox">
                &#9776; Menu
            </label>
            <input class="site_header_menu__dropdown_checkbox" id="site_header_menu__dropdown_checkbox" type="checkbox">
            <ul class="site_header_menu__list" >
                <li class="site_header_menu__item">
                    <a class="site_header_menu__link" href="index.php">
                        Home
                    </a>
                </li>
                <li class="site_header_menu__item">
                    <a class="site_header_menu__link" href="features.php">
                        Features
                    </a>
                </li>
                <li class="site_header_menu__item">
                    <a class="site_header_menu__link" href="pricing.php">
                        Pricing
                    </a>
                </li>
                <li class="site_header_menu__item">
                    <a class="site_header_menu__link" href="about.php">
                        About
                    </a>
                </li>
                <li class="site_header_menu__item">
                    <a class="site_header_menu__link" href="contacts.php">
                        Contact
                    </a>
                </li>
                <li class="site_header_menu__item site_header_menu__item--try_it_free">

                    <?php
                    if(isset($_SESSION['uname']) || isset($_SESSION['pswd'])){ ?>
                      <a class="site_header_menu__link" href="admin/firstpage/firstpage.php">
                          Dashboard
                      </a>
                    <?php  }else{ ?>
                      <a class="site_header_menu__link" href="pricing.php#signup">
                          Try it free
                      </a>
                      <?php } ?>
                </li>

                <li class="site_header_menu__item site_header_menu__item--login">
                  <?php
                  if(isset($_SESSION['uname']) || isset($_SESSION['pswd'])){ ?>
                    <a class="site_header_menu__link" href="admin/login/logout.php">
                        Logout
                    </a>
                  <?php  }else{ ?>

                    <a class="site_header_menu__link" href="admin/login/signin.php">
                        Login
                    </a>
                    <?php } ?>
                </li>

            </ul>
        </div>
    </div>
</div>
</body>
</html>
