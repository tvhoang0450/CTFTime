<?php
	include "dbConnect.php";

	$query = "SELECT * FROM events";
	$result = mysqli_query($conn, $query);

	class Events{
		function Events($onsite, $finish, $description, $weight, $title, $url, $is_votable_now, $restrictions, $format, $start, $participants, $ctftime_url, $location, $live_feed, $public_votable, $logo, $format_id, $id, $ctf_id){
			$this->onsite = $onsite;
			$this->finish = $finish;
			$this->description = $description;
			$this->weight = $weight;
			$this->title = $title;
			$this->url = $url;
			$this->is_votable_now = $is_votable_now;
			$this->restrictions = $restrictions;
			$this->format = $format;
			$this->start = $start;
			$this->participants = $participants;
			$this->ctftime_url = $ctftime_url;
			$this->location = $location;
			$this->live_feed = $live_feed;
			$this->public_votable = $public_votable;
			$this->logo = $logo;
			$this->format_id = $format_id;
			$this->id = $id;
			$this->ctf_id = $ctf_id;
		}
	}

	//taoj mangr
	$mangEvent = array();

	//them phan tu vao mang
	while($row = mysqli_fetch_assoc($result)){
		array_push($mangEvent, new Events( $row["onsite"] , $row["finish"] , $row["description"] , $row["weight"] , $row["title"] , $row["url"] , $row["is_votable_now"] , $row["restrictions"] , $row["format"] , $row["start"] , $row["participants"] , $row["ctftime_url"] , $row["location"] , $row["live_feed"] , $row["public_votable"] , $row["logo"] , $row["format_id"] , $row["id"] , $row["ctf_id"] ));
	}

	//decode qua json
	echo json_encode($mangEvent);
?>