<?php
require "dbConnect.php";
	error_reporting( error_reporting() & ~E_NOTICE );

	$teamid = $_POST["teamid"];
	$teamid = (int)$teamid;
	$eventid = $_POST["eventid"];
	$eventid = (int)$eventid;

/*	$teamid = 24324;
	$eventid = 805;*/

	$query = "INSERT INTO registrations (teamid, eventid) VALUES ('$teamid','$eventid')";
	$query1 = "SELECT * FROM registrations WHERE teamid = '$teamid' AND eventid = '$eventid'";

	$result = mysqli_query($conn,$query1);
	if(mysqli_num_rows($result) == 0){
		if(mysqli_query($conn,$query)){
			echo "success";
		}
		else{
			echo "error";
		}
	}
	else{
		echo "registered";
	}