
<jsp:include page="header.jsp"></jsp:include>


    <style>
        h1{
      font-weight: bolder; font-size: 3rem; padding: 3px; text-align: center; color: orangered;
    }
    .card-title{
        color: orangered;
        font-weight: bolder;
        font-size: 4rem;
        text-align: center;
    }
    .form{
        display: flex;
           align-items: center;
           justify-content: center;
           color: rgb(0, 247, 255);
           font-size: 1rem;
           font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
           font-weight: bold;
    }
    .form input{
        background-color: rgb(168, 168, 168);
        border-radius: 8px;
    }
    .form textarea{
        background-color: rgb(168, 168, 168);
        border-radius: 8px;
    }
    
   


    
    
    .map-responsive{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
}
.map-responsive iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
}
  @media screen(max-width: 350px){
     .contact h5{font-size:2rem}
    }
    </style>



    <div id="contact" class="card bg-dark text-white">
        <img src="image/2crousel.jpg" style="height: 80vh;" class="card-img" alt="...">
        <div class="card-img-overlay">
          <h5 class="card-title animated fadeInDown my-4 py-4" style="animation-delay: 1s;" >Contact us</h5><br>
         
          <div class="form animated fadeInDown" style="animation-delay: 2s;">
       
       
          <form action="ContactAction.jsp" method="post">
            Name: <input type="text" name="name" placeholder="Enter Your Name" required><br><br>
            Gender:Male <input type="radio" name="gender" value="Male" required>Female <input type="radio" name="gender" value="Female" required><br><br>
            Email: <input type="email" name="email" placeholder="Enter Your Email"><br><br>
            <div class="input-group">
                <textarea class="form-control" aria-label="With textarea" placeholder="Enter Your Query or Opinions" name="textArea" required></textarea>
              </div>
             <button type="submit" class="btn btn-warning" style="margin-top: 2rem; color:white;">Submit</button>
          </form>
          
     
          
           </div>
        </div>
      </div>




    <!-- --------------------Footer-------------------------- -->
<!-- <div style="background-color: black; color: white;">
    <div class="container animated fadeInDown" style="animation-delay: 3s;">
      <footer class="py-5">
        <div class="row">
          <div class="col">
            <h1 style="text-align: left; margin-top: 0px;">APEX</h1>
            <ul class="nav flex-column">
              <div style="margin-top: 1rem;"></div>
              <li class="nav-item mb-2">apex@gmail.com</li>
              <li class="nav-item mb-2">123-456-7890</li>
              <li class="nav-item mb-2"></li>
              <div style="margin-top: 2rem;"></div>
              <li class="nav-item mb-2">123 Street</li>
              <li class="nav-item mb-2">City,Country</li>
            </ul><br><br>
            <h5 style="font-size: 1.5rem;">Working Hours</h5>
            <div style="margin-top: 2rem;"></div>
              <p class="nav-item mb-2" style="text-decoration: none;">Monday - Saturday 5:00 AM - 11:00 AM       </p>
              <p class="nav-item mb-2" style="text-decoration: none;">Monday - Saturday 4:00 PM - 10:00 PM</p>
          </div>
    
          <div class="col" style="margin-left: 6rem;">
            <h5 style="font-size: 2rem;">Section</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="apex.html" class="nav-link p-0 text-muted">Home</a></li>
              <li class="nav-item mb-2"><a href="gallery.html" class="nav-link p-0 text-muted">Gallery</a></li>
              <li class="nav-item mb-2"><a href="diet.html" class="nav-link p-0 text-muted">Diet</a></li>
              <li class="nav-item mb-2"><a href="#contact" class="nav-link p-0 text-muted">Contact Us</a></li>
              <li class="nav-item mb-2"><a href="about.html" class="nav-link p-0 text-muted">About</a></li>
            </ul>
          </div>
          <div class="col ">
            <div class="map-responsive">  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2885.201464723316!2d-70.32401468451076!3d43.685574858354606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cb29b08b2fab279%3A0x18b32384eda545bc!2sThe+Fitness+Factory+(24%2F6.5)!5e0!3m2!1sen!2sus!4v1547175575160" width="100px" height="70px" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
          </div>
        </div>
        <div class="d-flex justify-content-between  border-top">
          <p>&copy; 2022 Company, Inc. All rights reserved.</p>
    -------------------------Script-------------------------------
    <script src="bootstrap.bundle.min.js"></script>


</body>
</html> -->

	<jsp:include page="footer.jsp"></jsp:include>