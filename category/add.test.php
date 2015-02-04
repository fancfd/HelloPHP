<?php
	require_once('../config/db.php');
	// echo "This is from add posts!";
	function category_add ($db, $name) {		
		$sql = "INSERT INTO categories (name) VALUES ('" . $name . "')";
		print_r($sql . "<br>");
		// $db->exec($sql);
	}

	$name  =  "news";
	category_add($db, $name);

	$name  =  "highlights";
	category_add($db, $name);

	