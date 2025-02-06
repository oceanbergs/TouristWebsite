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
	<style>	<!--gallary-->
		
		       #mainGallery {
		           cursor: pointer; /* Make thumbnails appear interactive */
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
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me=2" href=""><i class="fab fa-youtube fw-normal"></i></a>
						   <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-google fw-normal"></i></a>

	                   </div>
	               </div>
	           </div>
	       </div>
	       <!-- Topbar End -->
	   <!-- Navbar & Hero Start -->
	  <!-- Navbar & Hero Start -->
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
                <a href="login" class="nav-item nav-link " style="font-family: 'Poppins', sans-serif;">Home</a>
                <a href="/about" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">About</a>
                <!-- All Tours India (Domestic) Dropdown -->
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="packageDropdownToggle" data-bs-toggle="dropdown" style="font-family: 'Poppins', sans-serif;">India</a>
                    <div class="dropdown-menu" id="packageDropdown">
                        <!-- Dynamic package names will be added here -->
                    </div>
                </div>

                <!-- All World Tours (International) Dropdown -->
                <a href="GetInternation" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">World</a>

                <a href="packages" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Packages</a>
                <a href="contact" class="nav-item nav-link active" style="font-family: 'Poppins', sans-serif;">Contact</a>
            </div>
        </div>
    </nav>

        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-center py-5">
                    <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Contact Us</h1>
                        <nav aria-label="breadcrumb">
<!--                            <ol class="breadcrumb justify-content-center">-->
<!--                                <li class="breadcrumb-item"><a href="#">Home</a></li>-->
<!--                                <li class="breadcrumb-item"><a href="#">Pages</a></li>-->
<!--                                <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>-->
<!--                            </ol>-->
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar & Hero End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h3 class="section-title bg-white text-center text-primary px-3">Contact For Any Query</h3>
               <br>
               <hr>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h5>Get In Touch</h5>
                    <p class="mb-4">Use the form below to send us a quick message. We'll get back to you as soon as possible!</p>
                    <div class="d-flex align-items-center mb-4">
                        <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                            <i class="fa fa-map-marker-alt text-white"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="text-primary">Office</h5>
                            <p class="mb-0">Shree Gajanan Yatra Company Pvt. Ltd, Front Of Allahbad Bank Mil Colony Stop Paratwada 444805</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                            <i class="fa fa-phone-alt text-white"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="text-primary">Mobile</h5>
                            <p class="mb-0">+91-9552014476</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                            <i class="fa fa-envelope-open text-white"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="text-primary">Email</h5>
                            <p class="mb-0">shrigajananyatracompany@gmail.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <iframe class="position-relative rounded w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d292.0631439508537!2d77.5239522!3d21.2729768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd6f36e93c61809%3A0x314300b4e8777b58!2sShri+Gajanan+Yatra+company+PVT.LTD!5e0!3m2!1sen!2sin!4v1673264794135!5m2!1sen!2sin"
                        frameborder="0" style="min-height: 300px; border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                
                <div class="col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                    <form id="contactForm">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" placeholder="Your Name" required>
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" placeholder="Your Email" required>
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject" required>
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 100px" required></textarea>
                                    <label for="message">Message</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
                
                <script>
                    // JavaScript to handle form submission and send WhatsApp message
                    document.getElementById('contactForm').addEventListener('submit', function(event) {
                        event.preventDefault();  // Prevent form from submitting normally
                
                        // Get form data
                        var name = document.getElementById('name').value;
                        var email = document.getElementById('email').value;
                        var subject = document.getElementById('subject').value;
                        var message = document.getElementById('message').value;
                
                        // Format message for WhatsApp
                        var whatsAppMessage = encodeURIComponent(
                            "Name: " + name + "\n" +
                            "Email: " + email + "\n" +
                            "Subject: " + subject + "\n" +
                            "Message: " + message
                        );
                
                        // Redirect to WhatsApp with the pre-filled message
                        var whatsAppUrl = "https://wa.me/9552014476?text=" + whatsAppMessage;
                
                        // Open WhatsApp
                        window.open(whatsAppUrl, '_blank');
                    });
                </script>
                
            </div>
        </div>
    </div>
    <!-- Contact End -->


		<!-- Footer Start -->
		   <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		       <div class="container py-5">
		           <div class="row g-5">
		               <div class="col-lg-3 col-md-6">
		                   <h4 class="text-white mb-3">Company</h4>
		                   <a class="btn btn-link" href="">About Us</a>
		                   <a class="btn btn-link" href="">Contact Us</a>
		                  
		               </div>
		               <div class="col-lg-3 col-md-6">
		                   <h4 class="text-white mb-3">Contact</h4>
						<p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Shree Gajanan Yatra Company Pvt. Ltd, Front Of Allahbad Bank Mil Colony Stop Paratwada 444805</p>
						                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9552014476</p>
						                <p class="mb-2"><i class="fa fa-envelope me-3"></i>shrigajananyatracompany@gmail.com</p>
		                   <div class="d-flex pt-2">
							<a class="btn btn-outline-light btn-social" href="https://g.co/kgs/rL9UQJa"><i class="fab fa-google fw-normal"></i>	  
				<a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
		                       <a class="btn btn-outline-light btn-social" href="https://youtu.be/chsYbQpY-cU"><i class="fab fa-youtube"></i></a>
		                       <a class="btn btn-outline-light btn-social" href="https://instagram.com/shriajanan_yatra_company?"><i class="fab fa-instagram fw-normal"></i></a>
		                   </div>
		               </div>
					   
					   
					   <div class="col-lg-3 col-md-6">
					       <h4 class="text-white mb-3">Gallery</h4>
					       <div class="row g-2 pt-2">
					           <div class="col-4">
					                <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="">
					               </a>
					           </div>
					           <div class="col-4">
					                <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="">
					               </a>
					           </div>
					           <div class="col-4">
					                <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="">
					               </a>
					           </div>
					           <div class="col-4">
					                <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="">
					               </a>
					           </div>
					           <div class="col-4">
					               <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="">
					               </a>
					           </div>
					           <div class="col-4">
					               <a href='about#detailedGallery'>
					                   <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="">
					               </a>
					           </div>
					       </div>
					   </div>

					  

		               <!-- Travel Inspiration Section -->
	<div class="col-lg-3 col-md-6">
	    <h4 class="text-white mb-3">Travel Inspiration</h4>
	    <p class="text-light">
	        Exploring new places helps break away from daily routines, reduces stress, and fosters mental clarity.
	    </p>

	</div>

	    </div>
		               </div>
		       <div class="container">
		           <div class="copyright">
					<div class="row">
					    <div class="col-md-12 text-center text-md-start mb-3 mb-md-0">
					        &copy; <a class="border-bottom" href="#">Shree Gajanan Yatra Company Pvt. Ltd.</a> All Rights Reserved. Designed By 
					        <a class="border-bottom" href="https://oceanberg.org">OCEANBERG TECHNOLOGIES PRIVATE LIMITED</a>
					        <!--
					        /*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. 
					        If you'd like to use the template without the footer author’s credit link/attribution link/backlink, 
					        you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
					        -->
					    </div>
		                  
		               </div>
		           </div>
		       </div>
		   </div>
		   <!-- Footer End -->


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

<script>
		   				       document.addEventListener('DOMContentLoaded', function () {
		   				           // Check if the page has a hash value for smooth scrolling
		   				           if (window.location.hash === '#detailedGallery') {
		   				               const detailedGallerySection = document.getElementById('detailedGallery');

		   				               // If the section exists, smoothly scroll to it
		   				               if (detailedGallerySection) {
		   				                   detailedGallerySection.scrollIntoView({
		   				                       behavior: 'smooth',
		   				                       block: 'start'
		   				                   });
		   				               }
		   				           }
		   				       });
		   				   </script>

</html>