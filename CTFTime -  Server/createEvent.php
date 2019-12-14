<?php
include "dulieu1.php";
include "dbConnect.php";

/*$array = json_decode($json, true);
foreach ($array as $row) {
	$query = "INSERT INTO events VALUES('".$row["onsite"]."','".$row["finish"]."','".$row["description"]."','".$row["weight"]."','".$row["title"]."','".$row["url"]."','".$row["is_votable_now"]."','".$row["restrictions"]."','".$row["format"]."','".$row["start"]."','".$row["participants"]."','".$row["ctftime_url"]."','".$row["location"]."','".$row["live_feed"]."','".$row["public_votable"]."','".$row["logo"]."','".$row["format_id"]."','".$row["id"]."','".$row["ctf_id"]."')";

/*	$query = "INSERT INTO events(url,finish) VALUES('".$row["url"]."','".$row["finish"]."')";*/
/*	if(mysqli_query($conn,$query)){
			echo $query;
	}
	echo $query;
}*/
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

/*$onsite= 1;
$finish= "20/10/2020";
$description= "erew";
$weight= 0;
$title= "title123";
$url= "fb.com";
$is_votable_now= "1";
$restrictions= "Open";
$format= "Jeopardy";
$start= "20/10/2021";
$participants= 34;
$ctftime_url= "sfsf";
$location= "vn";
$live_feed= "wer";
$public_votable= "1";
$logo= "sdhfhjs";
$format_id = 1;
*/
$query = "INSERT INTO events (onsite,finish,description,weight,title,url,is_votable_now,restrictions,format,start,participants,ctftime_url,location,live_feed,public_votable,logo,format_id) VALUES('$onsite','$finish','$description','$weight','$title','$url','$is_votable_now','$restrictions','$format','$start','$participants','$ctftime_url','$location','$live_feed','$public_votable','$logo','$format_id')";


$result = (mysqli_query($conn, $query));

if($result){
	echo "success";
}
else{
	echo "error";
}

?>
