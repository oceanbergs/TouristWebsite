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
		
		.itinerary {
		      max-width: 600px;
		      margin: 15px auto;
		      padding: 20px;
		      background: #ffffff;
		      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
		      border: 1px solid #86B817;
		    }

		    h2 {
		      text-align: center;
		      font-size: 1.4rem;
		      color: #86B817;
		      text-transform: uppercase;
		      margin-bottom: 10px;
		      letter-spacing: 1px;
		    }

		    .day {
		      margin-bottom: 10px;
		    }

		    .day-header {
		      display: flex;
		      justify-content: space-between;
		      align-items: center;
		      padding: 8px;
		      background-color: #f1f9f3;
		      border: 1px solid #cbe9c7;
		      font-size: 0.8rem;
		    }

		    .day-header h4 {
		      margin: 0;
		      font-size: 0.9rem;
		      color: #2d502a;
		      font-weight: bold;
		    }

		    .day-header p {
		      margin: 0;
		      font-size: 0.8rem;
		      color: #6a8266;
		      font-weight: bold;
		    }

		    .toggle-btn {
		      background: #86B817;
		      color: #fff;
		      border: none;
		      width: 25px;
		      height: 25px;
		      font-size: 1rem;
		      line-height: 25px;
		      cursor: pointer;
		      text-align: center;
		      box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
		      transition: background 0.3s, transform 0.2s;
		    }

		    .toggle-btn:hover {
		      background: #74a514;
		      transform: scale(1.05);
		    }

		    .details {
		      display: none;
		      margin-top: 8px;
		      padding: 8px;
		      background: #f8fef8;
		      border: 1px solid #a3d48c;
		      font-size: 0.75rem;
		    }

		    .details h4 {
		      font-size: 0.85rem;
		      color: #2d502a;
		      margin-bottom: 2px;
		      margin-top: 2px;
		      text-decoration: underline;
		    }

		    .details ul {
		      margin: 0;
		      padding-left: 12px;
		      list-style-type: square;
		      color: #444;
		    }

		    .details ul li {
		      margin-bottom: 3px;
		      font-size: 0.75rem;
		    }

		    .details p {
		      margin-top: 5px;
		      font-size: 0.75rem;
		      color: #5e493b;
		    }

			.itinerary-header {
			     display: flex;
			     justify-content: space-between;
			     align-items: center;
			     margin-bottom: 10px;
			   }

			   .close-btn {
			     font-size: 1rem;
			     font-weight: bold;
			     color: #fff;
			     background-color: #6b9e12;
			     width: 20px;
			     height: 20px;
			     line-height: 20px;
			     text-align: center;
			     border: none;
			     margin-right: 11.5px;
			     padding: auto;
			     cursor: pointer;
			     box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
			     transition: background 0.3s, transform 0.2s;
			   }

			   .close-btn:hover {
			     background-color: #6b9e12;
			     transform: scale(1.1);
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
	                       <small class="text-light"><i class="fa fa-envelope-open me-2"></i>dilipmadge@gmail.com</small>
	                   </div>
	               </div>
	               <div class="col-lg-4 text-center text-lg-end">
	                   <div class="d-inline-flex align-items-center" style="height: 45px;">
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
	                       <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
	                   </div>
	               </div>
	           </div>
	       </div>
    <!-- Topbar End -->


    <!-- Navbar & Hero Start -->
	<div class="container-fluid position-relative p-0">
	        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
	            <a href="" class="navbar-brand p-0">
	                <h4 class="text-primary m-6">
	                    <img src="img/ShreeGajanan.png" alt="Yatra Logo" style="height: 800px; margin-right: 20px;"> Shri Gajanan Yatra Company Pvt. Ltd
	                </h4>
	            </a>
	            
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
	                <span class="fa fa-bars"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarCollapse">
	                <div class="navbar-nav ms-auto py-0">
	                    <a href="/TouristWebsite" class="nav-item nav-link ">Home</a>
	                    <a href="/TouristWebsite/about" class="nav-item nav-link ">About</a>
	                
	                    <!-- All Tours India (Domestic) Dropdown -->
						<div class="nav-item dropdown ">
											       <!-- Clickable Label as Dropdown Toggle -->
											       <a href="#" class="nav-link dropdown-toggl " id="packageDropdownToggle" data-bs-toggle="dropdown" role="button">India<i class="bi bi-caret-down-fill fs-6"></i></a>
											       
											       <!-- Dropdown Menu for Dynamic List -->
											       <ul class="dropdown-menu" id="packageDropdown">
											           <!-- Dynamic package names will be added here -->
											       </ul>
											   </div>

	                    <!-- All World Tours (International) Dropdown -->
						<a href="/TouristWebsite/GetInternation" class="nav-item nav-link">World</a>


	                    <a href="/TouristWebsite/packages" class="nav-item nav-link">Packages</a>
	                    <a href="/TouristWebsite/contact" class="nav-item nav-link">Contact</a>
	                </div>
	            <!-- <a href="" class="btn btn-primary rounded-pill py-2 px-4">Register</a>-->
	            </div>
	        </nav>

        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-center py-5">
                    <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Itinerary</h1>
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

	<input type="hidden" id="PackageId"  name="PackageId" value="" />

	<input type="hidden" id="PackageId" name="PackageId" value="1" />

	<div class="itinerary">
	    <div class="itinerary-header">
	        <h2>Itinerary</h2>
	    </div>
	    <div id="itinerary-container"></div> <!-- Container to display itinerary -->
	</div>
		
		

<!--	     Day 1 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 1 / 25 June, 24</h4>-->
<!--	        <p>Amravati – Pune (1 Night)</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day1-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day1-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Departure from Amravati</li>-->
<!--	          <li>Overnight stay at Pune</li>-->
	          
<!--	          <li>Local sightseeing (Shaniwar Wada and Aga Khan Palace)</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Dinner</p>-->
<!--	      </div>-->
<!--	    </div>-->

<!--	     Day 2 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 2 / 26 June, 24</h4>-->
<!--	        <p>Pune – Kolhapur (1 Night)</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day2-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day2-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Morning departure for Kolhapur</li>-->
<!--	          <li>Visit Mahalaxmi Temple and Rankala Lake</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Breakfast, Dinner</p>-->
<!--	      </div>-->
<!--	    </div>-->

<!--	     Day 3 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 3 / 27 June, 24</h4>-->
<!--	        <p>Kolhapur – Belgaum (1 Night)</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day3-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day3-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Travel to Belgaum</li>-->
<!--	          <li>Explore Belgaum Fort and Kamal Basti</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Breakfast, Lunch</p>-->
<!--	      </div>-->
<!--	    </div>-->

<!--	     Day 4 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 4 / 28 June, 24</h4>-->
<!--	        <p>Belgaum – Panaji (1 Night)</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day4-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day4-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Visit Panaji, Goa</li>-->
<!--	          <li>Basilica of Bom Jesus and Dona Paula</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Breakfast, Dinner</p>-->
<!--	      </div>-->
<!--	    </div>-->

<!--	     Day 5 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 5 / 29 June, 24</h4>-->
<!--	        <p>Goa (North) – (1 Night)</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day5-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day5-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Explore Calangute, Baga, and Anjuna beaches</li>-->
<!--	          <li>Enjoy water sports</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Breakfast, Lunch</p>-->
<!--	      </div>-->
<!--	    </div>-->

<!--	     Day 6 -->
<!--	    <div class="day">-->
<!--	      <div class="day-header">-->
<!--	        <h4>Day 6 / 30 June, 24</h4>-->
<!--	        <p>Return to Amravati</p>-->
<!--	        <button class="toggle-btn" onclick="toggleDetails('day6-details')">+</button>-->
<!--	      </div>-->
<!--	      <div class="details" id="day6-details">-->
<!--	        <h4>Today’s Sightseeing</h4>-->
<!--	        <ul>-->
<!--	          <li>Check-out from Goa</li>-->
<!--	          <li>Return journey</li>-->
<!--	        </ul>-->
<!--	        <p><strong>Meals:</strong> Breakfast</p>-->
<!--	      </div>-->
<!--	    </div>-->
<!--	  </div>-->


        

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Company</h4>
                    <a class="btn btn-link" href="">About Us</a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Privacy Policy</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">FAQs & Help</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
					<p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Shree Gajanan Yatra Company Pvt. Ltd, 123 Pilgrimage Road, Mumbai, India</p>
					                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9552014476</p>
					                <p class="mb-2"><i class="fa fa-envelope me-3"></i>dilipmadge@gmail.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
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
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-primary w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="#">Shree Gajanan Yatra Company Pvt. Ltd.</a>, All Rights Reserved.

						                   <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						                   Designed By <a class="border-bottom" href="https://htmlcodex.com">OCEANBERG TECHNOLOGIES</a>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
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
	<script>
	   function toggleDetails(id) {
	     const details = document.getElementById(id);
	     const allDetails = document.querySelectorAll(".details");

	     // Close other details
	     allDetails.forEach((detail) => {
	       if (detail.id !== id) {
	         detail.style.display = "none";
	       }
	     });

	     // Toggle current
	     details.style.display = details.style.display === "block" ? "none" : "block";
	   }
	 </script>
	 
	 <script>
		// Fetch Itinerary Details using AJAX
		function fetchItinerary() {
		    $.ajax({
		        url: `/TouristWebsite/getAllItianary`,
		        method: 'GET',
		        success: function (data) {
		            renderItinerary(data);
		        },
		        error: function (xhr, status, error) {
		            console.error('Error fetching itinerary:', error);
		            $('#itinerary-container').html('<p>Failed to load itinerary data.</p>');
		        }
		    });
		}

		// Render Itinerary in HTML
		function renderItinerary(itineraryData) {
		    const container = $('#itinerary-container');
		    container.empty(); // Clear previous content

		    itineraryData.forEach((day, index) => {
		        const sightseeingList = day.sightseeingEntrie
		            .map(entry => `<li>${entry.location}</li>`)
		            .join('');

		        const meals = [
		            day.breakfast ? 'Breakfast' : '',
		            day.lunch ? 'Lunch' : '',
		            day.dinner ? 'Dinner' : '',
		            day.hiTea ? 'Hi Tea' : '',
		            day.nightStay ? 'Night Stay' : ''
		        ].filter(meal => meal).join(', ');

		        const dayHtml = `
		        <div class="day">
		            <div class="day-header">
		                <h4>${index.day}  ${day.destination}</h4>
		                <button class="toggle-btn" onclick="toggleDetails('day-details-${index}')">+</button>
		            </div>
		            <div class="details" id="day-details-${index}" style="display: none;">
		                <h4>Today’s Sightseeing</h4>
		                <ul>${sightseeingList}</ul>
		                <p><strong>Meals:</strong> ${meals}</p>
		            </div>
		        </div>
		        `;
		        
		        container.append(dayHtml);
		    });
		}

		// Toggle Details Section
		function toggleDetails(id) {
		    const details = $('#' + id);
		    details.toggle();
		}

		// Fetch Itinerary for PackageId (Example: 1)
		fetchItinerary(1);

	 </script>
</body>

</html>