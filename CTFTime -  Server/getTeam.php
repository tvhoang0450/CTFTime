<?php
	include "dbConnect.php";

	error_reporting( error_reporting() & ~E_NOTICE );
	$username = $_POST['username'];
	//$username = 'Hoang';
	//echo ($username);

	class Teams{
		function Teams($aliases,$country,$academic,$id,$name){
			$this->aliases = $aliases;
			$this->country = $country;
			$this->academic = $academic;
			$this->id = $id;
			$this->name = $name;
		}
	}

	$query = "SELECT * FROM teams WHERE EXISTS (SELECT username FROM users WHERE teams.id = users.id AND username = '$username') ";
	//$query = "SELECT * FROM teams";

	$result = mysqli_query($conn,$query);

	
	if(mysqli_num_rows($result) > 0){
		//$mangTeam = array();

		//them phan tu vao mang
		while($row = mysqli_fetch_assoc($result)){
		$mangTeam = new Teams($row['aliases'], $row['country'], $row['academic'], $row['id'], $row['name']);
		}

		//decode qua json
		echo json_encode($mangTeam);

	}
	else{
		echo "NonExist";
	}
?>