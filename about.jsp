<jsp:include page="header.jsp"></jsp:include>

    <style>
        html{scroll-behavior: smooth;}
        .contain{
          position:relative;
          text-align:center;
          color:white;
        }
        .contain h2{font-size:5rem;}
        .centered{
          position:absolute;
          top:50%;
          left:50%;
          transform:translate(-50%,-50%);
        }
        h1{
           font-weight: bolder; font-size: 3rem; padding: 3px; text-align: center; color: orangered;
          }
        h2{
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 2rem;
            text-align: center;
            margin-top: 3rem;
        }
        h3{
            font-weight: bold;
            margin-top: 1rem;
        }
        h4{
            color: deepskyblue;
        }
        span{
            text-align: center;
        }
        .container{
            margin-top: 4rem;
            text-align: center;
        }  
        .row{text-align: center;}
        .footer{
        background-color: black;
        color: white;
        text-align: center;
    }
    @media screen and (max-width: 533px){
      .row .col-6 h1{display: none;}
    }
    </style>


    
<div class="contain">
	<img src="image/1para3.jpg" class="img-fluid" style="width: 100%;height:80vh">
	<div class="centered"><h2 class="animated fadeInDown" style="animation-delay: 1s;">About Us</h2></div>
</div>
 <!-- ---------------------1st Paragraph------------------------ -->
<div class="container">
    <!-- <h2 class="animated fadeInDown" style="animation-delay: 1s;">About Us</h2> -->
    <span  class="animated fadeInLeft" style="animation-delay: 2s;">We help folks love, heal, understand, and move their</span><br>
    <span class="animated fadeInLeft" style="animation-delay: 3s;">bodies—so they can be happier, healthier humans.</span>
</div>

<div class="container">
    <div class="row">
        <div class="col-12 col-sm-6"><img src="image/about1.jpg" class="img-fluid" style="width: 100%;"></div>
        <div class="col-12 col-sm-6">
            <div class="card shadow" style="width: 100%; height: 100%;">
                <div class="card-body bg-secondary">
                  <h5 class="card-title">We’re here to get as many people</h5>
                  <h5 class="card-title">moving as possible.</h5>
                  <p class="card-text">Not just people that are already fit, but all people. We offer a more accessible and sustainable alternative to the popular “No, pain. No gain.” mantra.Not just people that are already fit, but all people. We offer a more accessible and sustainable alternative to the popular “No, pain. No gain.” mantra.</p>
                  <p class="card-text">We don’t think exercise should be associated with pain at all. Gives it a bad name. Exercise is medicine. When done right, it not only alleviates pain, but it protects against it.We don’t think exercise should be associated with pain at all. Gives it a bad name. Exercise is medicine. When done right, it not only alleviates pain, but it protects against it.</p>
                  <a href="#" class="btn btn-warning">Explore</a>
                </div>
              </div>
        </div>
    </div>
</div>

 <!-- ---------------------2nd Paragraph------------------------ -->
 <div class="row" style="background-color: black; color: white; margin-top: 4rem;">
    <div class="col-6">
        <h1 style="margin-top: 3rem; font-size: 5rem;">ABOUT APEX</h1>
        <div style="text-align: center; margin-top: 2rem;">We’re not here to carry you to fitness, we’re here to motivate you </div>
        <div style="text-align: center;">to carry yourself to your goals. </div>

        <div style="text-align: center; margin-top: 2rem;">If you’re not sure what your goals are, or don’t know where to start </div>
        <div style="text-align: center;">on your fitness journey, come in and speak to one of our qualified</div>
        <div style="text-align: center;">trainers who can help you develop a plan.</div>
        <div style="margin-top: 3rem; text-align: center;"><button type="button" class="btn btn-warning btn-lg">Schedule</button></div>
    </div>
    <div class="col-6"><img src="image/2para.jpg" style="height: 70vh; width: 100%;" alt=""></div>
</div>
</div>

<!-- ---------------------3rd Paragraph------------------------ -->
    <h2>Meet the minds behind the movement.    </h2>
    <div class="container">
        <div class="row">
            <div class="col"><img src="image/about2.png" class="img-fluid" alt="">
                <h3>Victor AbiJaoudi II  </h3>
                <h4>Founder and CEO</h4>
            </div>
            <div class="col"><img src="image/about3.png" class="img-fluid" alt="">
                <h3>Jenna Ellis, PT</h3>
                <h4>Program Director</h4>
            </div>
            <div class="col"><img src="image/about4.png" class="img-fluid" alt="">
                <h3>Jamie Ferrell   </h3>
                <h4>Community Manager </h4>
            </div>
        </div>
        <div class="row" style="margin-top: 4rem;">
            <div class="col"><img src="image/about5.png" class="img-fluid" alt="">
                <h3>Monte Williams</h3>
                <h4>Chief Operations Officer   </h4>
            </div>
            <div class="col"><img src="image/about6.png" class="img-fluid" alt="">
                <h3>Dr. Marc H. Boff  </h3>
                <h4>Wellness Advisor  </h4>
            </div>
            <div class="col"><img src="image/about7.png" class="img-fluid" alt="">
                <h3>Sarah Enouen  </h3>
                <h4>Trainer and Nutritionist                </h4>
            </div>
        </div>
    </div>

<!-- -----------------footer-------------------- -->
	<jsp:include page="footer.jsp"></jsp:include>