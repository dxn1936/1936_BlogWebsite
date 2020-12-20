<?php if (isset($_SESSION['user']['username'])) { ?>
	<div class="logged_in_info">
		<span>welcome <?php echo $_SESSION['user']['username'] ?></span>
		|
		<span><a href="logout.php">logout</a></span>
	</div>
<?php }else{ ?>
<div class="banner">
	<div class="welcome_msg">
		<h1>Today's Inspiration</h1>
		<p> 
		    One day your life <br> 
		    will flash before your eyes. <br> 
		    Make sure it's worth watching. <br>
			
		</p>

	</div>
	<div class="login_div">
		<form action="<?php echo BASE_URL . 'index.php'; ?>" method="post" >
			<div style="width: 60%; margin: 0px auto;">
					<?php include(ROOT_PATH . '/includes/errors.php') ?>
			</div>
				
		</form>
	</div>
</div>
<?php } ?>