<?php
session_start();
unset($_SESSION["email_tec"]);
session_destroy();
header("location:index.php");
?>