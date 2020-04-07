<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
<title>Trang chủ</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="<%=request.getContextPath()%>/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/vendor/owl.carousel/<%=request.getContextPath()%>/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top d-flex align-items-center">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">
				<h1>
					<a href="index.html"> ABC Group </a>
				</h1>

			</div>

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a href="#header">Home</a></li>
					<li><a href="#testimonials">Cofounder</a></li>
					<li><a href="#Top10">Top 6</a></li>
					<li><a href="#contact">Contact Us</a></li>

				</ul>
			</nav>
			<!-- .nav-menu -->


		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="d-flex flex-column justify-content-center align-items-center">
		<div class="container text-center text-md-left" data-aos="fade-up">
			<h1>
				Welcome to <span> ABC Group </span>
			</h1>
			<h2>We are the top talented design team in Vietnam</h2>
			<a href="../log/dangnhap.htm" class="btn-get-started scrollto">Sign
				In<i class="fa fa-sign-in"></i>
			</a>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main"> <!-- ======= What We Do Section ======= -->
	<section id="what-we-do" class="what-we-do">
		<div class="container">

			<div class="section-title">
				<h2>What We Do</h2>
				<p>Magnam dolores commodi suscipit consequatur ex aliquid</p>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="icon-box">
						<div class="icon">
							<i class="fa fa-dribbble" style="font-size: 48px; color: red"></i>
						</div>
						<h4>
							<a href="">Lorem Ipsum</a>
						</h4>
						<p>Voluptatum deleniti atque corrupti quos dolores et quas
							molestias excepturi</p>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
					<div class="icon-box">
						<div class="icon">
							<i class="fa fa-file" style="font-size: 48px; color: red"></i>
						</div>
						<h4>
							<a href="">Sed ut perspiciatis</a>
						</h4>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore</p>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
					<div class="icon-box">
						<div class="icon">
							<i class="fa fa-tachometer" style="font-size: 48px; color: red"></i>
						</div>
						<h4>
							<a href="">Magni Dolores</a>
						</h4>
						<p>Excepteur sint occaecat cupidatat non proident, sunt in
							culpa qui officia</p>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- End What We Do Section --> <!-- ======= About Section ======= -->
	<section id="about" class="about">
		<div class="container">

			<div class="row">
				<div class="col-lg-6">
					<img src="<%=request.getContextPath()%>/assets/img/about.jpg"
						class="img-fluid" alt="">
				</div>
				<div class="col-lg-6 pt-4 pt-lg-0">
					<h3>About Us</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<ul>
						<li><i class="	fa fa-check-square-o"></i> Ullamco laboris nisi
							ut aliquip ex ea commodo consequat.</li>
						<li><i class="	fa fa-check-square-o"></i> Duis aute irure dolor
							in reprehenderit in voluptate velit.</li>
					</ul>
					<div class="row icon-boxes">
						<div class="col-md-6">
							<i class="fa fa-wpforms" ></i>
							<h4>Corporis voluptates sit</h4>
							<p>Consequuntur sunt aut quasi enim aliquam quae harum
								pariatur laboris nisi ut aliquip</p>
						</div>
						<div class="col-md-6 mt-4 mt-md-0">
							<i class="fa fa-codepen"></i>
							<h4>Ullamco laboris nisi</h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia deserunt</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- End About Section --> <!-- ======= Skills Section ======= -->
	<section id="skills" class="skills">
		<div class="container">

			<div class="row skills-content">

				<div class="col-lg-6">

					<div class="progress">
						<span class="skill">HTML <i class="val">100%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<span class="skill">CSS <i class="val">90%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="90"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<span class="skill">JavaScript <i class="val">75%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="75"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

				</div>

				<div class="col-lg-6">

					<div class="progress">
						<span class="skill">PHP <i class="val">80%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="80"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<span class="skill">WordPress/CMS <i class="val">90%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="90"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

					<div class="progress">
						<span class="skill">Photoshop <i class="val">55%</i></span>
						<div class="progress-bar-wrap">
							<div class="progress-bar" role="progressbar" aria-valuenow="55"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>

				</div>

			</div>

		</div>
	</section>
	<!-- End Skills Section --> <!-- ======= Counts Section ======= -->
	<section id="counts" class="counts">
		<div class="container">

			<div class="row">

				<div class="col-lg-3 col-6">
					<div class="count-box">
						<i class="	fa fa-smile-o"></i> <span data-toggle="counter-up">232</span>
						<p>Happy Clients</p>
					</div>
				</div>

				<div class="col-lg-3 col-6">
					<div class="count-box">
						<i class="fa fa-file-archive-o"></i> <span data-toggle="counter-up">521</span>
						<p>Projects</p>
					</div>
				</div>

				<div class="col-lg-3 col-6 mt-5 mt-lg-0">
					<div class="count-box">
						<i class="fa fa-support"></i> <span
							data-toggle="counter-up">1,463</span>
						<p>Hours Of Support</p>
					</div>
				</div>

				<div class="col-lg-3 col-6 mt-5 mt-lg-0">
					<div class="count-box">
						<i class="fa fa-users"></i> <span data-toggle="counter-up">15</span>
						<p>Hard Workers</p>
					</div>
				</div>

			</div>

		</div>
	</section>


	<section id="portfolio" class="portfolio">
		<div class="container">

			<div class="section-title">
				<h2>Product</h2>
				<p>We bring the best Products to customers</p>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<ul id="portfolio-flters">
						<li data-filter="*" class="filter-active">All</li>
						<li data-filter=".filter-app">App</li>
						<li data-filter=".filter-card">Card</li>
						<li data-filter=".filter-web">Web</li>
					</ul>
				</div>
			</div>

			<div class="row portfolio-container">

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-1.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-1.jpg"
								data-gall="portfolioGallery" class="link-preview venobox"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">App 1</a>
							</h4>
							<p>App</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-2.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-2.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Web 3</a>
							</h4>
							<p>Web</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-3.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-3.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">App 2</a>
							</h4>
							<p>App</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-4.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-4.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Card 2</a>
							</h4>
							<p>Card</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-5.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-5.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Web 2</a>
							</h4>
							<p>Web</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-6.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-6.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">App 3</a>
							</h4>
							<p>App</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-7.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-7.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Card 1</a>
							</h4>
							<p>Card</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-8.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-8.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Card 3</a>
							</h4>
							<p>Card</p>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="portfolio-wrap">
						<figure>
							<img
								src="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-9.jpg"
								class="img-fluid" alt="">
							<a
								href="<%=request.getContextPath()%>/assets/img/portfolio/portfolio-9.jpg"
								class="link-preview venobox" data-gall="portfolioGallery"
								title="Preview"><i class="	fa fa-eye"
								style="font-size: 24px"></i></a>
							<a href="portfolio-details.html" class="link-details"
								title="More Details"><i class="fa fa-plus"
								style="font-size: 24px"></i></a>
						</figure>

						<div class="portfolio-info">
							<h4>
								<a href="portfolio-details.html">Web 1</a>
							</h4>
							<p>Web</p>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- End Portfolio Section --> <!-- ======= Testimonials Section ======= -->

	<!-- End Testimonials Section --> <!-- ======= Team Section ======= -->
	<section id="Top10" class="team">
		<div class="container">

			<div class="section-title">
				<h2>Top 6 Best People</h2>
				<p>Employee Trying To Be The Best In The ABC Group</p>
			</div>

			<div class="row">
				<c:forEach var="a" items="${arrays}">
					<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<img
								src="<%=request.getContextPath()%>/assets/img/team/team-1.jpg"
								alt="">
							<h4>${a[0]}</h4>
							<span>${a[1]}</span>
							<%-- <p>${a[4]}</p> --%>
							<div class="social">
								<button class="btn btn-success">
									<a href="#" style="color: white">See Detail</a>
								</button>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>

		</div>
	</section>
	<!-- End Team Section --> <!-- ======= Contact Section ======= -->
	<section id="contact" class="contact section-bg">
		<div class="container">

			<div class="section-title">
				<h2>Contact</h2>
				<p>Magnam dolores commodi suscipit eius consequatur ex aliquid
					fuga</p>
			</div>

			<div class="row mt-5 justify-content-center">

				<div class="col-lg-10">

					<div class="info-wrap">
						<div class="row">
							<div class="col-lg-4 info">
								<i class="fa fa-map-marker"></i>
								<h4>Location:</h4>
								<p>
									A108 Adam Street<br>New York, NY 535022
								</p>
							</div>

							<div class="col-lg-4 info mt-4 mt-lg-0">
								<i class="fa fa-envelope"></i>
								<h4>Email:</h4>
								<p>
									info@example.com<br>contact@example.com
								</p>
							</div>

							<div class="col-lg-4 info mt-4 mt-lg-0">
								<i class="fa fa-volume-control-phone"></i>
								<h4>Call:</h4>
								<p>
									+1 5589 55488 51<br>+1 5589 22475 14
								</p>
							</div>
						</div>
					</div>

				</div>

			</div>

			<div class="row mt-5 justify-content-center">
				<div class="col-lg-10">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Your Name" data-rule="minlen:4"
									data-msg="Please enter at least 4 chars" />
								<div class="validate"></div>
							</div>
							<div class="col-md-6 form-group">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Your Email" data-rule="email"
									data-msg="Please enter a valid email" />
								<div class="validate"></div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of subject" />
							<div class="validate"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validate"></div>
						</div>
						<div class="mb-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your message has been sent. Thank
								you!</div>
						</div>
						<div class="text-center">
							<button type="submit">Send Message</button>
						</div>
					</form>
				</div>

			</div>

		</div>
	</section>
	<!-- End Contact Section --> </main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>ABC Group</h3>
						<p>
							A108 Adam Street <br> New York, NY 535022<br> United
							States <br> <br> <strong>Phone:</strong> +1 5589 55488
							55<br> <strong>Email:</strong> info@example.com<br>
						</p>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Home</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">About us</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Terms of service</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Privacy policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Web Design</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Web Development</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Product Management</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Marketing</a></li>
							<li><i class="fa fa-chevron-right" style="font-size: 12px"></i></i>
								<a href="#">Graphic Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Join Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>
					</div>

				</div>
			</div>
		</div>

		<div class="container d-md-flex py-4">

			<div class="mr-md-auto text-center text-md-left">
				<div class="copyright">
					&copy; Copyright <strong><span> ABC Group </span></strong>. All
					Rights Reserved
				</div>
				<div class="credits">

					Designed by <a href="#">HuynhManhThang</a>
				</div>
			</div>
			<!-- 			<div class="social-links text-center text-md-right pt-3 pt-md-0"> -->
			<!-- 				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a -->
			<!-- 					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a -->
			<!-- 					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a -->
			<!-- 					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a -->
			<!-- 					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> -->
			<!-- 			</div> -->
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="fa fa-upload"
		style="font-size: 36px; color: white"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/php-email-form/validate.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/counterup/counterup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/venobox/venobox.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

	<!-- Template Main JS File -->
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</body>

</html>