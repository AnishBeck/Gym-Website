<jsp:include page="header.jsp"></jsp:include>

    <style>
      .contain{
          position:relative;
          text-align:center;
          color:white;
        }
        .contain h2{font-size:5rem;font-weight:bolder;}
        .centered{
          position:absolute;
          top:50%;
          left:50%;
          transform:translate(-50%,-50%);
        }
        #gallery h1 {
            font-weight: bolder;
            font-size: 5rem;
            background-color: cadetblue;
            padding: 3px;
            text-align: center;
            color: orangered;
            font-family: 'Times New Roman', Times, serif;
        }

       #gallery h2 {
            font-size: 3rem;
            font-weight: bold;
            text-align: left;
        }
        #gallery .container{margin-top: 3rem;}
       #gallery .bg{background-color:lightseagreen;
            color: white;
            overflow: hidden;
            border-radius: 20px;
            border: 1px solid;
            box-shadow:5px 10px 8px black;
        }
    #gallery .bg img{transition: all 1.5s ease;}
    #gallery .bg:hover img{transform:scale(1.2)}
    #gallery .bg:hover{
        transition: all 0.3s ease;
      background-color: rgb(255, 118, 38);
    }
    #gallery .col img{transition: all 1.5s ease;}
    #gallery .col:hover img{transform:scale(1.2)}
    #gallery .footer{
        background-color: black;
        color: white;
        text-align: center;
    }
    #gallery a{text-decoration: none;}
    </style>


<div class="contain">
	<img src="image/1para3.jpg" class="img-fluid" style="width: 100%;height:80vh">
	<div class="centered"><h2 class="animated fadeInDown" style="animation-delay: 1s;">Gallery</h2></div>
</div>


<div id="gallery" style=" scroll-behavior: smooth;">

    <!-- ---------------------Images---------------------------- -->
     <div class="container">
         <div class="row">
             <div class="col animated fadeInLeft" style="animation-delay: 1s; margin-top: 3rem;">
                <div class="card shadow bg" style="width: 18rem;">
                    <img src="image/gallery1.jpg" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">Training Room</h5>
                    </div>
                    <div class="card-body">
                        <button type="button" class="btn btn-warning"><a href="#training" class="card-link">Explore</a></button>
                    </div>
                  </div>
             </div>
             <div class="col animated fadeInDown" style="animation-delay: 1s; margin-top: 3rem;">
                <div class="card shadow bg" style="width: 18rem;">
                    <img src="image/1para3.jpg" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">Cardio Equipments</h5>
                    </div>
                    <div class="card-body">
                        <button type="button" class="btn btn-warning"><a href="#cardio" class="card-link">Explore</a></button>
                    </div>
                  </div>
             </div>
             <div class="col animated fadeInRight" style="animation-delay: 1s; margin-top: 3rem;">
                <div class="card shadow bg" style="width: 18rem;">
                    <img src="image/1para2.jpg" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">Yoga</h5>
                    </div>
                    <div class="card-body">
                        <button type="button" class="btn btn-warning"><a href="#yoga" class="card-link">Explore</a></button>
                    </div>
                  </div>
             </div>
         </div>
     </div>

<!-- ------------------------Training Room------------------------- -->
     <div id="training" class="container gallery">
         <h2  >Training Room</h2>
         <p >We believe everyone is an athlete with unique goals for their personal fitness and training. With advanced sports medicine and a variety of exercise classes, we are the gym of choice for athletes in American Fork, Lehi, Pleasant Grove, Lindon, Orem, Provo and throughout Utah County. Our high-end facility, combined with an exceptional staff is here for one purpose – to help you reach and exceed those goals.</p>
     </div>

     <div class="row" >
         <div class="col"><img src="image/gallery1.jpg" class="img-fluid" alt="..."></div>
         <div class="col"><img src="image/gallery2.jpg" class="img-fluid" alt="..."></div>
         <div class="col"><img src="image/gallery3.jpg" class="img-fluid" alt="..."></div>
     </div>
     <div class="row">
        <div class="col"><img src="image/gallery4.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery5.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery6.jpg" class="img-fluid" alt="..."></div>
    </div>
    <div class="row">
        <div class="col"><img src="image/gallery7.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery8.jpg" class="img-fluid" alt="..."></div>
    </div>

<!-- ------------------------Cardio Equipments------------------------- -->
<div id="cardio" class="container gallery">
    <h2>Cardio Equipments</h2>
    <p>We believe everyone is an athlete with unique goals for their personal fitness and training. With advanced sports medicine and a variety of exercise classes, we are the gym of choice for athletes in American Fork, Lehi, Pleasant Grove, Lindon, Orem, Provo and throughout Utah County. Our high-end facility, combined with an exceptional staff is here for one purpose – to help you reach and exceed those goals.</p>
</div>

    <div class="row">
        <div class="col"><img src="image/gallery9.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery10.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery11.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery12.jpg" class="img-fluid" alt="..."></div>
    </div>
    <div class="row">
        <div class="col"><img src="image/gallery13.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery14.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery15.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery16.jpg" class="img-fluid" alt="..."></div>
    </div>

<!-- -------------------------------yoga----------------------------- -->
    <div id="yoga" class="container gallery">
        <h2>Yoga</h2>
        <p>We believe everyone is an athlete with unique goals for their personal fitness and training. With advanced sports medicine and a variety of exercise classes, we are the gym of choice for athletes in American Fork, Lehi, Pleasant Grove, Lindon, Orem, Provo and throughout Utah County. Our high-end facility, combined with an exceptional staff is here for one purpose – to help you reach and exceed those goals.</p>
    </div>
    <div class="row">
        <div class="col"><img src="image/1para2.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/gallery18.jpg" class="img-fluid" alt="..."></div>
    </div>
    <div class="row">
        <div class="col"><img src="image/gallery17.jpg" class="img-fluid" alt="..."></div>
        <div class="col"><img src="image/about1.jpg" class="img-fluid" alt="..."><img src="image/gallery19.jpg" class="img-fluid" alt="..."></div>
    </div>
</div>


<!-- -----------------footer-------------------- -->
	<jsp:include page="footer.jsp"></jsp:include>