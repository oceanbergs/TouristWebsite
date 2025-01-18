<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tourist - Travel Agency HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
	
	<style>
	        #mainGallery {
	            margin-bottom: 50px;
	            cursor: pointer; /* Indicates the main gallery is clickable */
	        }
	    </style>
	
	
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
	
	       <div class="container-fluid bg-dark px-5 d-none d-lg-block">
	           <div class="row gx-0">
	               <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
	                   <div class="d-inline-flex align-items-center" style="height: 45px;">
	                       <small class="me-3 text-light"><i class="fa fa-map-marker-alt me-2"></i>ShrI Gajanan Yatra Company Pvt. Ltd</small>
	                       <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+91 9552014476</small>
	                       <small class="text-light"><i class="fa fa-envelope-open me-2"></i>shrigajananyatracompany@gmail.com</small>
	                   </div>
	               </div>
	               <div class="col-lg-4 text-center text-lg-end">
	                   <div class="d-inline-flex align-items-center" style="height: 45px;">
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-youtube fw-normal"></i></a>
						   <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-google fw-normal"></i></a>

					      </div>
	               </div>
	           </div>
	       </div>
    <!-- Topbar End -->


	<div class="container-fluid position-relative p-0" style="font-family: 'Roboto', sans-serif;">
	        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0" style="font-family: 'Poppins', sans-serif;">
	            <a href="" class="navbar-brand p-0">
	                <h4 class="text-primary m-6" style="font-family: 'Poppins', sans-serif;">
	                    <img src="img/ShreeGajanan.png" alt="Yatra Logo" style="height: 50px; margin-right: 20px;"> Shri Gajanan Yatra Company Pvt. Ltd
	                </h4>
	            </a>
	            
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
	                <span class="fa fa-bars"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarCollapse">
	                <div class="navbar-nav ms-auto py-0">
	                    <a href="/TouristWebsite" class="nav-item nav-link " style="font-family: 'Poppins', sans-serif;">Home</a>
	                    <a href="/TouristWebsite/about" class="nav-item nav-link active" style="font-family: 'Poppins', sans-serif;">About</a>

	                    <!-- All Tours India (Domestic) Dropdown -->
	                    <div class="nav-item dropdown">
	                        <a href="#" class="nav-link dropdown-toggle" id="packageDropdownToggle" data-bs-toggle="dropdown" style="font-family: 'Poppins', sans-serif;">India</a>
	                        <div class="dropdown-menu" id="packageDropdown">
	                            <!-- Dynamic package names will be added here -->
	                        </div>
	                    </div>

	                    <!-- All World Tours (International) Dropdown -->
	                    <a href="/TouristWebsite/GetInternation" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">World</a>

	                    <a href="/TouristWebsite/packages" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Packages</a>
	                    <a href="/TouristWebsite/contact" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Contact</a>
	                </div>
	            </div>
	        </nav>

        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-center py-5">
                    <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                        <h1 class="display-3 text-white animated slideInDown">About Us</h1>
                        <nav aria-label="breadcrumb">
<!--                            <ol class="breadcrumb justify-content-center">-->
<!--                                <li class="breadcrumb-item"><a href="#">Home</a></li>-->
<!--                                <li class="breadcrumb-item"><a href="#">Pages</a></li>-->
<!--                                <li class="breadcrumb-item text-white active" aria-current="page">About</li>-->
<!--                            </ol>-->
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar & Hero End -->


	<!-- About Start -->
	<div class="container-xxl py-5">
	    <div class="container">
	        <div class="row g-5">
	            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
	                <div class="position-relative h-100">
	                    <img class="img-fluid position-absolute w-200 h-200 rounded" src="img/indeximage.jpeg" alt="About Us Image" style="object-fit: cover; border: 5px solid #fff; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);">
	                </div>
	            </div>
	            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
	                <h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
	                <h1 class="mb-4">Experience the World with <span class="text-primary">Shri Gajanan Yatra</span></h1>
	                <p class="mb-4 text-muted">Since 2014, we have been crafting memorable journeys to the most iconic destinations in India and beyond. Our mission is to provide an unparalleled travel experience with a focus on comfort, safety, and unforgettable memories.</p>
	                <p class="mb-4">Whether you're seeking spiritual solace, adventure, or a relaxing getaway, we ensure every journey is tailored to your needs. From luxurious accommodations to seamless travel arrangements, we have you covered every step of the way.</p>
	                <div class="row gy-2 gx-4 mb-4">
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>Exclusive Pilgrimage Tours</p>
	                    </div>
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>Handpicked Accommodations</p>
	                    </div>
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>Luxury Transport Services</p>
	                    </div>
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>Custom Itineraries</p>
	                    </div>
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>Dedicated Travel Guides</p>
	                    </div>
	                    <div class="col-sm-6">
	                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-2"></i>24/7 Customer Support</p>
	                    </div>
	                </div>
	           <!--     <a class="btn btn-primary py-3 px-5 mt-2 rounded-pill shadow" href="#services">Learn More</a>-->
	            </div>
	        </div>
	    </div>
	</div>
	

    <!-- Team Start 
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Travel Guide</h6>
                <h1 class="mb-5">Meet Our Guide</h1>
            </div>/-->
			
			<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
			        <div class="container">
			            <div class="text-center">
			                <h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
			                <h1 class="mb-5">Our Client Say!</h1>
			            </div>
			            <div class="owl-carousel testimonial-carousel position-relative">
			                <div class="testimonial-item text-center">
			                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
			                    <h5 class="mb-0">Krishna Murthy</h5>
			                   
			                    <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0">Awesome Experiences With Shri Ganjan Yatra</p>
			                    </div>
			                </div>
			                <div class="testimonial-item text-center">
			                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
			                    <h5 class="mb-0">Vani Verma</h5>
			                    
			                    <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0">Good Experience Go With It</p>
			                    </div>
			                </div>
			                <div class="testimonial-item text-center">
			                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
			                    <h5 class="mb-0">Tamnna Sethi</h5>
			                   
			                    <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0">Easy Booking And Cheap Packages</p>
			                    </div>
			                </div>
			                <div class="testimonial-item text-center">
			                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
			                    <h5 class="mb-0">Aditi Sharma</h5>
			                   
			                    <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0">Facilities Are Top Class</p>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>

			
<!--gallery -->
<!-- Gallery Section Start -->
<div  id="detailedGallery" class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="text-center">
            <h6 class="section-title bg-white text-center text-primary px-3">Destination Gallery</h6>
            <h1 class="mb-5">Gallery</h1>
        </div>

		<!-- Carousel Start -->
		<div id="galleryCarousel" class="carousel slide" data-bs-ride="carousel">
		    <div class="carousel-inner">
		        <!-- Slide 2 (Now Active) -->
		        <div class="carousel-item active">
		            <div class="row g-4">
		                <!-- Image 5 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/people1.jpg" alt="Gallery Image 5" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 6 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/people2.jpg" alt="Gallery Image 6" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 7 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/people3.jpg" alt="Gallery Image 7" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 8 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/people4.jpg" alt="Gallery Image 8" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		            </div>
		        </div>

		        <!-- Slide 1 -->
		        <div class="carousel-item">
		            <div class="row g-4">
		                <!-- Image 1 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/mountain.jpg" alt="Gallery Image 1" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 2 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/destination-2.jpg" alt="Gallery Image 2" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 3 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/destination-3.jpg" alt="Gallery Image 3" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		                <!-- Image 4 -->
		                <div class="col-lg-3 col-md-4 col-sm-6">
		                    <div class="gallery-item">
		                        <img class="img-fluid" src="img/destination-4.jpg" alt="Gallery Image 4" style="width: 100%; height: 300px; object-fit: cover;">
		                    </div>
		                </div>
		            </div>
		        </div>

		    </div>

		    <!-- Carousel Controls -->
		    <button class="carousel-control-prev" type="button" data-bs-target="#galleryCarousel" data-bs-slide="prev">
		        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		    </button>
		    <button class="carousel-control-next" type="button" data-bs-target="#galleryCarousel" data-bs-slide="next">
		        <span class="carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		    </button>
		</div>
		<!-- Carousel End -->

		<script>
		
<!-- Bootstrap CSS -->


<!-- Bootstrap JS and Popper.js (needed for carousel functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
	
			

			
			
			
		<br>	
        <hr>
</div>
</div>
			<!-- Footer Start -->
		<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s" style="padding-left: 0; padding-right: 0;">
		    <div class="container py-5">
		        <div class="row g-5">
		            <!-- Company Section -->
		            <div class="col-lg-3 col-md-6">
		                <h4 class="text-white mb-3">Company</h4>
		                <a class="btn btn-link text-light" href="" style="text-decoration: none;">About Us</a><br>
		                <a class="btn btn-link text-light" href="" style="text-decoration: none;">Contact Us</a>
		            </div>

		            <!-- Contact Section -->
		            <div class="col-lg-3 col-md-6">
		                <h4 class="text-white mb-3">Contact</h4>
		                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Shree Gajanan Yatra Company Pvt. Ltd, 123 Pilgrimage Road, Mumbai, India</p>
		                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9552014476</p>
		                <p class="mb-2"><i class="fa fa-envelope me-3"></i>shrigajananyatracompany@gmail.com</p>
						
						<div class="d-flex pt-2">
						    <!-- Google Link -->
						    <a class="btn btn-outline-light btn-social" href="https://g.co/kgs/rL9UQJa" target="_blank">
						        <i class="fab fa-google fw-normal"></i>
						    </a>

						    <!-- Facebook Link -->
						    <a class="btn btn-outline-light btn-social" href="https://facebook.com" target="_blank">
						        <i class="fab fa-facebook-f"></i>
						    </a>

						    <!-- YouTube Link -->
						    <a class="btn btn-outline-light btn-social" href="https://youtu.be/chsYbQpY-cU" target="_blank">
						        <i class="fab fa-youtube"></i>
						    </a>

						    <!-- Instagram Link -->
						    <a class="btn btn-outline-light btn-social" href="https://instagram.com/shriajanan_yatra_company" target="_blank">
						        <i class="fab fa-instagram fw-normal"></i>
						    </a>
						</div>

		            </div>

		            <!-- Gallery Section -->
		            <div class="col-lg-3 col-md-6" id="mainGallery">
		                <h4 class="text-white mb-3">Gallery</h4>
		                <div class="row g-2 pt-2">
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="">
		                    </div>
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="">
		                    </div>
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="">
		                    </div>
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="">
		                    </div>
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="">
		                    </div>
		                    <div class="col-4">
		                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="">
		                    </div>
		                </div>
		            </div>

		            <!-- Travel Inspiration Section -->
		            <div class="col-lg-3 col-md-6">
		                <h4 class="text-white mb-3">Travel Inspiration</h4>
		                <p>Exploring new places helps break away from daily routines, reduces stress, and fosters mental clarity.</p>
		            
		            </div>
		        </div>
		    </div>

		    <!-- Copyright Section -->
		    <div class="container-fluid bg-dark text-light py-3">
		        <div class="row">
		            <div class="col-md-12 text-center mb-2 mb-md-0">
		                &copy; <a class="border-bottom text-light" href="#">Shree Gajanan Yatra Company Pvt. Ltd.</a>, All Rights Reserved Designed By
		                <u>OCEANBERG TECHNOLOGIES PRIVATE LIMITED.</u>
		            </div>
		        </div>
		    </div>
		</div>


    <!-- Footer End -->


	  
	  <script>
	       // JavaScript to make the main gallery clickable
	       document.getElementById('mainGallery').addEventListener('click', function () {
	           // Scroll to the detailed gallery
	           document.getElementById('detailedGallery').scrollIntoView({ behavior: 'smooth' });

	           // Start the carousel automatically
	           const galleryCarousel = new bootstrap.Carousel('#galleryCarousel', {
	               interval: 3000, // Slide every 3 seconds
	               ride: true
	           });
	       });
	   </script>

	   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
	<script src="js/WebPage.js"></script>
</body>

</html>