<?php
require "config.php";
$conn = mysqli_connect(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME);
mysqli_query($conn,"SET NAME 'utf8'");
?>