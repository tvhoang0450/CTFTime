<?php
require "dbConnect.php";

error_reporting( error_reporting() & ~E_NOTICE );
$onsite = $_POST["onsite"];
$onsite = (int)$onsite;
$finish = $_POST["finish"];
$description = $_POST["description"];
$weight = $_POST["weight"];
$weight = (int)$weight;
$title = $_POST["title"];
$url = $_POST["url"];
$is_votable_now = $_POST["is_votable_now"];
$is_votable_now = (int)$is_votable_now;
$restrictions = $_POST["restrictions"];
$format = $_POST["format"];
$start = $_POST["start"];
$participants = $_POST["participants"];
$participants = (int)$participants;
$ctftime_url = $_POST["ctftime_url"];
$location = $_POST["location"];
$live_feed = $_POST["live_feed"];
$public_votable = $_POST["public_votable"];
$public_votable = (int)$public_votable;
$logo = $_POST["logo"];
$format_id = $_POST["format_id"];
$format_id = (int)$format_id;
$id = $_POST["id"];
$id = (int)$id;

/*$id = 887;
$weight = 10;
$location = "Viet Nam";*/

	$query = "UPDATE events SET onsite = '$onsite',finish = '$finish',description = '$description',weight = '$weight',title = '$title',url = '$url',is_votable_now = '$is_votable_now',restrictions = '$restrictions',format = '$format',start = '$start',participants = '$participants',ctftime_url = '$ctftime_url',location = '$location',live_feed = '$live_feed',public_votable = '$public_votable',logo = '$logo',format_id = '$format_id' WHERE id = '$id'";

	if(mysqli_query($conn,$query)){
		echo "success";
	}
	else{
		echo "error";
	}
?>