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

/* body{background-color:black;} */
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

#navimg {
	width: 6rem;
	height: 4rem;
}

@media screen and (max-width: 998px) {
	#navimg {
		display: none
	}
}

@media screen and (max-width: 768px) {
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
/* .logIn{
 display:flex;
 float:right;
 width:12.5%;
} */

</style>

</head>

<body>
<%@page import="com.Apex.dao.ApexContactDao,com.Apex.bin.ApexSignInBin"%>
	<% ApexSignInBin ce = new ApexSignInBin();
	
	try {
		int id = (int) session.getAttribute("userId");
		System.out.println("Name : " + id);
		if (id == 0)
			response.sendRedirect("apex.jsp");
		else {
			ce = ApexContactDao.GetRegisterById(id);
			//response.sendRedirect("apex.jsp");

			System.out.println("Name : " + ce.getName());
/* 			System.out.print("<script>alert('User Login Success')</script>");
 */		}

	} catch (Exception e) {
		System.out.println("exe : " + e.getLocalizedMessage());
	}

/* 	String nn = "Not login";
 */	%>




	<div id="home" class="container-fluid navbar ">
		<img id="navimg" src="image/gym.png" alt="">
		<div class="toogle" onclick="navToggle();"></div>
		<ul
			class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
			<li><a href="apex.jsp" class="nav-link px-2 text-white">Home</a></li>
			<li><a href="about.jsp" class="nav-link px-2 text-white">About</a></li>
			<li><a href="diet.jsp" class="nav-link px-2 text-white">Diet</a></li>
<!-- 			<li><a href="class-details.jsp" class="nav-link px-2 text-white">Classes</a></li>
 -->			<li><a href="gallery.jsp" class="nav-link px-2 text-white">Gallery</a></li>
		
	
			
			
			<li><a href="contact.jsp" class="nav-link px-2 text-white">Contact
					Us</a></li>
					
			<%-- <li><a href="contact.jsp" class="nav-link px-2 text-white">		
			 <select name="logIn" class="form-control bg-warning logIn">
				<option value="GoogleDrive"><%out.println(ce.getName()); %></option>
				<option value="Youtube">Youtube</option>
			</select></a></li> --%>
		

			
			
			
 			<li><a href="User.jsp" class="nav-link px-2 text-dark " style="border-radius:14px;"> <%
			if (ce.getName() == null) {
				System.out.println("Not Logined");

			} else {
				/* out.println(" <div class='dropdown'>"
				+ " <div class='nav-link' id='dropdownMenuButtonSM' data-bs-toggle='dropdown' aria-expanded='false'> "
				+ ce.getName() + " </div>" + "<div class='dropdown-menu' name='pcategory' style='width:70px'>"
				+ "<a class='dropdown-item me-4' href='profile.jsp'> Profile</a>"
				+ "<a class='dropdown-item me-4' href='logout.jsp'>Logout</a>" + "</div>"+"</div>"); */
				
		/* 		<label for="img">Video package:</label> <select
				name="packages" class="form-control">
				<option value="GoogleDrive">GoogleDrive</option>
				<option value="Youtube">Youtube</option>
			</select>  */
				
/* 				 out.println("<select name='packages' class='form-control bg-warning'>"+"<option>"+ce.getName()+"</option>"+"<option id='demo' onclick='myFunction()'>"+"<a href='Logout.jsp'>Logout</a> "+"</option></select>");
 */			
 out.println("<div class='bg-warning p-1' style='border-radius:13px;'>"+ce.getName()+"</div>");
			}
			%></a></li>
 	</ul>
	</div>
	
