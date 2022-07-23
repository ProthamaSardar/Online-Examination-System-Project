<?php
session_start(); 
 ?>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<title>Online Examination System</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/all.min.css">	
</head>

<style>
	.card:hover{
		box-shadow: 2px 2px 20px pink;
		cursor: pointer;
	}
	.Top-bar{
		top: 0;
		position: sticky;
		z-index: 1;
	}
	html{
		scroll-behavior: smooth;
	}
</style>

<body>

<div class="container-fluid">

<div class="Top-bar">
	<div class="row mx-auto" style="background: pink;">
		<div class="col-md-12">
		    <marquee width="100%" direction="left" height="50px">
		        <h4 class="text-dark mt-2">Welcome to Online Examination System<h4>
	        </marquee>
		</div>
		
	</div>
<div class="row mx-auto">
<div class="col-md-12 bg-dark">
<nav class="navbar navbar-expand-sm sticky-top">
<div class="logo">
<img src="image/logo.png" alt="" style="height: 40px;">
</div>
<ul class="navbar-nav ml-auto">
<a href="admin/index.php"><li class="nav-item mr-3"><span class="btn btn-success text-white" style="font-size:16px">Admin</span></li></a>
<a href="user.php"><li class="nav-item mr-3"><span class="btn btn-warning text-white" style="font-size:16px">User<span></li></a>
</ul>
</nav>
</div>
</div>
</div>


		<div class="row">
			<div class="col-md-12">
				<div id="herocarousel" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#herocarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#herocarousel" data-slide-to="1"></li>
			    <li data-target="#herocarousel" data-slide-to="2"></li>

			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="image/q.png"style="width: 100%;">
			    </div>
			    <div class="carousel-item">
			      <img src="image/p.png" style="width: 100%;">
			    </div>
			    <div class="carousel-item">
			      <img src="image/first.png" style="width: 100%;">
			    </div>

			  </div>
			  <a class="carousel-control-prev" href="#herocarousel" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			 
			  </a>
			  <a class="carousel-control-next" href="#herocarousel" role="button" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
	
			  </a>
			</div>
			</div>
		</div>

		<!-- Our Team -->
		<section id="team">		

			<h1 class="text-center text-secondary p-3">Our Team</h1>
		<div class="row">
			<div class="col-md-3">
				<div class="card mt-4 p-2" style="background-color: lightgrey;">
					<i class="fas fa-user fa-5x mx-auto" style="color: #17A2C8;"></i>
					<h2 class="card-title text-secondary text-center"> Prothama Sardar </h2>
					<h5 class="card-subtitle text-center">Admin</h5>
					<p class="text-justify">Hi, I am Prothama Sardar. Online Examination provides automation to overall exam process. It is essential to have team structure according to roles and Responsibilities to manage examination process..</p>
					<div class="d-flex justify-content-around">
						<a href=""> <i class="fab fa-facebook"></i></a>
						<a href=""> <i class="fab fa-twitter"></i></a>
						<a href=""> <i class="fab fa-instagram"></i></a>
						<a href=""> <i class="fab fa-linkedin"></i></a>
						</div>
				</div>
			</div>			
			<div class="col-md-3">
				<div class="card mt-4 p-2" style="background-color: lightgrey;">
					<i class="fas fa-user fa-5x mx-auto" style="color: #17A2C8;"></i>
					<h2 class="card-title text-secondary text-center">Purnima</h2>
					<h5 class="card-subtitle text-center">IT Officer</h5>
					<p class="text-justify">Hi, I am Purnima. Online Examination provides automation to overall exam process. It is essential to have team structure according to roles and Responsibilities to manage examination process.</p>
					<div class="d-flex justify-content-around">
						<a href=""> <i class="fab fa-facebook"></i></a>
						<a href=""> <i class="fab fa-twitter"></i></a>
						<a href=""> <i class="fab fa-instagram"></i></a>
						<a href=""> <i class="fab fa-linkedin"></i></a>
						</div>
				</div>
			</div>			
			<div class="col-md-3">
				<div class="card mt-4 p-2" style="background-color: lightgrey;">
					<i class="fas fa-user fa-5x mx-auto" style="color: #17A2C8;"></i>
					<h2 class="card-title text-secondary text-center">Chinmoy</h2>
					<h5 class="card-subtitle text-center">Manager</h5>
					<p class="text-justify">Hi, I am Chinmoy. Online Examination provides automation to overall exam process. It is essential to have team structure according to roles and Responsibilities to manage examination process.</p>
					<div class="d-flex justify-content-around">
						<a href=""> <i class="fab fa-facebook"></i></a>
						<a href=""> <i class="fab fa-twitter"></i></a>
						<a href=""> <i class="fab fa-instagram"></i></a>
						<a href=""> <i class="fab fa-linkedin"></i></a>
						</div>
				</div>
			</div>			
			<div class="col-md-3">
				<div class="card mt-4 p-2" style="background-color: lightgrey;">
					<i class="fas fa-user fa-5x mx-auto" style="color: #17A2C8;"></i>
					<h2 class="card-title text-secondary text-center">Beauty Sardar</h2>
					<h5 class="card-subtitle text-center">Director</h5>
					<p class="text-justify">Hi, I am Beauty Sardar. Online Examination provides automation to overall exam process. It is essential to have team structure according to roles and Responsibilities to manage examination process.</p>
					<div class="d-flex justify-content-around">
						<a href=""> <i class="fab fa-facebook"></i></a>
						<a href=""> <i class="fab fa-twitter"></i></a>
						<a href=""> <i class="fab fa-instagram"></i></a>
						<a href=""> <i class="fab fa-linkedin"></i></a>
						</div>
				</div>
			</div>
		</div>
		</section>


<!--last section-->
		<div class="row mx-auto bg-dark mt-5">

			<div class="col-md-3 mt-5">
				<h1 class="text-left text-primary" style="font-size: 18px">Latest From Blog</h1>
				<h2 class="text-left text-primary" style="font-size: 18px;">Online Examination</h2>
				<p class="text-white" style="font-size: 14px;">Thursday, 02 June 2021</p>
				<p class="text-white" style="font-size: 14px;">Examination Process has many steps including preparation of Question Bank for each subject/ topic, Defining Syllabus of the examination paper, Exam paper generation, defining candidates who would be appearing for the exam, Exam result analysis etc.</p>
			</div>

			<div class="col-md-3 mt-5 mb-4">
				<h1 class="text-left text-primary" style="font-size: 18px">Links</h1>
				<a href="home.php" class="text-info" style="font-size: 14px;">Top</a><br><br>
				<a href="#team" class="text-info" style="font-size: 14px;">Our team</a><br><br>
				<a href="admin/index.php" class="text-info" style="font-size: 14px;">Admin</a><br><br>
				<a href="user.php" class="text-info" style="font-size: 14px;">User</a><br><br>
			</div>

			<div class="col-md-3 mt-5">
				<h1 class="text-left text-primary" style="font-size: 18px">Office Details</h1>
				<p class="text-white mt-3" style="font-size: 14px;">Online Exam</p>
				<p class="text-white" style="font-size: 14px;">2 RN Road, Jashore</p>
				<p class="text-white" style="font-size: 14px;">Jashore Sadar, Jashore</p>
				<p class="text-white" style="font-size: 14px;">7400</p>
				<p class="text-white mt-3" style="font-size: 14px;">Tel: 1234 1234567890</p>
				<p class="text-white" style="font-size: 14px;">Fax: 12345 0123456789</p>
				<p class="text-white" style="font-size: 14px;">Email: online.exam@gmail.com</p>
			</div>

			<div class="col-md-3 mt-5">
				<h1 class="text-left text-primary" style="font-size: 18px">Support</h1><br>
				<a href="" class="text-info mt-5" style="font-size: 14px;">Privacy Policy</a><br><br>
				<a href="" class="text-info" style="font-size: 14px;">Terms and Conditions</a>
			</div>
		</div>


<div class="row mx-auto">
<div class="col-md-12" style="height:55px; background-color: black;">
<div class="d-flex justify-content-between">
<a href="" class="text-white mt-3">&copy;Online Examination System-2022</a>
<a href="" class="text-white mt-3">Powered By Prothama Sardar</a>
</div>	
</div>
</div>


</div>

<script src="js/jquery-3.5.1.slim.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</body>
</html>
