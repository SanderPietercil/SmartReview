<!DOCTYPE html>
<html>
<head>
	<!-- <title><a href="<?php echo base_url(); ?>/assets/images/SRlogo.png""><img src="SRlogo.png" alt="logo" /></a>SmartReview</title> -->
  <title>SmartReview</title>
	<link rel="stylesheet" href="https://bootswatch.com/3/superhero/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/assets/css/style.css">
	
	<!-- CKeditor CDN -->
	<script src="http://cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    	
    	<!-- collapsable Navbar When On Mobile -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<?php echo base_url(); ?>">SmartReview</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
    	<li><a href="<?php echo base_url(); ?>"><span class="glyphicon glyphicon-home"></span> Home</a></li>
		<li><a href="<?php echo base_url(); ?>about">About</a></li>
		<li><a href="<?php echo base_url(); ?>posts">Reviews</a></li>


    <!-- Dropdown code -->
		<li class="dropdown">
    	<a class="dropdown-toggle" data-toggle="dropdown" href="<?php echo base_url(); ?>categories">Categories
        <b class="caret"></b>
      </a>
    	<ul class="dropdown-menu">
      		<?php foreach($categories as $category) : ?>
				<li><a style="font-size: 15px;" href="<?php echo site_url('categories/posts/'.$category['id']); ?>"><?php echo $category['name']; ?></a></li>
				<?php endforeach; ?>
    	</ul>
  	</li>


      </ul>
      <ul class="nav navbar-nav navbar-right">
        <?php if($this->session->userdata('logged_in')) : ?>
        	<li><a href="<?php echo base_url(); ?>posts/create"><span class="glyphicon glyphicon-pencil"></span> Write Review</a></li>
        	<li><a href="<?php echo base_url(); ?>categories/create"><span class="glyphicon glyphicon-list"></span> Create Category</a></li>
          <li><a href="<?php echo base_url(); ?>users/register"><span class="glyphicon glyphicon-user"></span> Register Admin</a></li>
          <li><a href="<?php echo base_url(); ?>users/Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        <?php endif; ?>
        <?php if(!$this->session->userdata('logged_in')) : ?>
          <li><a href="<?php echo base_url(); ?>users/login"><span class="glyphicon glyphicon-log-in"></span> Admin Login</a></li>
        <?php endif; ?>
      </ul>
    </div>
  </div>
</nav>

<div style="padding-top: 65px;" class="container">
  <!-- Flash messages -->
  <?php if($this->session->flashdata('user_registered')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('post_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('post_updated')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('category_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('post_deleted')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('login_failed')) : ?>
    <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('user_loggedin')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
  <?php endif; ?>

  <?php if($this->session->flashdata('user_loggedout')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
  <?php endif; ?>
