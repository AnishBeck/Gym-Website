<%@page import="java.util.ArrayList"%>
<jsp:include page="header.jsp"></jsp:include>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.js">

<style>
.contain {
	position: relative;
	text-align: center;
	color: white;
	background:transparent;
	background-color:rgba(0,0,0,0.5);
	
}

/* .contain img{
	background: linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2));
} */

.contain h2 {
	font-size: 5rem;
	font-weight: bolder;
}

.centered {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	border-collapse: collapse;
	border: 1px solid black;
}

th {
	text-transform: uppercase;
}

th, td {
	border: 1px solid black;
	padding: 10px;
	text-align: center;
}

.price {
	font-size: 3rem;
}

.price span {
	font-size: 1rem;
}
   h1 {
      font-weight: bolder;
      font-size: 3rem;
      padding: 3px;
      text-align: center;
      color: orangered;
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
</style>

<%@page import="com.Apex.dao.AdminCategoryDao,java.util.List,com.Apex.bin.AdminCategoryBin"%>
	 
 
  <%
  AdminCategoryBin list2 = new AdminCategoryBin(); 
  
  try{
	String id = request.getParameter("id");
	list2 = AdminCategoryDao.GetRegisterByIds(Integer.parseInt(id));
}catch(Exception ex){
	
} %> 

<%-- <% 	List<AdminCategoryBin> list = AdminCategoryDao.GetList();

 for(AdminCategoryBin c:list){
    out.println(c.getCategoryName());
} %> --%>


 

<div class="contain">
	<img src="/Apex/admin/<%=list2.getImage() %>" class="img-fluid"
		style="width: 100%; height: 75vh">
	<div class="centered">
		<h2 class="animated fadeInDown" style="animation-delay: 1s;color:orangered;">
 			<%=list2.getCategoryName()%> 
			</h2>
	</div>
</div>




<div class="description my-5 text-center">
	<h2 class="my-4">
		<u><b>Description</b></u>
	</h2>
	 			<%=list2.getCategoryDetails()%> 
</div><br>



<!-- --------------------4th Praagraph----------------------- -->
<section class="pricing" id="pricing"
	style="background-color: rgb(61, 0, 0); color: white;">

	<div class="heading text-center">
		<!-- <h6 style="color: orangered; font-weight: bold; text-align: center;">choose a plane</h6> -->
		<h1 style="padding: 2rem;">Find a Perfect Plan</h1>
	</div>

	<div class="box-container container">

		<div class="row">
			<div class="col-12 col-md-4 col-sm-12 text-center">
				<h3>Beginners Plan</h3>
				<div class="price">
					<span>Rs</span>1000<span>/mo</span>
				</div>
				<button type="button" class="btn btn-warning">
					<a href="https://pmny.in/JImpM45QWuiA"
						style="text-decoration: none; color: black;">Choose Plan</a>
				</button>
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
					<span>Rs</span>1200<span>/mo</span>
				</div>
				<button type="button" class="btn btn-warning">
					<a href="https://pmny.in/LIMoEbmyFCah"
						style="text-decoration: none; color: black;">Choose Plan</a>
				</button>
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
					<span>Rs</span>1500<span>/mo</span>
				</div>
				<button type="button" class="btn btn-warning">
					<a href="https://pmny.in/xr8INku4s6gI"
						style="text-decoration: none; color: black;">Choose Plan</a>
				</button>
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

</section><br>



<h2 class="my-4 text-center">
	<u><b>Our Timing</b></u>
</h2>
<div class="time d-flex justify-content-center">
	<table class="my-4">
		<tr>
			<th>Days</th>
			<th>Morning</th>
			<th>Evening</th>
		</tr>
		<tr>
			<th>Mon-Sat</th>
			<td>06:00am - 09:00am</td>
			<td>04:00pm - 09:00pm</td>
		</tr>
		<tr>
			<th>Sunday</th>
			<td colspan=2>Weekly Off</td>
		</tr>
	</table>
</div>
<div class="text-center mb-4">
	<b>Note:</b> Join daily with us for just one hour according to your
	free time.
</div>


























<!-- -----------------footer-------------------- -->
<jsp:include page="footer.jsp"></jsp:include>