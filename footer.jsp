<!-- --------------------Footer-------------------------- -->
  <div style="background-color: black; color: white;">
    <div class="container text-center">
      <footer class="py-5">
        <div class="row">
          <div class="col-12 col-md-3 col-sm-12">
            <h1 style=" margin-top: 0px;">APEX</h1>
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

          <div class="col-12 col-md-3 col-sm-12" >
            <h5 style="font-size: 2rem;">Section</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="apex.jsp" class="nav-link p-0 text-muted">Home</a></li>
              <li class="nav-item mb-2"><a href="gallery.jsp" class="nav-link p-0 text-muted">Gallery</a></li>
              <li class="nav-item mb-2"><a href="diet.jsp" class="nav-link p-0 text-muted">Diet</a></li>
              <li class="nav-item mb-2"><a href="contact.jsp" class="nav-link p-0 text-muted">Contact Us</a></li>
              <li class="nav-item mb-2"><a href="about.jsp" class="nav-link p-0 text-muted">About</a></li>
              <li class="nav-item mb-2"><a href="class-details.jsp" class="nav-link p-0 text-muted">Classes</a></li>
            </ul>
          </div>

          <div class="col-12 col-md-3 col-sm-12"> </div>

          <div class="col-12 col-md-3 col-sm-12">
            <form>
              <h5>Subscribe to our newsletter</h5>
              <p>Monthly digest of whats new and exciting from us.</p>
              <div class="d-flex w-100 gap-2">
                <label for="newsletter1" class="visually-hidden">Email address</label>
                <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
                <button class="btn btn-primary" type="button">Subscribe</button>
              </div>
            </form>
          </div>
        </div>

        <div class="d-flex justify-content-between py-4 my-4 border-top">
          <p>&copy; 2022 Company, Inc. All rights reserved.</p>
          <ul class="list-unstyled d-flex">
            <li class="ms-3"><a class="link-dark" href="https://www.facebook.com/goldsgym/"><img
                  src="image/facebook.png" style="width: 4rem; height: 3rem;" alt=""></a></li>
            <li class="ms-3"><a class="link-dark" href="https://www.instagram.com/goldsgym/?hl=en"><img
                  src="image/instagram.png" style="width: 3rem; height: 3rem;" alt=""></a></li>
            <li class="ms-3"><a class="link-dark" href="https://twitter.com/goldsgym"><img src="image/twitter.png"
                  style="width: 4rem; height: 3rem;" alt=""></a></li>
          </ul>
        </div>
      </footer>
    </div>
  </div>



  <!-- --------------------JavaScript--------------------- -->
   <script src="bootstrap.bundle.min.js"></script>
  
  <script>
  
    window.addEventListener('scroll',function(){
      const navbar = document.querySelector('.navbar');
      navbar.classList.toggle("sticky",window.scrollY > 50);
      });

    const togglebar = document.querySelector('.toogle');  
    const menu = document.querySelector('ul');  

    function navToggle(){
      togglebar.classList.toggle("active");
      menu.classList.toggle("active");
    }
  </script>

</body>

</html>