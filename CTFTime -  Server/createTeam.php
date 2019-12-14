<?php
include "dbConnect.php";

$country = $_POST["country"];
$academic = $_POST["academic"];
$name = $_POST["name"];
$username = $_POST["username"];

/*$country = "country";
$academic = "academic";
$name = "name";
$username = "tvh";*/

$query = "INSERT INTO teams (country, academic, name) VALUES ('$country','$academic', '$name')";

$result = (mysqli_query($conn, $query));

if($result){
	echo "success";
}
else{
	echo "error";
}


//Lấy id của team vừa tạo
$query1 = "SELECT `id` FROM `teams` WHERE `name` = '$name'";
$getteamid = (mysqli_query($conn, $query1));

while ($row = mysqli_fetch_assoc($getteamid)) {
	$teamid = ($row["id"]);
}

//Thêm teamid vào dữ liệu của user 
$query2 = "UPDATE users SET id='$teamid' WHERE username='$username'";
mysqli_query($conn, $query2);
?>