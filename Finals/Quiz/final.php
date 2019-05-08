<?php session_start(); ?>
	<?php; ?>
		<h2>You're Done!</h2>
			<p>Congrats! You have completed the test</p>
			<p>Final Score: <?php echo $_SESSION['score']; ?></p>
			<a href="index.php" class="start">Take Again</a>
			<a href="php.html" class="start">Back to Home</a>
	<?php ?>
<?php session_destroy(); ?>