p<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>World Packages</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

<style>
x/* Parent Container for Packages */
	.parent-container {
	    display: flex;
	    justify-content: center; /* Center the grid horizontally */
	    align-items: center; /* Center the grid vertically */
	    width: 100%;
	    min-height: 100vh;
	    box-sizing: border-box;
	    padding: 20px; /* Add padding for breathing room */
	    background-color: #f9f9f9; /* Optional background for contrast */
	}

	/* Packages Grid Container */
	#packages-container {
	    display: grid;
	    grid-template-columns: repeat(3, 1fr); /* Create a 3-column layout */
	    gap: 20px; /* Space between items */
/* 	    justify-items: center; /* Center items within each grid cell */ */
/* 	    align-items: center; /* Vertically center items */ */
/* 	    width: 100%; */
/* 	    max-width: 1200px; /* Limit maximum width of the grid */ */
/* 	    margin: 0 auto; /* Center the grid within the container */ */
	}

	/* Image Container */
	.image-container {
	    width: 410px; /* Fixed width for uniform images */
	    height: 200px; /* Fixed height for uniform images */
	    overflow: hidden;
	    border-radius: 5px; /* Rounded corners for the image container */
	    border: 1px solid #ddd; /* Optional border for styling */
	}

	/* Fixed-Size Images */
	.fixed-size-image {
	    width: 100%;
	    height: 100%;
	    object-fit: cover; /* Ensure the image covers the container proportionally */
	}

	/* Tour Highlights Styling */
	.tour-highlights {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: center; /* Center text within this container */
	    gap: 5px;
	}

	/* Hover Content Styling */
	.hover-content {
	    display: none;
	    position: absolute;
	    top: 100%;
	    left: 50%;
	    transform: translateX(-50%);
	    background-color: #fff;
	    padding: 10px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    border-radius: 5px;
	    width: 250px;
	    text-align: left;
	    z-index: 10;
	}

	.flex-fill:hover .hover-content {
	    display: block;
	}

	/* Additional Spacing Adjustments */
	.justify-content-center {
	    margin-left: 0;
	}

	.tour-highlights span {
	    margin-right: 5px;
	}

	#all-highlights {
	    display: none;
	    position: absolute;
	    top: 50px;
	    left: 50%;
	    transform: translateX(-50%);
	    background-color: #fff;
	    padding: 20px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    border-radius: 5px;
	    width: 300px;
	    z-index: 10;
	}
	@media (max-width: 768px) {
	    #packages-container {
	        grid-template-columns: repeat(2, 1fr); /* 2 columns on tablets */
	    }
	}

	@media (max-width: 480px) {
	    #packages-container {
	        grid-template-columns: 1fr; /* 1 column on mobile */
	    }
	}
	<!--gallary-->
		
		       #mainGallery {
		           cursor: pointer; /* Make thumbnails appear interactive */
		       }
		       
		        body {
    margin: 0;
    font-family: Arial, sans-serif;
}

/* Popup Overlay */
/* Popup Overlay */
.popup-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%; /* Full screen width */
    height: 100vh; /* Full screen height */
    background: rgba(0, 0, 0, 0.5); /* Semi-transparent dark overlay */
    z-index: 1000;
    display: flex;
    justify-content: flex-end; /* Align content to the right */
    align-items: stretch;
}

/* Popup Content (40% of the screen) */
.popup-content {
    width: 40%; /* 40% of the screen width */
    height: 100%; /* Full height */
    background: white; /* Solid white background */
    border-left: 1px solid rgba(0, 0, 0, 0.1); /* Subtle border for separation */
    padding: 30px;
    color: black; /* Adjusted text color for readability */
    overflow-y: auto; /* Prevent overflow */
    box-shadow: -5px 0 15px rgba(0, 0, 0, 0.2); /* Shadow for depth */
}

/* Close Button */
.btn-close {
    position: absolute;
    top: 20px;
    right: 20px;
    background: transparent;
    border: none;
    font-size: 24px;
    color: black; /* Adjusted for visibility on white background */
    cursor: pointer;
}

/* Form Styling */
.form-control {
    border: 1px solid #ddd; /* Subtle border for input fields */
    color: black; /* Adjusted text color */
}
label {
    color: #555; /* Slightly darker label color */
}
button {
    cursor: pointer;
}
</style>
</head>
</head>

<body>
	<!-- Spinner Start -->
<!-- 	 <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"> -->
<!--         <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status"> -->
<!--             <span class="sr-only">Loading...</span> -->
<!--         </div> -->
<!--     </div> -->
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
                <a href="about" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">About</a>
                <!-- All Tours India (Domestic) Dropdown -->
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="packageDropdownToggle" data-bs-toggle="dropdown" style="font-family: 'Poppins', sans-serif;">India</a>
                    <div class="dropdown-menu" id="packageDropdown">
                        <!-- Dynamic package names will be added here -->
                    </div>
                </div>

                <!-- All World Tours (International) Dropdown -->
                <a href="GetInternation" class="nav-item nav-link active" style="font-family: 'Poppins', sans-serif;">World</a>

                <a href="packages" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Packages</a>
                <a href="contact" class="nav-item nav-link" style="font-family: 'Poppins', sans-serif;">Contact</a>
            </div>
        </div>
    </nav>


<input type="hidden" id="packageType" name="packageType" value="${packageType}">

		<div class="container-fluid bg-primary py-5 mb-5 hero-header">
    <div class="container py-5">
        <div class="row justify-content-center py-5">
            <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
<!--                <h1 class="display-3 text-white animated slideInDown" id="packageHeading" style="font-family: 'Georgia', serif;">-->
<!--                    ${packageType}-->
<!--                </h1>-->
				<h1 class="display-3 text-white animated slideInDown" id="packageHeading" style="font-family: 'Georgia', serif;">
				                   World Tour's
				               </h1>
                <nav aria-label="breadcrumb">
                    <!-- Breadcrumb can be added here -->
                </nav>
            </div>
        </div>
    </div>
</div>
	<!-- Navbar & Hero End -->

	<!-- Package Section Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h3 class="section-title bg-white text-center text-primary px-3">International Packages</h3>
				<br>
				<hr>
			</div>
			<div class="row g-2 justify-content-center">
				<div class="parent-container">
					<div id="packages-container">
					
		</div>
	</div>


	<!-- Booking Start -->
	
<div id="bookForm" class="popup-overlay" style="display: none;">
    <div class="popup-content">
        <button id="closePopup" class="btn-close">&times;</button>
        <h2 class="mb-4">Book Your Package</h2>
<!--         <form id="bookingForm"> -->
            <div class="row g-3">
                <div class="col-12">
                    <div class="form-floating">
                        <input type="text" class="form-control bg-transparent" id="customer_Name"  name ="customer_Name" placeholder="Your Name" required>
                        <label for="name">Your Name</label>
                    </div>
                </div>

                <div class="col-12">
                    <div class="form-floating">
                        <input type="email" class="form-control bg-transparent" id="email" name="email"  placeholder="Your Email" required>
                        <label for="email">Your Email</label>
                    </div>
                </div>

                <div class="col-12">
                    <div class="form-floating">
                        <input type="text" class="form-control bg-transparent" id="address" name="address" placeholder="Your Address" required>
                        <label for="address">Your Address</label>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="tel" class="form-control bg-transparent" id="mobile_Number" name="mobile_Number" placeholder="Your Mobile" pattern="[0-9]{10}" required>
                        <label for="mobile_Number">Your Mobile</label>
                    </div>
                </div>

                <!-- Replace Destination Dropdown with Text Input for Destination -->
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control bg-transparent" id="destination" name="destination" placeholder="Destination" required>
                        <label for="destination">Destination</label>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="date" class="form-control bg-transparent" id="start_Date"  name="start_Date" required>
                        <label for="start_Date">Start Date</label>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="date" class="form-control bg-transparent" id="end_Date" name="end_Date" required>
                        <label for="end_Date">End Date</label>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="hidden" class="form-control bg-transparent" id="modOffBooking" name="modOffBooking" value="online" >
                        
                    </div>
                </div>

                <div class="col-12">
                    <div class="form-floating">
                        <textarea class="form-control bg-transparent" placeholder="Special Request" id="special_Request" name="special_Request" style="height: 100px"></textarea>
                        <label for="special_Request">Special Request</label>
                    </div>
                </div>
                
                

                <div class="col-12">
                    <button id="saveButton" class="btn btn-outline-light w-100 py-3" style="background-color: #87be29;" >Book Now</button>
                </div>
            </div>
<!--         </form> -->
    </div>
</div>

	<!-- Booking Start -->
</div>
</div>
</div>

	<!-- Footer Start -->
		<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s" style="padding-left: 0; padding-right: 0;">
		    <div class="container py-5">
		        <div class="row g-5">
		            <!-- Company Section -->
		            <div class="col-lg-3 col-md-6">
		                <h4 class="text-white mb-3">Company</h4>
		               <a class="btn btn-link" href="about">About Us</a>
		                   <a class="btn btn-link" href="contact">Contact Us</a>

		            </div>

		            <!-- Contact Section -->
		            <div class="col-lg-3 col-md-6">
		                <h4 class="text-white mb-3">Contact</h4>
		                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Shree Gajanan Yatra Company Pvt. Ltd, Front Of Allahbad Bank Mil Colony Stop Paratwada 444805</p>
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
	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/tempusdominus/js/moment.min.js"></script>
	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	<script src="js/hover.js"></script>
	 <script src="js/WebPage.js"></script>

	<script>
		// JavaScript to toggle the visibility of the block
		document
				.getElementById('tour-info')
				.addEventListener(
						'click',
						function() {
							const block = document
									.querySelector('.tour-includes-block');
							block.style.display = block.style.display === 'block' ? 'none'
									: 'block';
						});

		document
				.getElementById('close-tour-info')
				.addEventListener(
						'click',
						function() {
							document.querySelector('.tour-includes-block').style.display = 'none';
						});
	</script>
	<script>
    // Ensure the "All Highlights" block is toggled correctly
    document.getElementById('more-highlights').addEventListener('click', function (e) {
        e.preventDefault(); // Prevent default link behavior
        const highlightsBlock = document.getElementById('all-highlights');
        highlightsBlock.style.display = 'block'; // Make the block visible
    });

    document.getElementById('close-highlights').addEventListener('click', function () {
        const highlightsBlock = document.getElementById('all-highlights');
        highlightsBlock.style.display = 'none'; // Hide the block
    });
</script>

 <script>
        // Get the button and the form
        const showFormBtn = document.getElementById("showFormBtn");
        const bookForm = document.getElementById("bookForm");

        // Add click event listener
        showFormBtn.addEventListener("click", (e) => {
            e.preventDefault(); // Prevent default anchor behavior
            bookForm.style.display = "block"; // Show the form
            bookForm.scrollIntoView({ behavior: "smooth" }); // Scroll into view
        });
    </script>
    
<script type="text/javascript">
	function getAllPackages() {
		    $.ajax({
		        url: "packagetype/International",
		        type: 'GET',
		        success: function(response) {
		            const packagesContainer = document.getElementById('packages-container');
		            packagesContainer.innerHTML = ''; // Clear existing content

		            const packages = typeof response === 'string' ? JSON.parse(response) : response;

		            packages.forEach(pkg => {
		                const imageUrl = `data:image/jpeg;base64,`+pkg.packageImage+` || ''}`;
		                const ratingStars = `<span>⭐⭐⭐⭐</span>`; // Placeholder for rating stars
		                const highlightsPreview = pkg.highlights ? `${pkg.highlights.substring(0, 50)}...` : 'No highlights available';
		                const fullHighlights = pkg.highlights || 'No highlights available';

		                // Using template literals for HTML generation
		                const packageHtml = ''
		                	+
		                    '<div class="package-item">' +
		                        '<div class="overflow-hidden image-container">' +
		                            '<img class="img-fluid" src="data:image/jpeg;base64,' + pkg.packageImage + '" alt="Package Image">' +
		                        '</div>' +
		                        '<div class="d-flex border-bottom">' +
		                        '<small class="flex-fill text-center border-end py-2">' +
                                '<i class="fa fa-calendar-alt text-primary me-2"></i>' + pkg.duration + ' days' +
                            '</small>' +
                           ' <small class="flex-fill text-center border-end py-2">'+
                           ' <i class="fa fa-rupee-sign text-primary me-2"></i>'+ pkg.price + 
                       ' </small>'+
		<!--                            '<small class="flex-fill text-center py-2" style="position: relative; display: inline-block; cursor: pointer;">' +-->
		<!--                                '<i class="fa fa-globe text-primary me-2"></i>' +-->
		<!--                                '<span>' + pkg.locations + ' Country <i class="fa fa-building text-primary me-2"></i>' + pkg.cities + ' Cities</span>' +-->
		<!--                                '<div class="hover-content" style="display: none; position: absolute; top: 100%; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 10px; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); z-index: 10;">' +-->
		<!--                                    '<p class="with-symbol">You will visit ' + pkg.countries + ' country and ' + pkg.cities + ' cities.</p>' +-->
		<!--                                '</div>' +-->
		<!--                            '</small>' +-->
		                        '</div>' +
		                        '<div class="text-center p-4">' +
		                        '<h5 class="mb-0">' + pkg.packageName + '</h5>' +
// 		                            '<h3 class="mb-0">&#8377;' + pkg.price + '</h3>' +
		                           '<div class="mb-3" style="display: none;" type="hidden">' + pkg.id + '</div>' +
		                            '<div style="position: relative;">' +
		<!--                                '<h5 class="text-center">Tour Highlights</h5>' +-->
		<!--                                '<p class="tour-highlights">' +-->
		<!--                                    highlightsPreview +-->
		<!--                                    '<a href="#" class="text-success" data-id="' + pkg.id + '" style="margin-left: 10px; cursor: pointer;">More...</a>' +-->
		<!--                                '</p>' +-->
		                                '<div id="all-highlights-' + pkg.id + '" style="display: none; position: absolute; top: 100%; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 10px; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); z-index: 10;">' +
		<!--                                    '<h5>All Tour Highlights</h5>' +-->
		                                    '<ul>' + pkg.packagename + '</ul>' +
		                                    '<button class="btn btn-sm btn-danger" data-id="' + pkg.id + '" style="margin-top: 10px;">Close</button>' +
		                                '</div>' +
		                            '</div>' +
		                            '<div class="d-flex justify-content-center mb-2">' +
		                            '<a href="delhiInformation?id=' + pkg.id + '" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;" >View Tour Details</a>'+

		                                '<a href="#" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;" onclick="showBookingForm(\'' + pkg.packageName + '\')">Book Now</a>' +
		                            '</div>' +
		                        '</div>' +
		                    '</div>';
		                ;
		                // Append the generated HTML to the container
		                packagesContainer.innerHTML += packageHtml;
		            });
		        },
		        error: function(xhr, status, error) {
		            console.error('Error fetching package details:', status, error);
		            alert('Failed to fetch package details.');
		        }
		    });
		}
		
		function showBookingForm(packageName) {
		    // Show the booking form
		    document.getElementById('bookForm').style.display = 'flex';

		    // Set the destination (package name) in the form
		    document.getElementById('destination').value = packageName;
		}

		// Close the popup
		document.getElementById('closePopup').addEventListener('click', function () {
		    document.getElementById('bookForm').style.display = 'none';
		});


		$(document).ready(function() {
		    getAllPackages(); // Fetch data when the page loads
		});




</script>

<script>
$(document).ready(function() {
    // Click event handler for the save button
    $("#saveButton").click(function() {
        const customer_Name = $("#customer_Name").val();
        const email = $("#email").val();
        const address = $("#address").val();
        const mobile_Number = $("#mobile_Number").val();
        const destination = $("#destination").val();
        const special_Request = $("#special_Request").val();
        const modOffBooking = $("#modOffBooking").val();
        
        const start_Date = $("#start_Date").val();
        const end_Date = $("#end_Date").val();
        
        
       
        // Construct batch data object
        const batchData = {
        		customer_Name: customer_Name,
        		email: email,
        		address: address,
        		mobile_Number: mobile_Number,
        		destination: destination,
        		special_Request: special_Request,
        		modOffBooking: modOffBooking,
        		start_Date: start_Date,
        		end_Date: end_Date
        };
        
        if (!customer_Name || !email || !address || !mobile_Number || !destination || !special_Request  || !modOffBooking|| !start_Date || !end_Date) {
            alert("Please fill all required fields.");
            return;
        }

        // Send AJAX request to save batch data
        $.ajax({
            url: "auth/saveBooking",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(batchData),
            success: function(response) {
                alert("Booking Successfull...");
                window.location.href = "packages";
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
 
</body>

</html>