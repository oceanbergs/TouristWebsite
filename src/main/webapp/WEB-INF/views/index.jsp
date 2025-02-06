   
   
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

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap JS (with Popper.js) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
	<style>
		.modal-content {
		    border-radius: 8px;
		}

		.modal-header {
		    background-color: #f8f9fa;
		    border-bottom: 1px solid #dee2e6;
		}

		.modal-footer {
		    background-color: #f8f9fa;
		    border-top: 1px solid #dee2e6;
		}


	</style>

	<!--gallary-->
	<style>
	       #mainGallery {
	           cursor: pointer; /* Make thumbnails appear interactive */
	       }
	   </style>
    
</head>
<body style="font-family: 'Roboto', sans-serif;">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <div class="container-fluid bg-dark px-5 d-none d-lg-block" style="font-family: 'Roboto', sans-serif;">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light" style="font-family: 'Roboto', sans-serif;">
                        <i class="fa fa-map-marker-alt me-2"></i>ShrI Gajanan Yatra Company Pvt. Ltd
                    </small>
                    <small class="me-3 text-light" style="font-family: 'Roboto', sans-serif;">
                        <i class="fa fa-phone-alt me-2"></i>+91 9552014476
                    </small>
                    <small class="text-light" style="font-family: 'Roboto', sans-serif;">
                        <i class="fa fa-envelope-open me-2"></i>shrigajananyatracompany@gmail.com
                    </small>
                </div>
            </div>
			<div class="col-lg-4 text-center text-lg-end">
			    <div class="d-inline-flex align-items-center" style="height: 45px;">
			       <!-- <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
				   <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>-->
			        <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
			        <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href="https://instagram.com/shriajanan_yatra_company?igshid=Yzg"><i class="fab fa-instagram fw-normal"></i></a>
			        <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href="https://youtu.be/chsYbQpY-cU"><i class="fab fa-youtube fw-normal"></i></a>
			        <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href="https://g.co/kgs/rL9UQJa" target="_blank">
			            <i class="fab fa-google fw-normal"></i>
			        </a>
			    </div>
			</div>

        </div>
    </div>
    <!-- Topbar End -->

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
                    <a href="login" class="nav-item nav-link active" style="font-family: 'Poppins', sans-serif;">Home</a>
                    <a href="about" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">About</a>

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
                    <a href="contact" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Contact</a>
                </div>
            </div>
        </nav>

<!-- Hero Section -->
<div class="container-fluid bg-primary py-5 mb-5 hero-header" style="font-family: 'Poppins', sans-serif;">
    <div class="container py-5">
        <div class="row justify-content-center py-5">
            <div class="col-lg-8 text-center">
                <!-- Main Title -->
                <h4 class="display-6 text-white fw-bold mb-3 animated fadeInDown" style="font-family: 'Poppins', sans-serif;">
                    Welcome To <span class="text-warning"><br>Shri Gajanan Yatra Company Pvt. Ltd</span>
                </h4>
                <div class="mb-4">
                    <small class="text-light fs-5 d-block" style="line-height: 1.2; font-family: 'Roboto', sans-serif; margin-bottom: 15px;">
                        Since 2014
                    </small>
                
                    <small class="fs-5 d-block" style="line-height: 1.2; font-family: 'Roboto', sans-serif; color: #b8abab; opacity: 0.6;">
                        CIN-U63090MH2022PTC381157
                    </small>
                </div>
                

                <!-- Address Information -->
                <p class="fs-5 text-light mb-4 animated fadeInUp" style="font-family: 'Roboto', sans-serif;">
                    <strong>Main Office:</strong> Maharashtra - Amravati - Paratwada City - India
                </p>

                <!-- WhatsApp Information -->
                <p class="fs-5 text-light animated fadeInUp" style="font-family: 'Roboto', sans-serif;">
                    <strong>Connect with us on WhatsApp:</strong>
                    <a href="https://wa.me/9552014476" class="btn btn-success px-4 py-2 rounded-pill text-white d-inline-flex align-items-center gap-2" style="font-family: 'Roboto', sans-serif;">
                        <i class="fab fa-whatsapp fa-lg"></i> <span>+91 9552014476</span>
						
                    </a>
					<a href="https://wa.me/9960086271" class="btn btn-success px-4 py-2 rounded-pill text-white d-inline-flex align-items-center gap-2" style="font-family: 'Roboto', sans-serif;">
											<i class="fab fa-whatsapp fa-lg"></i> <span>+91 9960086271</span>
					                    </a>
                </p>
				

                <!-- Quick Enquiry Button -->
                <div class="container text-center py-5">
                    <a href="javascript:void(0);" class="btn btn-primary rounded-pill py-1 px-3" id="quickEnquiryBtn" style="font-family: 'Poppins', sans-serif;">Quick Enquiry</a>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Navbar & Hero End -->
</body>



        
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
                <!-- <a class="btn btn-primary py-3 px-5 mt-2 rounded-pill shadow" href="#services">Learn More</a> -->
            </div>
        </div>
    </div>
</div>
<!-- About End -->


<br>
<!-- Single Banner Auto-Slider -->
<!-- <div class="banner-container" style="width: 100%; max-width: 1200px; height: 400px; margin: 20px auto; overflow: hidden; position: relative; font-family: 'Poppins', sans-serif; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);"> -->
<!--     Banner Wrapper -->
<!--     <div id="banner-slider" style="display: flex; width: 200%; height: 100%; transition: transform 1s ease-in-out;"> -->
<!--         Single Banner -->
<!--         <img src="img/banner.jpg" alt="Banner Image" style="width: 100%; height: 100%; object-fit: cover;"> -->
<!--         <img src="img/banner.jpg" alt="Banner Image Duplicate" style="width: 100%; height: 100%; object-fit: cover;"> -->
<!--     </div> -->
<!-- </div> -->


<div class="banner-container" style="width: 100%; max-width: 1200px; height: 400px; margin: 20px auto; overflow: hidden; position: relative; font-family: 'Poppins', sans-serif; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);">
    <!-- Banner Wrapper -->
    <div id="banner-slider" style="display: flex; width: 200%; height: 100%; transition: transform 1s ease-in-out;">
        <!-- Banner images will be injected here dynamically -->
    </div>
</div>


<!-- Inline JavaScript -->
<script>
    const bannerSlider = document.getElementById('banner-slider');
    let currentBannerIndex = 0;

    // Auto-slide function
    setInterval(() => {
        currentBannerIndex = (currentBannerIndex + 1) % 2; // Cycles between 0 and 1
        bannerSlider.style.transform = `translateX(-${currentBannerIndex * 100}%)`;
    }, 4000); // Changes every 4 seconds
</script>





<!-- Service Start -->

<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h4 class="section-title bg-white text-center text-primary px-3">Our Services</h4>
            <br>
            <hr>
        </div>
        <div class="row g-4">
            <!-- Domestic Tour -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-home text-primary mb-4"></i>
                        <h5>Domestic Tour</h5>
                        <p>Explore beautiful destinations across the country with our exclusive domestic tour packages.</p>
                    </div>
                </div>
            </div>

            <!-- International Tour -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                        <h5>International Tour</h5>
                        <p>Experience the world with our thoughtfully curated international travel packages.</p>
                    </div>
                </div>
            </div>

            <!-- Group & Family Tour -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-users text-primary mb-4"></i>
                        <h5>Group & Family Tour</h5>
                        <p>Create lifelong memories with group and family tours tailored to your preferences.</p>
                    </div>
                </div>
            </div>

            <!-- Special Packages -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-gift text-primary mb-4"></i>
                        <h5>Special Packages</h5>
                        <p>Enjoy exclusive deals and tailor-made travel experiences with our special packages.</p>
                    </div>
                </div>
            </div>

            <!-- Honeymoon Package -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-heart text-primary mb-4"></i>
                        <h5>Honeymoon Package</h5>
                        <p>Celebrate love and romance with our customized honeymoon packages for couples.</p>
                    </div>
                </div>
            </div>

            <!-- Government Tour Packages -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-building text-primary mb-4"></i>
                        <h5>Government Tour Packages</h5>
                        <p>Specialized travel packages designed for government employees and officials.</p>
                    </div>
                </div>
            </div>

            <!-- School & College Tour -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                        <h5>School & College Tour</h5>
                        <p>Fun and educational tours for schools and colleges to exciting and enriching destinations.</p>
                    </div>
                </div>
            </div>

            <!-- Passport and Visa Assistance -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-passport text-primary mb-4"></i>
                        <h5>Passport & Visa</h5>
                        <p>Get hassle-free assistance for passport applications and visa processing.</p>
                    </div>
                </div>
            </div>

            <!-- Air Ticket Booking -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-plane text-primary mb-4"></i>
                        <h5>Air Ticket</h5>
                        <p>Book domestic and international flights at the best prices with us.</p>
                    </div>
                </div>
            </div>

            <!-- Train Tickets -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-train text-primary mb-4"></i>
                        <h5>Train Ticket</h5>
                        <p>Convenient and quick train ticket booking services for your journeys.</p>
                    </div>
                </div>
            </div>

            <!-- Helicopter Services -->
         

            <!-- Cruise Ticket Booking -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-ship text-primary mb-4"></i>
                        <h5>Cruise Ticket</h5>
                        <p>Sail in luxury and explore the seas with our cruise ticket booking services.</p>
                    </div>
                </div>
            </div>

            <!-- Bus & Taxi Rental -->
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded pt-3" style="height: 300px;">
                    <div class="p-4">
                        <i class="fa fa-3x fa-bus text-primary mb-4"></i>
                        <h5>Bus & Taxi for Rent</h5>
                        <p>Convenient rental services for buses and taxis to suit all your travel needs.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Services Section End -->

    <!-- Destination Start -->
    <div class="container-xxl py-5 destination">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h4 class="section-title bg-white text-center text-primary px-3">International Popular Destination</h4>
             <br>
             <hr>
            </div>
            <div class="row g-3">
                <div class="col-lg-7 col-md-6">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/destination-1.jpg" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">30% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Malaysia</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/destination-2.jpg" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">25% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Bali</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/destination-3.jpg" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">35% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Australia</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                    <a class="position-relative d-block h-100 overflow-hidden" href="">
                        <img class="img-fluid position-absolute w-100 h-100" src="img/destination-4.jpg" alt="" style="object-fit: cover;">
                        <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">20% OFF</div>
                        <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Vietnam</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Destination Start -->

     <!-- Destination Start -->
     <div class="container-xxl py-5 destination">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h4 class="section-title bg-white text-center text-primary px-3">Indian Popular Destination</h4>
               <br>
               <hr>
            </div>
            <div class="row g-3">
                <div class="col-lg-7 col-md-6">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/manali.jpg" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">30% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Manali</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/goa.webp" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">25% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Goa</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/ooty.webp" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">35% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Ooty</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                    <a class="position-relative d-block h-100 overflow-hidden" href="">
                        <img class="img-fluid position-absolute w-100 h-100" src="img/laksdweep.jpg" alt="" style="object-fit: cover;">
                        <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">20% OFF</div>
                        <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Lakshdweep</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Destination Start -->

<!--     Package Start -->
<!--<div class="container-xxl py-5">-->
<!--    <div class="container">-->
<!--        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">-->
<!--            <h6 class="section-title bg-white text-center text-primary px-3">Packages</h6>-->
<!--            <h1 class="mb-5">Awesome Packages</h1>-->
<!--        </div>-->

<!--         Enhanced Search Bar -->
<!--<div class="container text-center mb-4">-->
<!--    <div class="input-group" style="max-width: 500px; margin: 0 auto;">-->
<!--        <input id="searchInput" type="text" class="form-control shadow" placeholder="Search for a package..." -->
<!--            style="border: 2px solid #007BFF; border-radius: 25px 0 0 25px; height: 50px; padding: 0 20px; font-size: 16px;">-->
<!--        <button class="btn btn-primary" id="searchButton" -->
<!--            style="border-radius: 0 25px 25px 0; font-size: 18px; padding: 0 20px; height: 50px;">-->
<!--            <i class="fa fa-search"></i> Search-->
<!--        </button>-->
<!--    </div>-->
<!--</div>-->

<div class="container mt-5">
    <div class="row">
    
<!-- Bootstrap Tooltip Initialization -->
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
        tooltipTriggerList.map(function (tooltipTriggerEl) {
            return new bootstrap.Tooltip(tooltipTriggerEl);
        });
    });
</script>




<!-- Booking Start -->
    <div id="bookingModal" class="modal">
    <div class="modal-content">
        <!-- Close Button -->
        <span id="closeModalBtn" class="close-btn">&times;</span>
        <div class="container py-5">
            <div class="booking p-4">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-white">
<!--                        <h6 class="text-white text-uppercase" style="font-family: 'Georgia', serif;">Booking</h6>-->
                        <h1 class="text-white mb-4" style="font-family: 'Georgia', serif;">Enquiry</h1>
<!--                         <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos.</p> -->
<!--                         <p class="mb-4">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit.</p> -->
<!--                        <a class="btn btn-outline-light py-3 px-5 mt-2" href="#">Read More</a>-->
                    </div>
                    <div class="col-md-6">
<!--                        <h1 class="text-white mb-4" style="font-family: 'Georgia', serif;">Book A Tour</h1>-->
<!--                        <form>-->
                            <div class="row g-3">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control bg-transparent" id="fullName" name="fullName" placeholder="Your Name">
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="email" class="form-control bg-transparent" id="eamil" name="eamil" placeholder="Your Email">
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating date">
                                        <input type="text" class="form-control bg-transparent datetimepicker-input" id="mobileNo" name="mobileNo" placeholder="Date & Time">
                                        <label for="datetime">Mobile No</label>
                                    </div>
                                </div>
<!--                                <div class="col-md-6"> -->
<!--                                    <div class="form-floating">-->
<!--                                        <select class="form-select bg-transparent" id="designationDropdown">-->
<!--                                            <option value="">Select Destination</option>-->
<!--                                            <option value="1">Destination 1</option>-->
<!--                                            <option value="2">Destination 2</option>-->
<!--                                        </select>-->
<!--                                        <label for="designationDropdown">Destination</label>-->
<!--                                    </div>-->
<!--                                </div>-->
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control bg-transparent" placeholder="Description" id="description" name="description" style="height: 100px"></textarea>
                                        <label for="message">Description</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button id="saveButton"  class="btn btn-outline-light w-100 py-3" type="submit">Enquiry</button>
                                </div>
                            </div>
<!--                        </form>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Booking Start -->

</div>
</div>
</div>
		<!-- Footer Start -->
		   <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		       <div class="container py-5">
		           <div class="row g-5">
		               <div class="col-lg-3 col-md-6">
		                   <h4 class="text-white mb-3">Company</h4>
		                   <a class="btn btn-link" href="about">About Us</a>
		                   <a class="btn btn-link" href="contact">Contact Us</a>

		                  
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
	   <!-- <a href="packages.html" class="btn btn-link text-decoration-underline text-light">Explore More</a>-->
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

<script>
    // JavaScript for search functionality
    document.getElementById('searchInput').addEventListener('input', function () {
        const searchQuery = this.value.toLowerCase();
        const packages = document.querySelectorAll('.package-item');

        packages.forEach(packageItem => {
            const packageText = packageItem.querySelector('p b').innerText.toLowerCase();
            if (packageText.includes(searchQuery)) {
                packageItem.style.display = 'block';
            } else {
                packageItem.style.display = 'none';
            }
        });
    });
</script>

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


    <script>
      
    // Initialize Bootstrap tooltips
    document.addEventListener('DOMContentLoaded', () => {
        const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
        tooltipTriggerList.forEach(el => new bootstrap.Tooltip(el));
    });
</script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	
	<script type="text/javascript">
	//Show the booking section when Quick Enquiry button is clicked
	// Get Modal Elements
	const modal = document.getElementById('bookingModal');
	const quickEnquiryBtn = document.getElementById('quickEnquiryBtn');
	const closeModalBtn = document.getElementById('closeModalBtn');

	// Show Modal on Button Click
	quickEnquiryBtn.addEventListener('click', function () {
	    modal.style.display = 'block';
	});

	// Close Modal on Close Button Click
	closeModalBtn.addEventListener('click', function () {
	    modal.style.display = 'none';
	});

	// Close Modal if Clicked Outside Modal Content
	window.addEventListener('click', function (event) {
	    if (event.target === modal) {
	        modal.style.display = 'none';
	    }
	});


	</script>
	
	<script>


	$(document).ready(function() {
	    // Click event handler for the save button
	    $("#saveButton").click(function() {
	        const fullName = $("#fullName").val();
	        const mobileNo = $("#mobileNo").val();
			const eamil = $("#eamil").val();
			const description = $("#description").val();
	       
	        // Construct batch data object
	        const batchData = {
	        		fullName: fullName,
					mobileNo: mobileNo,
					eamil: eamil,
	            description: description
	        };
	        
	        if (!fullName || !eamil || !mobileNo || !description) {
	            alert("Please fill all required fields.");
	            return;
	        }

	        // Send AJAX request to save batch data
	        $.ajax({
	            url: "saveEnquiry",
	            type: "POST",
	            contentType: "application/json",
	            data: JSON.stringify(batchData),
	            success: function(response) {
	                alert("Data Save Successfully");
	                window.location.href = "/";
	            },
	            error: function(jqXHR, status, errorThrown) {
	                if (jqXHR.status === 403) {
	                    alert("YOU DON'T HAVE THE PERMISSION");
	                } else {
	                    alert("Failed to communicate with the server");
	                }
	            }
	        });
	    });
	});

		</script>
		
		<script>
// Function to fetch the active banner using AJAX and display it
function loadBanners() {
    $.ajax({
        url: 'auth/getbanner',  // Your API endpoint to fetch all banners
        type: 'GET',
        success: function (banners) {
            if (banners && banners.length > 0) {
                const bannerContainer = document.getElementById('banner-slider');
                
                // Clear the existing content
                bannerContainer.innerHTML = '';

                // Loop through the banners and display them
                banners.forEach(banner => {
                    const bannerImage = document.createElement('img');
                    bannerImage.src = 'data:image/jpeg;base64,' + banner.banner;  // Assuming the banner is a Base64 string
                    bannerImage.alt = banner.name || 'Banner';
                    bannerImage.style.width = "1200px";
                    bannerImage.style.height = "400px";
                    bannerImage.style.objectFit = "cover";

                    // Append the image to the container
                    bannerContainer.appendChild(bannerImage);
                });
            } else {
                console.error("No banners found.");
            }
        },
        error: function (error) {
            console.error('Error fetching banners:', error);
        }
    });
}

// Call the function to load banners on page load
$(document).ready(function() {
    loadBanners();
});
</script>
		


</body>

</html>