<?php
	include "dbConnect.php";
	error_reporting( error_reporting() & ~E_NOTICE );
	$username = $_POST["username"];
	//$username = "tvh";

	$query = "SELECT id FROM users WHERE username = '$username'";

	$result = mysqli_query($conn,$query);

		while($row = mysqli_fetch_assoc($result)){
		echo ($row["id"]);
	}
?>