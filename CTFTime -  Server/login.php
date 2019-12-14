<?php

require "dbConnect.php";

 $username = $_POST['username'];
 $password = $_POST['password'];
/* $username = 'admin';
 $password = 'admin';*/

 $querycheck = "SELECT * FROM `users` WHERE `username` = '$username' AND `password` = '$password'";

$result = mysqli_query($conn,$querycheck);

if(mysqli_num_rows($result) > 0){
	$checkType = "SELECT `usertype` FROM `users` WHERE `username` = '$username'";
	$result1 = mysqli_query($conn,$checkType);
	$row = mysqli_fetch_assoc($result1);
	echo $row["usertype"];
}
else{
	echo "NonExist";
}
?>