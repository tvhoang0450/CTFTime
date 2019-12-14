<?php
require "dbConnect.php";
	//$aliases = "";
	$id = $_POST["id"];
	$id = (int)$id;
	//$id = 281;


	$query = "DELETE FROM events WHERE id='$id'";

	if(mysqli_query($conn,$query)){
		echo "success";
	}
	else{
		echo "error";
	}
?>