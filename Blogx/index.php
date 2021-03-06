	<!--Config file-->
<?php require_once('config.php') ?>

<?php require_once( ROOT_PATH . '/includes/public_functions.php') ?>
<?php require_once( ROOT_PATH . '/includes/registration_login.php') ?>
<!-- Retrieve all posts from database  -->
<?php $posts = getPublishedPosts(); ?>


	<!--Head section-->
<?php require_once( ROOT_PATH . '/includes/head-section.php') ?>
	<title>DxnBlog | Home </title>
</head>
<body>
	<!-- container - wraps whole page -->
	<div class="container">
		<!-- navbar -->
		<?php include( ROOT_PATH . '/includes/navibar.php') ?>
		<!-- // navbar -->
		
		<!-- banner -->
<?php include( ROOT_PATH . '/includes/banner.php') ?>
		
<?php include( ROOT_PATH . '/includes/messages.php'); ?>		
		<!-- Page content -->
	<div class="content">
			<h2 class="content-title">Recent Articles</h2>
			<hr>
			<?php foreach ($posts as $post): ?>
			<div class="post" style="margin-left: 0px;">
				<img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="">
			
			<!-- Added this if statement... -->
			<?php if (isset($post['topic']['name'])): ?>
			<a 
				href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>"
				class="btn category">
				<?php echo $post['topic']['name'] ?>
			</a>
			<?php endif ?>
		
			<a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
			<div class="post_info">
				<h3><?php echo $post['title'] ?></h3>
				<div class="info">
					<span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
					<span class="read_more">Read more...</span>
				</div>
			</div>
				</a>
		</div>
<?php endforeach ?>
	</div>
		<!-- // Page content -->
</div>
		<!-- footer -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>