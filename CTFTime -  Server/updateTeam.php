<?php
require "dbConnect.php";
	//$aliases = "";
	$country = $_POST["country"];
	$academic = $_POST["academic"];
	$id = $_POST["id"];
	$id = (int)$id;
	$name = $_POST["name"];

	$query = "UPDATE teams SET country = '$country', academic = '$academic', name ='$name' WHERE id = '$id'";

	if(mysqli_query($conn,$query)){
		echo "success";
	}
	else{
		echo "error";
	}
?>