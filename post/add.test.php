<?php
	require_once('../config/db.php');
	// echo "This is from add posts!";
	function post_add ($db, $info) {
		$cat_id	 = $info['cat_id'];
		$title	 = $info['title'];
		$content = $info['content'];
		print_r($cat_id. "<br>");
		print_r($title. "<br>");
		print_r($content. "<br>");

		// $sql = "INSERT INTO categories (name) VALUES ('" . $name . "')";
		// print_r($sql . "<br>");
		// $db->exec($sql);
	}

	$cat_id	= 1;
	$title	= "Hello from Fan!";
	$content = "This is content";
	$info = ['cat_id' => $cat_id, 'title' => $title, 'content' => $content ];
	post_add($db, $info );

	