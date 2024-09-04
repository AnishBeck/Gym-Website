<%-- <jsp:include page="header.jsp"></jsp:include>--%>
<script src=”https://code.jquery.com/jquery-3.6.0.min.js”
	integrity=”sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=”
	crossorigin=”anonymous”></script>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*,java.text.SimpleDateFormat,java.text.DateFormat" %>

<style>
body {
	background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}

.emp-profile {
	padding: 3%;
	margin-top: 3%;
	margin-bottom: 3%;
	border-radius: 0.5rem;
	background: #fff;
}

.profile-img {
	text-align: center;
}

.profile-img img {
	width: 70%;
	height: 100%;
}

.profile-img .file {
	position: relative;
	overflow: hidden;
	margin-top: -20%;
	width: 70%;
	border: none;
	border-radius: 0;
	font-size: 15px;
	background: #212529b8;
}

.profile-img .file input {
	position: absolute;
	opacity: 0;
	right: 0;
	top: 0;
}

.profile-head h5 {
	color: #333;
}

.profile-head h6 {
	color: #0062cc;
}

.profile-edit-btn {
	border: none;
	border-radius: 1.5rem;
	width: 70%;
	padding: 2%;
	font-weight: 600;
	cursor: pointer;
}

.proile-rating {
	font-size: 12px;
	color: #818182;
	margin-top: 5%;
}

.proile-rating span {
	color: #495057;
	font-size: 15px;
	font-weight: 600;
}

.profile-head .nav-tabs {
	margin-bottom: 5%;
}

.profile-head .nav-tabs .nav-link {
	font-weight: 600;
	border: none;
}

.profile-head .nav-tabs .nav-link.active {
	border: none;
	border-bottom: 2px solid #0062cc;
}

.profile-work {
	padding: 14%;
	margin-top: -15%;
}

.profile-work p {
	font-size: 12px;
	color: #818182;
	font-weight: 600;
	margin-top: 10%;
}

.profile-work a {
	text-decoration: none;
	color: #495057;
	font-weight: 600;
	font-size: 14px;
}

.profile-work ul {
	list-style: none;
}

.profile-tab label {
	font-weight: 600;
}

.profile-tab p {
	font-weight: 600;
	color: #0062cc;
}

/* Quotes Generator Start */
#generator {
	background:
		url('https://www.danielcole.co.uk/media/img/quotegen_background.jpg')
		center center fixed no-repeat;
	background-size: cover;
	background-color: #black;
	min-height: 100%;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
}

#quoteMobile {
	margin-top: 0px;
	text-shadow: 0px 0px 20px white;
}

#quoteDesktop {
	margin-top: 0px;
	text-shadow: 0px 0px 20px white;
}

#quoteAuthorMobile {
	font-weight: bold;
	font-style: italic;
	text-shadow: 0px 0px 10px white;
}

#quoteAuthorDesktop {
	font-style: italic;
	text-shadow: 0px 0px 10px white;
}
/* Quotes Generator End */

/* Edit Profile Modal Starts */

/* Edit Profile Modal Ends */
</style>

<%@page import="com.Apex.dao.ApexContactDao,com.Apex.bin.ApexSignInBin"%>
<jsp:useBean id="c" class="com.Apex.bin.ApexSignInBin"></jsp:useBean>
<jsp:setProperty property="*" name="c" />
<%
ApexSignInBin ce = new ApexSignInBin();

//for changing profile image
try {
	int id = (int) session.getAttribute("userId");
	MultipartRequest m = new MultipartRequest(request,
	"c:/Users/Anish Beck/eclipse-workspace/Apex/src/main/webapp/admin/uploadimage");
	ce.setId(id);
	ce.setProfileImage("/uploadimage/" + m.getOriginalFileName("profileImage"));
	
	
	int status = ApexContactDao.updateImage(ce);
	
} catch (Exception ex) {
	System.out.print("Failed Image upload :" +ex.getLocalizedMessage());
}

//for updating and insert phone,address,profession of user in signin table
try {
	if (request.getParameter("id") != null) {
		ce.setPhone(request.getParameter("phone"));
		ce.setAddress(request.getParameter("address"));
		ce.setProfession(request.getParameter("profession"));
		ce.setId(Integer.parseInt(request.getParameter("id")));

		int status = ApexContactDao.updateUser(ce);
		if (status > 0) {
	out.print("<script>alert('User Details Update')</script>");

		} else {
	out.print("<script>alert('User Details Not Update')</script>");
		}
	}
} catch (Exception ex) {

}

//getting the session id
try {
	int id = (int) session.getAttribute("userId");
	System.out.println("Name : " + id);
	if (id == 0)
		response.sendRedirect("apex.jsp");
	else {
		ce = ApexContactDao.GetRegisterById(id);
		//response.sendRedirect("apex.jsp");
		System.out.println("asdf " + ce.getAddress());

		System.out.println("Name : " + ce.getName());
		/* 		out.print("<script>alert('User Login Success')</script>");
		 */
	}

} catch (Exception e) {
	System.out.println("exe : " + e.getLocalizedMessage());
}


%>

<!-- Checking session if 0 then send back to home page -->
<%
	try {

		int id = (int) session.getAttribute("userId");
		
		System.out.println("Sessio "+id);
		if(id>0)
		{
			
		}else{
			response.sendRedirect("apex.jsp");
			
		}
		
	} catch (Exception ex) {
		response.sendRedirect("apex.jsp");
	}
	%>

<!--Modal: modalConfirmDelete-->
<div class="modal fade" id="modalConfirmDelete" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm modal-notify modal-danger"
		role="document">
		<!--Content-->
		<div class="modal-content text-center">
			<!--Header-->
			<div
				class="modal-header d-flex justify-content-center bg-primary text-light">
				<p class="heading">Are you sure?</p>
			</div>

			<!--Body-->
			<div class="modal-body">

				<i class="fas fa-times fa-4x animated rotateIn"
					style="animation-delay: .3s;"></i>

			</div>

			<!--Footer-->
			<div class="modal-footer flex-center bg-primary">
				<a href="Logout.jsp" class="btn  btn-danger">Yes</a> <a
					type="button" class="btn  btn-outline-danger waves-effect"
					data-dismiss="modal">No</a>
			</div>
		</div>
		<!--/.Content-->
	</div>
</div>
<!--Modal: modalConfirmDelete-->



<!-- Modal to Edit Profile Starts -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">New message</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="User.jsp" method="post">

					<!-- Getting CategoryId which is of hidden type -->
					<input type="hidden" class="form-control" id="customFile" name="id"
						value="<%=ce == null ? ' ' : ce.getId()%>">

					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Phone:</label>
						<input type="text" class="form-control" id="Phone" name="phone"
							<%if (ce.getPhone() == null) {
	out.println("placeholder='Enter your phone no.'");
} else {
	out.println("value='" + ce.getPhone() + "'");
}%>
            
           <%--  value="<%=ce.getPhone() == null ? ' ' :ce.getPhone()%>" --%> required>
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Full
							Address:</label> <input type="text" class="form-control" id="Phone"
							name="address"
							<%if (ce.getAddress() == null) {
	out.println("placeholder='Enter your Full Address '");
} else {
	out.println("value='" + ce.getAddress() + "'");
}%>
							required>
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Profession:</label>
						<input type="text" class="form-control" id="Profession"
							name="profession"
							<%if (ce.getProfession() == null) {
	out.println("placeholder='Enter your Profession'");
} else {
	out.println("value='" + ce.getProfession() + "'");
}%>
							required>
					</div>
					<div class="modal-footer">
						<input type="submit" value="Submit"
							class="btn btn-warning rounded-4">
					</div>
				</form>
			</div>

		</div>
	</div>
</div>

<!-- Modal to Edit Profile Ends -->



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container emp-profile">
	<form method="post" action="User.jsp" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-4">
				<div class="profile-img">
<!-- 				 	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt="" /> 
 --> 						
 <%
 if(ce.getProfileImage()== null){
	 out.println("<img src='https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'>");
 }else{
	 out.println("<img src='/Apex/admin"+ce.getProfileImage()+"'>");
 }
 %>
<%--  <img alt="" src="/Apex/admin<%=ce.getProfileImage()%>">
 --%> 					<div class="file btn btn-lg btn-primary" id="btnClick">
						Choose Photo <input type="file" name="profileImage" accept="image/*"/>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="profile-head">
					<h5>
						<%=ce.getName()%>
					</h5>
					<h6>Web Developer and Designer</h6>
					<p class="proile-rating">
						RANKINGS : <span>8/10</span>
					</p>



					<!-- Tab of Bootstrap -->
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="home-tab"
							data-toggle="tab" href="#home" role="tab" aria-controls="home"
							aria-selected="true">About</a></li>
						<li class="nav-item"><a class="nav-link" id="profile-tab"
							data-toggle="tab" href="#profil" role="tab"
							aria-controls="profile" aria-selected="false">Timeline</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2">
				<!-- <input type="submit" class="profile-edit-btn" name="btnAddMore"
					value="Edit Profile" /> -->
				<button type="button" class="profile-edit-btn btn btn-primary"
					name="btnAddMore" data-toggle="modal" data-target="#exampleModal"
					data-whatever="@getbootstrap">Edit Profile</button>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">


				<div class="profile-work">
					<!--  -----------------------------------Submit Button---------------------------------------------------------  -->
					<p>
						<input type="submit" value="Submit" id="show"
							class="btn bg-primary text-light" style="display: none;">
					</p>
	</form>

	<p>Motivational Quotes</p>


	<div id="generator" class="container-fluid">
		<div id="quoteDesktop" class="row">
			<div
				class="col-xs-10 col-xs-offset-1 visible-sm visible-md visible-lg">
				<h1 id="quoteBodyDesktop" style="font-size: 1rem"></h1>
				<h3 id="quoteAuthorDesktop" style="font-size: 0.6rem; color: blue;"></h3>
			</div>
		</div>
		<!--  <div id="quoteMobile" class="row">
    <div class="col-xs-10 col-xs-offset-1 visible-xs">
      <h3 id="quoteBodyMobile"></h3>
      <h5 id="quoteAuthorMobile"></h5>
    </div>
  </div> -->
		<p>
			<button type="button" class="btn btn-warning" data-toggle="modal"
				data-target="#modalConfirmDelete">LogOut</button>
		</p>

	</div>
	<!-- <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/> -->

</div>
</div>
<div class="col-md-8">
	<div class="tab-content profile-tab" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
			<div class="row">
				<div class="col-md-6">
					<label>User Id</label>
				</div>
				<div class="col-md-6">
					<p><%=ce.getId()%>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Name</label>
				</div>
				<div class="col-md-6">
					<p><%=ce.getName()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Email</label>
				</div>
				<div class="col-md-6">
					<p><%=ce.getEmail()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Gender</label>
				</div>
				<div class="col-md-6">
					<p><%=ce.getGender()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Phone</label>
				</div>
				<div class="col-md-6">
					<p>
						<%=ce.getPhone() == null ? ' ' : ce.getPhone()%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Full Address</label>
				</div>
				<div class="col-md-6">
					<p>
						<%=ce.getAddress() == null ? ' ' : ce.getAddress()%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Profession</label>
				</div>
				<div class="col-md-6">
					<p>
						<%=ce.getProfession() == null ? ' ' : ce.getProfession()%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label><%=ce.getPackage() == null ? ' ' :ce.getPackage() %></label>
				</div>
				<div class="col-md-6">
					<p></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label><%=ce.getPlan() == null ? ' ' :ce.getPlan() %></label>
				</div>
				<div class="col-md-6">
					<p></p>
				</div>
			</div>
			
		</div>

		<script type="text/javascript">
			$(document).ready(function() {
				$("#btnClick").click(function() {
					$("#show").show();
				});
			});
		</script>

		<div class="tab-pane fade" id="profil" role="tabpanel"
			aria-labelledby="profile-tab">
			<div class="row">
				<div class="col-md-6">
					<label>Experience</label>
				</div>
				<div class="col-md-6">
					<p>
					<%
					 
			         
			         DateFormat df = new SimpleDateFormat("dd/MM/yy");
			         Date dateobj = new Date();
			         out.println(df.format(dateobj));
					%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Hourly Rate</label>
				</div>
				<div class="col-md-6">
					<p>
					<%
					 Date date = new Date();
			         out.print( "<h2 align = \"center\">" +date.toString()+"</h2>");
					%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Total Projects</label>
				</div>
				<div class="col-md-6">
					<p>230</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>English Level</label>
				</div>
				<div class="col-md-6">
					<p>Expert</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label>Availability</label>
				</div>
				<div class="col-md-6">
					<p>6 months</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<label>Your Bio</label><br />
					<p>Your detail description</p>
				</div>
			</div>
		</div>
	</div>
</div>
</div>

</div>

<script type="text/javascript">
	//Function to pick a quote and corresponding author based on the random integer, then populate the quote HTML elements
	function quote() {
		//Array to store the list of quotes
		var quoteArray = [
				"Success is most often achieved by those who don't know that failure is inevitable.",
				"Things work out best for those who make the best of how things work out.",
				"Courage is grace under pressure.",
				"If you are not willing to risk the usual, you will have to settle for the ordinary.",
				"Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.",
				"Take up one idea. Make that one idea your life -- think of it, dream of it, live on that idea. Let the brain, muscles, nerves, every part of your body be full of that idea, and just leave every other idea alone. This is the way to success.",
				"Sometimes you can't see yourself clearly until you see yourself through the eyes of others.",
				"All our dreams can come true if we have the courage to pursue them.",
				"It does not matter how slowly you go, so long as you do not stop.",
				"Success is walking from failure to failure with no loss of enthusiasm.",
				"Someone is sitting in the shade today because someone planted a tree a long time ago.",
				"Whenever you see a successful person, you only see the public glories, never the private sacrifices to reach them.",
				"Don't cry because it's over, smile because it happened.",
				"Success? I don't know what that word means. I'm happy. But success, that goes back to what in somebody's eyes success means. For me, success is inner peace. That's a good day for me.",
				"You only live once, but if you do it right, once is enough.",
				"Opportunities don't happen. You create them.",
				"Once you choose hope, anything's possible.",
				"Try not to become a person of success, but rather try to become a person of value.",
				"There is no easy walk to freedom anywhere, and many of us will have to pass through the valley of the shadow of death again and again before we reach the mountaintop of our desires.",
				"It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.",
				"The best and most beautiful things in the world cannot be seen or even touched -- they must be felt with the heart.",
				"Great minds discuss ideas; average minds discuss events; small minds discuss people.",
				"Live as if you were to die tomorrow. Learn as if you were to live forever.",
				"The best revenge is massive success.",
				"The difference between winning and losing is most often not quitting.",
				"I have not failed. I've just found 10,000 ways that won't work.",
				"When you cease to dream you cease to live.",
				"A successful man is one who can lay a firm foundation with the bricks others have thrown at him.",
				"May you live every day of your life.",
				"No one can make you feel inferior without your consent.",
				"Failure is another steppingstone to greatness.",
				"The whole secret of a successful life is to find out what is one's destiny to do, and then do it.",
				"If you're not stubborn, you'll give up on experiments too soon. And if you're not flexible, you'll pound your head against the wall and you won't see a different solution to a problem you're trying to solve.",
				"If you're going through hell, keep going.",
				"In order to be irreplaceable one must always be different.",
				"What seems to us as bitter trials are often blessings in disguise.",
				"You miss 100 percent of the shots you don't take.",
				"The distance between insanity and genius is measured only by success.",
				"The way I see it, if you want the rainbow, you gotta put up with the rain.",
				"To me, business isn't about wearing suits or pleasing stockholders. It's about being true to yourself, your ideas and focusing on the essentials.",
				"The longer I live, the more beautiful life becomes.",
				"Happiness is a butterfly, which when pursued, is always beyond your grasp, but which, if you will sit down quietly, may alight upon you.",
				"You must expect great things of yourself before you can do them.",
				"If you can't explain it simply, you don't understand it well enough.",
				"You can't please everyone, and you can't make everyone like you.",
				"There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.",
				"I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.",
				"Start where you are. Use what you have. Do what you can.",
				"Don't limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.",
				"People ask, 'What's the best role you've ever played?' The next one.",
				"The two most important days in your life are the day you are born and the day you find out why.",
				"I find that the harder I work, the more luck I seem to have.",
				"It often requires more courage to dare to do right than to fear to do wrong.",
				"Success is the sum of small efforts, repeated day-in and day-out.",
				"As you grow older, you will discover that you have two hands, one for helping yourself, the other for helping others.",
				"If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work.",
				"If your actions inspire others to dream more, learn more, do more, and become more, you are a leader.",
				"All progress takes place outside the comfort zone.",
				"The more you praise and celebrate your life, the more there is in life to celebrate.",
				"You may only succeed if you desire succeeding; you may only fail if you do not mind failing.",
				"A dream doesn't become reality through magic; it takes sweat, determination, and hard work.",
				"Only put off until tomorrow what you are willing to die having left undone.",
				"The biggest risk is not taking any risk... In a world that's changing really quickly, the only strategy that is guaranteed to fail is not taking risks.",
				"We become what we think about most of the time, and that's the strangest secret.",
				"Do one thing every day that scares you.",
				"The only place where success comes before work is in the dictionary.",
				"Don't be afraid to give up the good to go for the great.",
				"Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it.",
				"Don't worry about failure; you only have to be right once.",
				"Though no one can go back and make a brand-new start, anyone can start from now and make a brand-new ending.",
				"Nothing great was ever achieved without enthusiasm.",
				"Twenty years from now you will be more disappointed by the things that you didn't do than by the ones you did do. So throw off the bowlines. Sail away from the safe harbor. Catch the trade winds in your sails. Explore. Dream. Discover.",
				"Keep your face to the sunshine and you can never see the shadow.",
				"The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself.",
				"One of the greatest diseases is to be nobody to anybody.",
				"Identity is a prison you can never escape, but the way to redeem your past is not to run from it, but to try to understand it, and use it as a foundation to grow.",
				"The successful warrior is the average man, with laser-like focus.",
				"Rarely have I seen a situation where doing less than the other guy is a good strategy.",
				"If you always do what interests you, at least one person is pleased.",
				"Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.",
				"I avoid looking forward or backward, and try to keep looking upward.",
				"You can't connect the dots looking forward; you can only connect them looking backward. So you have to trust that the dots will somehow connect in your future. You have to trust in something -- your gut, destiny, life, karma, whatever. This approach has never let me down, and it has made all the difference in my life.",
				"Life is short, and it is here to be lived.",
				"Everything you can imagine is real.",
				"Change will not come if we wait for some other person or some other time. We are the ones we've been waiting for. We are the change that we seek.",
				"If you want to make a permanent change, stop focusing on the size of your problems and start focusing on the size of you!",
				"Successful people do what unsuccessful people are not willing to do. Don't wish it were easier; wish you were better.",
				"It is never too late to be what you might have been.",
				"If you love what you do and are willing to do what it takes, it's within your reach. And it'll be worth every minute you spend alone at night, thinking and thinking about what it is you want to design or build.",
				"In my experience, there is only one motivation, and that is desire. No reasons or principle contain it or stand against it.",
				"In the midst of movement and chaos, keep stillness inside of you.",
				"Success does not consist in never making mistakes but in never making the same one a second time.",
				"I don't want to get to the end of my life and find that I lived just the length of it. I want to have lived the width of it as well.",
				"As we look ahead into the next century, leaders will be those who empower others.",
				"Our greatest fear should not be of failure... but of succeeding at things in life that don't really matter.",
				"Be yourself. Everyone else is already taken.",
				"If you don't design your own life plan, chances are you'll fall into someone else's plan. And guess what they have planned for you? Not much.",
				"But you have to do what you dream of doing even while you're afraid.",
				"To be successful, you must accept all challenges that come your way. You can't just accept the ones you like.",
				"Be patient with yourself. Self-growth is tender; it's holy ground. There's no greater investment.",
				"Many of life's failures are people who did not realize how close they were to success when they gave up.",
				"If you can copy and paste one hundred and one inspirational quotes, you can do anything" ]
		//Array to store the corresponding quote authors
		var authorArray = [ "Coco Chanel", "John Wooden", "Ernest Hemingway",
				"Jim Rohn", "Albert Einstein", "Swami Vivekananda",
				"Ellen DeGeneres", "Walt Disney", "Confucius",
				"Winston Churchill", "Warren Buffett", "Vaibhav Shah",
				"Dr. Seuss", "Denzel Washington", "Mae West", "Chris Grosser",
				"Christopher Reeve", "Albert Einstein", "Nelson Mandela",
				"Charles Darwin", "Helen Keller", "Eleanor Roosevelt",
				"Mahatma Gandhi", "Frank Sinatra", "Walt Disney",
				"Thomas Edison", "Malcolm Forbes", "David Brinkley",
				"Jonathan Swift", "Eleanor Roosevelt", "Oprah Winfrey",
				"Henry Ford", "Jeff Bezos", "Winston Churchill", "Coco Chanel",
				"Oscar Wilde", "Wayne Gretzky", "Bruce Feirstein",
				"Dolly Parton", "Richard Branson", "Frank Lloyd Wright",
				"Nathaniel Hawthorne", "Michael Jordan", "Albert Einstein",
				"Katie Couric", "Ray Goforth", "Neil Armstrong", "Arthur Ashe",
				"Mary Kay Ash", "Kevin Kline", "Mark Twain",
				"Thomas Jefferson", "Abraham Lincoln", "Robert Collier",
				"Audrey Hepburn", "Thomas J. Watson", "John Quincy Adams",
				"Michael John Bobak", "Oprah Winfrey", "Philippos",
				"Colin Powell", "Pablo Picasso", "Mark Zuckerberg",
				"Earl Nightingale", "Eleanor Roosevelt", "Vidal Sassoon",
				"John D. Rockefeller", "Steve Jobs", "Drew Houston",
				"Carl Bard", "Ralph Waldo Emerson", "Mark Twain",
				"Helen Keller", "Mark Caine", "Mother Teresa", "Jay-Z",
				"Bruce Lee", "Jimmy Spithill", "Katharine Hepburn",
				"Charles F. Kettering", "Charlotte Bronte", "Steve Jobs",
				"Kate Winslet", "Picasso", "Barack Obama", "T. Harv Eker",
				"Jim Rohn", "George Eliot", "Steve Wozniak", "Jane Smiley",
				"Deepak Chopra", "George Bernard Shaw", "Diane Ackerman",
				"Bill Gates", "Francis Chan", "Oscar Wilde", "Jim Rohn",
				"Arianna Huffington", "Mike Gafka", "Stephen Covey",
				"Thomas A. Edison", "Daniel Cole" ]
		//Call the randomNumber function to obtain a random number. Send the number of quotes as the upper limit. Store returned integer in the quoteNumber variable
		var quoteNumber = randomNumber(quoteArray.length, currentNumber)
		//Use the quote number to pick the quote text and corresponding author. Store in the quoteBody and quoteAuthor variables
		var quoteBody = quoteArray[quoteNumber]
		var quoteAuthor = authorArray[quoteNumber]
		//Update the currentNumber global variable
		currentNumber = quoteNumber
		//Populate the quoteBody and quoteAuthor HTML elements with the chosen quote text and author
		document.getElementById("quoteBodyDesktop").innerHTML = '"' + quoteBody
				+ '"'
		document.getElementById("quoteAuthorDesktop").innerHTML = quoteAuthor
		document.getElementById("quoteBodyMobile").innerHTML = '"' + quoteBody
				+ '"'
		document.getElementById("quoteAuthorMobile").innerHTML = quoteAuthor
		//Create seperate variables with the quote body and quote text encoded for adding to tweet intent URL
		var quoteBodyURI = encodeURIComponent(quoteBody)
		var quoteAuthorURI = encodeURIComponent(quoteAuthor)
		//Amend the href attribute for the share button accordingly
		document.getElementById("buttonTweet").href = 'https://twitter.com/intent/tweet?text='
				+ '"' + quoteBodyURI + '"' + ' - ' + quoteAuthorURI
	}

	//Function to generate a random integer using the total number of quotes in the array as the upper limit
	function randomNumber(numQuotes, previousNumber) {
		//First generate the random number
		var number = Math.floor(Math.random() * numQuotes)
		//Check if this is the first run of the generator i.e. page loading
		if (previousNumber === null) {
			return number;
		}
		//If this isn't the first run of the generator i.e. button click, check the new number is not the same as the last. If it is, loop the randomiser until it isn't, then return the random number
		while (number === previousNumber) {
			number = Math.floor(Math.random() * numQuotes)
		}
		return number
	}

	//Set previous random number to null, as there is no previous number on page load
	var currentNumber = null;

	//Call the quote function on page load to populate with a quote
	window.onload = quote;
</script>
<%-- <!-- -----------------footer-------------------- -->
	<jsp:include page="footer.jsp"></jsp:include> --%>