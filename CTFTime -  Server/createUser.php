<?php

require "dbConnect.php";

 $username = $_POST['username'];
 $password = $_POST['password'];
 $usertype = $_POST['usertype'];
 $usertype = (int)$usertype;
/* $username = 'admin1';
 $password = 'admin';
 $usertype = 0;*/

$querycheckusername = "SELECT * FROM `users` WHERE `username` = '$username'";
$result1 = mysqli_query($conn,$querycheckusername);

$query = "INSERT INTO users VALUES('$username','$password','$usertype')";

if(mysqli_num_rows($result1) == 0){
	if(mysqli_query($conn, $query)){
		echo "success";
	}
	else{
		echo "error";
	}
}
else{
	echo "UsernameUsed";
}
?>