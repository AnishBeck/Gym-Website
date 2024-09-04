<!DOCTYPE html>
<html lang="en">

<head>
<!-- Smartsupp Live Chat script -->
<script type="text/javascript">
	var _smartsupp = _smartsupp || {};
	_smartsupp.key = 'ce2e0ba72ac6f3a4d8909bc31e67a3ac88d87d71';
	window.smartsupp || (function(d) {
		var s, c, o = smartsupp = function() {
			o._.push(arguments)
		};
		o._ = [];
		s = d.getElementsByTagName('script')[0];
		c = d.createElement('script');
		c.type = 'text/javascript';
		c.charset = 'utf-8';
		c.async = true;
		c.src = 'https://www.smartsuppchat.com/loader.js?';
		s.parentNode.insertBefore(c, s);
	})(document);
</script>
<!-- Smartsupp Live Chat script -->



<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>APEX</title>
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.js">
<style>
* {
	scroll-behavior: smooth;
}

a {
	text-decoration: none;
	color: inherit;
}

.nHide {
	display: none;
}

#home {
	display: flex;
	position: fixed;
	overflow: hidden;
	top: 0px;
	z-index: 10;
	color: black;
}

.navbar.sticky {
	padding: 6px 60px;
	background: #0c1518;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
}

#log {
	float: right;
}

#home img {
	float: left;
}

#home li {
	margin-right: 3rem;
	font-weight: bolder;
	font-size: 1.2rem;
	border-radius: 20px;
}

#home li:hover {
	background-color: orangered;
}

.carousel-inner h2 {
	font-size: 3rem;
	font-weight: bolder;
	font-family: 'Times New Roman', Times, serif;
	color: orangered;
}

.carousel-inner h3 {
	font-weight: bolder;
	font-family: 'Times New Roman', Times, serif;
}

.carousel-inner .carousel-item  img {
	height: 60vh;
	width: 100%;
}

.carousel-inner .carousel-item>img {
	-webkit-animation: thing 20s;
	-o-animation: thing 20s;
	animation: thing 20s;
}


keyframes thing {
	from {transform: scale(1, 1);
}

to {
	transform: scale(1.5, 1.5);
}

}
.col .p-3 h2 {
	font-weight: bold;
}

h1 {
	font-weight: bolder;
	font-size: 3rem;
	padding: 3px;
	text-align: center;
	color: orangered;
}

.card {
	text-align: center;
	background-color: rgb(218, 218, 218);
	border-radius: 20px;
	box-shadow: 10px 10px 25px;
}

.card:hover {
	transition: all 0.3s ease;
	background-color: rgba(255, 118, 38, 0.9);
}

.card img {
	overflow: hidden;
	transition: all 1.5s ease;
}

.card:hover img {
	transform: scale(1.2)
}

.card-title {
	font-size: 2rem;
	font-weight: bold;
	font-family: 'Times New Roman', Times, serif;
	color: rgb(0, 226, 11);
	text-decoration: underline;
}

.inner {
	overflow: hidden;
}

.inner a {
	text-decoration: none;
	color: inherit;
}

.inner img {
	transition: all 1.5s ease;
}

.inner:hover img {
	transform: scale(1.2);
}

.price {
	font-size: 3rem;
}

.price span {
	font-size: 1rem;
}

.fas {
	font-family: wingdings;
	font-size: 200%;
	color: orangered;
}

.fa-times {
	font-family: wingdings;
	font-size: 200%;
	color: rgb(255, 255, 255);
}

@media screen and (max-width: 338px) {
	.carousel-caption h2 {
		font-size: 2.3rem;
	}
}

@media screen and (max-width: 509px) {
	.row .col-6 h1 {
		display: none;
	}
}

@media screen and (max-width: 995px) {
	.navbar {
		padding: 0 60px;
	}
	.navbar ul {
		display: none;
	}
	#navimg {
		display: none
	}
	.navbar .toogle {
		height: 25px;
		width: 25px;
		margin: auto 0;
		cursor: pointer;
		background: url(image/menu1.jpg);
		background-size: 25px;
		background-position: center;
		filter: invert(1);
		background-repeat: no-repeat;
	}
}

.navbar ul.active {
	top: 20px;
	left: 0;
	width: 100%;
	display: flex;
	position: fixed;
	background: #222;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.navbar ul.active li {
	margin: 8px;
}

.navbar ul.active li a {
	font-size: 25px;
}

.navbar .toggle.active {
	background: url(image/twitter.png);
	background-size: 40px;
	background-position: center;
	cursor: pointer;
	filter: invert(1);
}

.UserLog {
	position: fixed;
	top: 1;
	right: 1;
	width: 30px;
}
</style>
</head>
<%@page import="javax.websocket.Session"%>
<%@page import="com.Apex.dao.ApexContactDao,com.Apex.bin.ApexSignInBin"%>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<%-- <div id="home" class="container-fluid navbar ">
		<img id="navimg" src="image/gym.png"
			style="width: 6rem; height: 4rem;" alt="">
		<div class="toogle" onclick="navToggle();"></div>
		<ul
			class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
			<li><a href="#home" class="nav-link px-2 text-white">Home</a></li>
			<li><a href="about.jsp" class="nav-link px-2 text-white">About</a></li>
			<li><a href="diet.jsp" class="nav-link px-2 text-white">Diet</a></li>
			<li><a href="class-details.jsp" class="nav-link px-2 text-white">Classes</a></li>
			<li><a href="gallery.jsp" class="nav-link px-2 text-white">Gallery</a></li>
			<li><a href="contact.jsp" class="nav-link px-2 text-white">Contact
					Us</a></li>
				<li><a href="contact.jsp" class="nav-link px-2 text-white"><%ApexSignInBin ce = new ApexSignInBin();
			if (ce.getName() == null) {
				out.println("<a class='btn btn-success' href='apex.jsp/#logModal' ></a>");

			} else {
				out.println(" <div class='dropdown'>"
				+ " <div class='nav-link' id='dropdownMenuButtonSM' data-bs-toggle='dropdown' aria-expanded='false'> "
				+ ce.getName() + " </div>" + "<div class='dropdown-menu' name='pcategory' style='width:70px'>"
				+ "<a class='dropdown-item me-4' href='profile.jsp'> Profile</a>"
				+ "<a class='dropdown-item me-4' href='logout.jsp'>Logout</a>" + "</div>"+"</div>");
			}
			%></a></li>
		</ul>
	</div> --%>



	<!-- Admin login check -->
	<%
	ApexSignInBin ce = new ApexSignInBin();

	String username = request.getParameter("email");
	String password = request.getParameter("password");

	int loginId = ApexContactDao.AdminLogin(username, password);
	System.out.println("Logggggg " + loginId);
	if (loginId > 0) {
		session.setAttribute("userId", loginId);
		response.sendRedirect("apex.jsp");
		/* 		document.getElementById('btn1').hidden = true;
		 */
	} else {
		System.out.print("User Login Failed");
	}

	/*	String nn = "Not�login"; */
	%>

	<%-- <div class="UserLog"><%if (ce.getName() == null) {
	out.println("<a class='btn btn-success' href='apex.jsp/#logModal' ></a>");

} else {
	out.println(" <div class='dropdown'>"
	+ " <a class='nav-link' id='dropdownMenuButtonSM' data-bs-toggle='dropdown' aria-expanded='false'> "
	+ ce.getName() + " </a>" + "<div class='dropdown-menu' name='pcategory' style='width:70px'>"
	+ "<a class='dropdown-item me-4' href='profile.jsp'> Profile</a>"
	+ "<a class='dropdown-item me-4' href='logout.jsp'>Logout</a>" + "</div></div>");
} %></div> --%>
	<!--Log In Modal -->
	<div class="modal fade" id="logModal" tabindex="-1"
		aria-labelledby="logModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="background-color: darkgray">
				<div class="modal-header">
					<h5 class="modal-title" id="logModalLabel"
						style="font-weight: bolder; font-size: 2rem;">
						Log In to <span style="color: orangered; font-size: 3rem;">APEX</span>
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="apex.jsp" method="post">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Email
								address</label> <input type="email" name="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="name@example.com" required>
							<div id="emailHelp" class="form-text">We'll never share
								your email with anyone else.</div>
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Password</label>
							<input type="password" name="password" class="form-control"
								id="exampleInputPassword1" placeholder="password" required>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Check me out</label>
						</div>
						<button type="submit" class="btn btn-primary">LogIn</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- ----------------------------sign in modal----------------------------- -->
	<div class="modal fade" id="signModal" tabindex="-1"
		aria-labelledby="signModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="background-color: darkgray;">
				<div class="modal-header">
					<h5 class="modal-title"
						style="font-weight: bolder; font-size: 2rem;" id="signModalLabel">
						Sign In to <span style="color: orangered; font-size: 3rem;">APEX</span>
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="SignInAction.jsp" method="post">
						<div class="form-floating mb-3">
							<input type="text" name="name" class="form-control rounded-4"
								id="floatingInput" placeholder="name title" required>
							<label for="floatingInput">Full Name</label>
						</div>
						<div class="form-floating mb-3">
							<input type="email" name="email" class="form-control rounded-4"
								id="floatingInput" placeholder="name@example.com" required>
							<label for="floatingInput">Email address</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" name="gender" class="form-control rounded-4"
								id="floatingInput" placeholder="name@example.com" required>
							<label for="floatingInput">Gender</label>
						</div>
						<div class="form-floating mb-3">
							<input type="password" name="password"
								class="form-control rounded-4" id="floatingPassword"
								placeholder="Password" required> <label
								for="floatingPassword">Password</label>
						</div>
						<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
							type="submit">Sign In</button>
						<small class="text-muted">By clicking Sign up, you agree
							to the terms of use.</small>
						<hr class="my-4">
						<h2 class="fs-5 fw-bold mb-3">Or use a third-party</h2>
						<button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4"
							type="submit">
							<img src="image/twitter.png" class="img-fluid"
								style="height: 25px; width: 45px;" alt=""> Sign In with
							Google
						</button>
						<button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4"
							type="submit">
							<img src="image/facebook.png" class="img-fluid"
								style="height: 25px; width: 55px;" alt=""> Sign In with
							Facebook
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!-- --------------------------Crousel-------------------------- -->

	<div id="carouselExampleCaptions" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image/1crousel.jpg" class="d-block w-100 "
					style="height: 80vh;">
				<div class="carousel-caption ">
					<h3 class="animated fadeInDown" style="animation-delay: 1s;">Be
						Strong And</h3>
					<h2 id="head" class="animated fadeInRight"
						style="animation-delay: 2s;">Train Hard</h2>

					<%
					try {
						int logid = (int) session.getAttribute("userId");
						System.out.println("Session " + logid);
						if (logid == 0) {
							out.println("<button type='button' id='btn1' class='btn btn-warning animated fadeInDown'"
							+ "data-bs-toggle='modal' data-bs-target='#signModal'"
							+ "style='animation-delay: 0s;'>Join Us</button>");
						}
					} catch (Exception ex) {
						out.println("<button type='button' id='btn1' class='btn btn-warning animated fadeInDown'"
						+ "data-bs-toggle='modal' data-bs-target='#signModal'" + "style='animation-delay: 0s;'>Join Us</button>");

					}
					%>
					<!-- <button type="button" id="btn1" class="btn btn-warning animated fadeInDown"
						data-bs-toggle="modal" data-bs-target="#signModal"
						style="animation-delay: 0s;">Join Us</button> -->
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/2crousel.jpg" class="d-block w-100"
					style="height: 80vh;" alt="...">
				<div class="carousel-caption ">
					<h3 class="animated fadeInLeft" style="animation-delay: 1s;">Push</h3>
					<h2 class="animated fadeInRight" style="animation-delay: 2s;">Through</h2>
					<h3 class="animated fadeInLeft" style="animation-delay: 3s;">The
						Pain</h3>

					<%
					try {
						int logid = (int) session.getAttribute("userId");
						System.out.println("Session " + logid);
						if (logid == 0) {
							out.println("<button type='button' id='btn2' class='btn btn-warning animated fadeInDown'"
							+ "data-bs-toggle='modal' data-bs-target='#logModal'" + "style='animation-delay: 0s;'>Log In</button>");
						}
					} catch (Exception ex) {
						out.println("<button type='button' id='btn2' class='btn btn-warning animated fadeInDown'"
						+ "data-bs-toggle='modal' data-bs-target='#logModal'" + "style='animation-delay: 0s;'>Log In</button>");

					}
					%>
					<!-- <button type="button" id="btn2" class="btn btn-warning animated fadeInDown"
						data-bs-toggle="modal" data-bs-target="#logModal"
						style="animation-delay: 0s;">Log In</button> -->
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/3crousel.jpg" class="d-block w-100"
					style="height: 80vh;" alt="...">
				<div class="carousel-caption ">
					<h3 class="animated slideInRight" style="animation-delay: 1s;">Let's
						See</h3>
					<h2 class="animated fadeInUp" style="animation-delay: 2s;">How
						Far</h2>
					<h3 class="animated fadeInLeft" style="animation-delay: 3s;">You
						Can Go</h3>
					<%
					try {
						int logid = (int) session.getAttribute("userId");
						System.out.println("Session " + logid);
						if (logid == 0) {
							out.println("<button type='button' id='btn1' class='btn btn-warning animated fadeInDown'"
							+ "data-bs-toggle='modal' data-bs-target='#signModal'"
							+ "style='animation-delay: 0s;'>Join Us</button>");
						}
					} catch (Exception ex) {
						out.println("<button type='button' id='btn1' class='btn btn-warning animated fadeInDown'"
						+ "data-bs-toggle='modal' data-bs-target='#signModal'" + "style='animation-delay: 0s;'>Join Us</button>");

					}
					%>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<%@page
		import="com.Apex.dao.AdminCategoryDao,java.util.List,com.Apex.bin.AdminCategoryBin"%>
	<%
	List<AdminCategoryBin> list = AdminCategoryDao.GetList();
	%>
	<!-- Dynamically getting category details and using on card       -->
	<section class="para mt-2 pt-5 mb-5">
		<div class="container dyCard">
			<div class="row">

				<%
				for (AdminCategoryBin c : list)

					out.print("<div class='col-12 col-md-3 col-sm-6'>"
					+ " <a style='text-decoration:none;' href='ParticularCategory.jsp?id=" + c.getCategoryId() + "'>"
					+ "<div class='card bg-secondary m-3 inner'>" + "<img src='/Apex/admin" + c.getImage()
					+ "' class='card-img-top' alt='...'>" + "<div class='card-body'>" + "<h5 class='fs-4 fw-bold'>"
					+ c.getCategoryName() + "</h5>" + "<p class='card-text text-dark'>" + c.getCategoryDetails()
					+ "</p></div></div>  </a>  </div>");
				%>

			</div>
		</div>
	</section>

	<!-- <section class="para mt-2 pt-5 mb-5">
		<div class="container ">
			<div class="row">
				<div class="col-12 col-md-3 col-sm-6">
					<div class="card m-3 inner">
						<a href="ParticularCategory.jsp"> <img src="image/1para1.jpg"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="fs-4 fw-bold">Workout</h5>
								<p class="card-text text-muted">Some quick example text to
									build on the card title and make up the bulk of the card's
									content.</p>
							</div></a>
					</div>
				</div>
				<div class="col-12 col-md-3 col-sm-6">
					<div class="card m-3 inner">
						<a href="ParticularCategory.jsp"> <img src="image/1para2.jpg"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="fs-4 fw-bold">Yoga</h5>
								<p class="card-text text-muted">Some quick example text to
									build on the card title and make up the bulk of the card's
									content.</p>
							</div></a>
					</div>
				</div>
				<div class="col-12 col-md-3 col-sm-6">
					<div class="card m-3 inner">
						<a href="ParticularCategory.jsp"> <img src="image/1para3.jpg"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="fs-4 fw-bold">Calisthenic</h5>
								<p class="card-text text-muted">Some quick example text to
									build on the card title and make up the bulk of the card's
									content.</p>
							</div></a>
					</div>
				</div>
				<div class="col-12 col-md-3 col-sm-6">
					<div class="card m-3 inner">
						<a href="ParticularCategory.jsp"> <img src="image/1para4.jpg"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="fs-4 fw-bold">Stretching</h5>
								<p class="card-text text-muted">Some quick example text to
									build on the card title and make up the bulk of the card's
									content.</p>
							</div></a>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
	</section>



 -->
	<!-- ---------------------2nd Paragraph------------------------ -->
	<div class="row"
		style="background-color: black; margin-top: 3rem; color: white;">
		<div class="col-12 col-md-6 col-sm-12">
			<h1 id="about" style="margin-top: 3rem; font-size: 5rem;">ABOUT
				APEX</h1>
			<div style="text-align: center; margin-top: 2rem;">We’re not
				here to carry you to fitness, we’re here to motivate you</div>
			<div style="text-align: center;">to carry yourself to your
				goals.</div>

			<div style="text-align: center; margin-top: 2rem;">If you’re
				not sure what your goals are, or don’t know where to start</div>
			<div style="text-align: center;">on your fitness journey, come
				in and speak to one of our qualified</div>
			<div style="text-align: center;">trainers who can help you
				develop a plan.</div>
			<div style="margin-top: 3rem; text-align: center;">
				<button type="button" class="btn btn-warning btn-lg">Schedule</button>
			</div>
		</div>
		<div id="para" class="col-12 col-md-6 col-sm-12">
			<img src="image/2para.jpg" style="height: 70vh; width: 100%;" alt="">
		</div>
	</div>


	<!-- --------------------3rd Praagraph----------------------- -->
	<div class="container px-4" style="padding: 5rem 2px;">
		<div class="row gx-5">
			<div class="col-12 col-md-6 col-sm-12">
				<div class="p-3 ">
					<img src="image/3para.jpg" class="img-fluid"
						style="height: 50vh; width: 100%;" alt="">
				</div>
			</div>
			<div class="col-12 col-md-6 col-sm-12">
				<div class="p-3 ">
					<h2>WE'VE SKILL IN</h2>
					<H2 style="color: orangered;">WIDE RANGE OF FITNESS AND</H2>
					<H2>OTHER BODY HEALTH FACILITY.</H2>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Tempore ex beatae maxime numquam autem eaque laudantium quod
						facilis sit? Animi illo amet accusamus. Distinctio quasi,
						repudiandae rerum voluptas voluptate magnam libero, tempore, ad
						possimus autem totam sunt molestiae. Quos velit repellendus
						repudiandae ipsam qui explicabo officiis nemo magni deleniti
						magnam consectetur distinctio, soluta nostrum voluptates fuga nam
						suscipit beatae rerum, sunt in cum, tempore nobis. Explicabo
						molestiae libero nulla soluta!</p>
				</div>
			</div>
		</div>
	</div>


	<!-- --------------------4th Praagraph----------------------- -->
	<section class="pricing" id="pricing"
		style="background-color: rgb(61, 0, 0); color: white;">

		<div class="heading">
			<!-- <h6 style="color: orangered; font-weight: bold; text-align: center;">choose a plane</h6> -->
			<h1 style="padding: 2rem;">Find a Perfect Plan</h1>
		</div>

		<div class="box-container container">

			<div class="row">
				<div class="col-12 col-md-4 col-sm-12 text-center">
					<h3>Beginners Plan</h3>
					<div class="price">
						<span>$</span>30<span>/mo</span>
					</div>
					<!-- 	<button type="button" class="btn btn-warning">
						<a href="https://pmny.in/JImpM45QWuiA"
							style="text-decoration: none; color: black;">Choose Plan</a>
					</button> -->
					<div class="list">
						<p>
							<i class="fas fa-check">&#252</i> personal training
						</p>
						<p>
							<i class="fas fa-check">&#252</i> classes per week
						</p>
						<p>
							<i class="fas fa-check">&#252</i> access to gym
						</p>
						<p>
							<i class="fas fa-times">&#10008</i> protien powder
						</p>
						<p>
							<i class="fas fa-times">&#10008</i> membership
						</p>
					</div>
				</div>

				<div class="col-12 col-md-4 col-sm-12 text-center">
					<h3>Premium plan</h3>
					<div class="price">
						<span>$</span>60<span>/mo</span>
					</div>
					<!-- 	<button type="button" class="btn btn-warning">
						<a href="https://pmny.in/LIMoEbmyFCah"
							style="text-decoration: none; color: black;">Choose Plan</a>
					</button> -->
					<div class="list">
						<p>
							<i class="fas fa-check">&#252</i> personal training
						</p>
						<p>
							<i class="fas fa-check">&#252</i> classes per week
						</p>
						<p>
							<i class="fas fa-check">&#252</i> access to gym
						</p>
						<p>
							<i class="fas fa-check">&#252</i> protien powder
						</p>
						<p>
							<i class="fas fa-times">&#10008</i> membership
						</p>
					</div>
				</div>

				<div class="col-12 col-md-4 col-sm-12 text-center">
					<h3>Ultimate Plan</h3>
					<div class="price">
						<span>$</span>90<span>/mo</span>
					</div>
					<!-- 	<button type="button" class="btn btn-warning">
						<a href="https://pmny.in/xr8INku4s6gI"
							style="text-decoration: none; color: black;">Choose Plan</a>
					</button> -->
					<div class="list">
						<p>
							<i class="fas fa-check">&#252</i> personal training
						</p>
						<p>
							<i class="fas fa-check">&#252</i> classes per week
						</p>
						<p>
							<i class="fas fa-check">&#252</i> access to gym
						</p>
						<p>
							<i class="fas fa-check">&#252</i> protien powder
						</p>
						<p>
							<i class="fas fa-check">&#252</i> membership
						</p>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- --------------------End Part--------------------- -->
	<div class="container" style="padding: 6rem;">
		<h1 style="text-align: left; color: black;">ARE YOU READY FOR
			CHANGES?</h1>
		<div style="margin-top: 2rem;"></div>
		<button type="button" class="btn btn-lg btn-warning"
			data-bs-toggle="modal" data-bs-target="#signModal">MAKE
			IT HAPPEN</button>
	</div>


	<!-- --------------------Footer-------------------------- -->
	<div style="background-color: black; color: white;">
		<div class="container">
			<footer class="py-5">
				<div class="row">
					<div class="col-12 col-md-3 col-sm-12">
						<h1 style="text-align: left; margin-top: 0px;">APEX</h1>
						<ul class="nav flex-column">
							<div style="margin-top: 1rem;"></div>
							<li class="nav-item mb-2">apex@gmail.com</li>
							<li class="nav-item mb-2">123-456-7890</li>
							<li class="nav-item mb-2"></li>
							<div style="margin-top: 2rem;"></div>
							<li class="nav-item mb-2">123 Street</li>
							<li class="nav-item mb-2">City,Country</li>
						</ul>
					</div>

					<div class="col-12 col-md-3 col-sm-12">
						<h5 style="font-size: 2rem;">Section</h5>
						<ul class="nav flex-column">
							<li class="nav-item mb-2"><a href="apex.jsp"
								class="nav-link p-0 text-muted">Home</a></li>
							<li class="nav-item mb-2"><a href="gallery.jsp"
								class="nav-link p-0 text-muted">Gallery</a></li>
							<li class="nav-item mb-2"><a href="diet.jsp"
								class="nav-link p-0 text-muted">Diet</a></li>
							<li class="nav-item mb-2"><a href="contact.jsp"
								class="nav-link p-0 text-muted">Contact Us</a></li>
							<li class="nav-item mb-2"><a href="about.jsp"
								class="nav-link p-0 text-muted">About</a></li>
						</ul>
					</div>

					<div class="col-12 col-md-3 col-sm-12"></div>

					<div class="col-12 col-md-3 col-sm-12">
						<form>
							<h5>Subscribe to our newsletter</h5>
							<p>Monthly digest of whats new and exciting from us.</p>
							<div class="d-flex w-100 gap-2">
								<label for="newsletter1" class="visually-hidden">Email
									address</label> <input id="newsletter1" type="text"
									class="form-control" placeholder="Email address">
								<button class="btn btn-warning" type="button">Subscribe</button>
							</div>
						</form>
					</div>
				</div>

				<div class="d-flex justify-content-between py-4 my-4 border-top">
					<p>&copy; 2022 Company, Inc. All rights reserved.</p>
					<ul class="list-unstyled d-flex">
						<li class="ms-3"><a class="link-dark"
							href="https://www.facebook.com/goldsgym/"><img
								src="image/facebook.png" style="width: 4rem; height: 3rem;"
								alt=""></a></li>
						<li class="ms-3"><a class="link-dark"
							href="https://www.instagram.com/goldsgym/?hl=en"><img
								src="image/instagram.png" style="width: 3rem; height: 3rem;"
								alt=""></a></li>
						<li class="ms-3"><a class="link-dark"
							href="https://twitter.com/goldsgym"><img
								src="image/twitter.png" style="width: 4rem; height: 3rem;"
								alt=""></a></li>
					</ul>
				</div>
			</footer>
		</div>
	</div>



	<!-- --------------------JavaScript--------------------- -->
	<script src="bootstrap.bundle.min.js"></script>
	<script>
		window.addEventListener('scroll', function() {
			const navbar = document.querySelector('.navbar');
			navbar.classList.toggle("sticky", window.scrollY > 50);
		});

		const togglebar = document.querySelector('.toogle');
		const menu = document.querySelector('ul');

		function navToggle() {
			togglebar.classList.toggle("active");
			menu.classList.toggle("active");
		}
	</script>

</body>

</html>