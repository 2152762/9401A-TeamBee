<?php

	$con = mysqli_connect('127.0.0.1','root','');

	if(!$con)
	{
		echo 'Cannot connect to the server';
	}

	if(!mysqli_select_db($con,'teambee'))
	{
		echo 'Database not selected';
	}

	$lname = $_POST['lname'];
	$fname = $_POST['fname'];
	$topic = $_POST['topic'];
	$type = $_POST['type'];
	$qnty = $_POST['qnty'];
	$diff = $_POST['diff'];

	$sql = "INSERT INTO student (lname, fname, topic, typeOfQuiz, numOfQuestions, chosenDifficulty, tookExamBy) VALUES ('$lname', '$fname', '$topic', '$type', '$qnty', '$diff', NOW())";

	if(!mysqli_query($con,$sql))
	{
		echo "<p style = 'color: red ; text-align: center ; font-family: sans-serif ; font-size: 35px ;'>".'Failed to register'."</p>";
	}
	else
	{
		echo "<p style = 'color: green ; text-align: center ; font-family: sans-serif ; font-size: 35px ;'>".'Successfully Registered'."</p>";
	}

	header("refresh:3; url=index.html");

?>