<?php
	include "dbConnect.php";

	$query = "SELECT * FROM teams";
	$result = mysqli_query($conn, $query);

	class Teams{
		function Teams($aliases,$country,$academic,$id,$name){
			$this->aliases = $aliases;
			$this->country = $country;
			$this->academic = $academic;
			$this->id = $id;
			$this->name = $name;
		}
	}

	//taoj mangr
	$mangTeam = array();

	//them phan tu vao mang
	while($row = mysqli_fetch_assoc($result)){
		array_push($mangTeam, new Teams($row['aliases'], $row['country'], $row['academic'], $row['id'], $row['name']));
	}

	//decode qua json
	echo json_encode($mangTeam);


/*	if (mysqli_num_rows($result) > 0) {
    // output data of each row
	    while($row = mysqli_fetch_assoc($result)) {
	        echo "aliases: " . $row["aliases"];
	    }
	} else {
   		echo "0 results";
	}

	mysqli_close($conn);*/
?>