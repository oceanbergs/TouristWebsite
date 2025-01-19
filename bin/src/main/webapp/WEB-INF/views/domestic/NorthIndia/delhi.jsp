<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Delhi-Package</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<style>
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

.route-title {
	margin: 0;
	padding: 5px 0;
	font-weight: normal; /* Default styling for route-title */
}

.route-item {
	margin: 0;
	padding: 5px 0;
	border-left: 2px solid #007bff;
	padding-left: 10px;
}

/* Special styling for specific India element */
.route-title.india {
	display: flex;
	align-items: center;
	font-weight: bold;
	gap: 10px;
}

.route-title.india .symbol {
	width: 10px;
	height: 10px;
	background-color: #007bff;
	border-radius: 50%;
	display: inline-block;
}

.with-symbol {
	display: flex;
	align-items: center;
	gap: 8px;
}

.with-symbol .symbol {
	width: 10px;
	height: 10px;
	background-color: #007bff;
	border-radius: 50%;
	display: inline-block;
}
.tour-highlights {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 1px;
}

.tour-highlights span {
    margin-right: 5px;
}
#bookingForm {
            display: none; /* Initially hide the form */
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
  <div id="topbar" class="container-fluid bg-dark px-5 d-none d-lg-block" style="position: fixed; top: 0; width: 100%; z-index: 1030;">
    <div class="row gx-0">
        <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
            <div class="d-inline-flex align-items-center" style="height: 80px;">
                <a href="" class="navbar-brand p-0">
                    <h1 class="m-0 text-white" style="font-family: 'Georgia', serif;">
    <img src="img/ShreeGajanan.png" alt="Tourist Image" style="height: 80px; margin-right: 30px;">
    Shri Gajanan Yatra 
</h1>

                </a>
            </div>
        </div>
    </div>
</div>

<!-- Navbar -->
<div id="navbar" class="container-fluid p-0" 
     style="position: fixed; top: 80px; left: 0px; width: 100%; z-index: 1029; background-color: black; padding: 5px 0;">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-1" 
         style="padding: 5px 15px;">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="/TouristWebsite" class="nav-item nav-link active">Home</a>
                <div class="nav-item dropdown">
    <a href="#" class="nav-link dropdown-toggle" id="packageDropdownToggle" data-bs-toggle="dropdown">India</a>
    <div class="dropdown-menu" id="packageDropdown">
        <!-- Dynamic package names will be added here -->
    </div>
</div>


<!--                 <div class="nav-item dropdown"> -->
<!--                     <a href="#" class="nav-link dropdown-toggle" id="internationalDropdownToggle" data-bs-toggle="dropdown">World</a> -->
<!--                     <div class="dropdown-menu m-0" id="internationalDropdown"></div> -->
<!--                 </div> -->
<a href="about.html" class="nav-item nav-link">World</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="service.html" class="nav-item nav-link">Services</a>
                <a href="/TouristWebsite/delhiPackage" class="nav-item nav-link">Packages</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="destination.html" class="dropdown-item">Destination</a>
                        <a href="booking.html" class="dropdown-item">Booking</a>
                        <a href="team.html" class="dropdown-item">Travel Guides</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
           <a href="javascript:void(0);" class="btn btn-primary rounded-pill py-1 px-3" id="quickEnquiryBtn">Quick Enquiry</a>

        </div>
    </nav>
</div>

<input type="hidden" id="packageType" name="packageType">

		<<div class="container-fluid bg-primary py-5 mb-5 hero-header">
    <div class="container py-5">
        <div class="row justify-content-center py-5">
            <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                <h1 class="display-3 text-white animated slideInDown" id="packageHeading" style="font-family: 'Georgia', serif;">
                    ${packageType}
                </h1>
                <nav aria-label="breadcrumb">
                    <!-- Breadcrumb can be added here -->
                </nav>
            </div>
        </div>
    </div>
</div>
	<!-- Navbar & Hero End -->

 


	<!-- Package Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title bg-white text-center text-primary px-3">Packages</h6>
				<h1 class="mb-5">Awesome Packages</h1>
			</div>
			<div class="row g-4 justify-content-center">
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="package-item">
						<div class="overflow-hidden">
							<img class="img-fluid" src="img/agra.jpg" alt="">
						</div>
						<div class="d-flex border-bottom">
							<small class="flex-fill text-center border-end py-2"><i
								class="fa fa-map-marker-alt text-primary me-2"></i>Delhi Agra</small> <small
								class="flex-fill text-center border-end py-2"><i
								class="fa fa-calendar-alt text-primary me-2"></i>5 days</small> <small
								class="flex-fill text-center py-2"
								style="position: relative; display: inline-block; cursor: pointer;">
								<i class="fa fa-globe text-primary me-2"></i> <span>1
									Country <i class="fa fa-building text-primary me-2"></i>4
									Cities
							</span>
								<div class="hover-content">
									<p class="with-symbol">
										<span class="symbol"></span> You Will Visit 1 Country 4 Cities
									</p>
									<p class="route-title india">
										<span class="symbol"></span>India
									</p>
									<p class="route-item">Agra</p>
									<p class="route-item">Mathura</p>
									<p class="route-item">Delhi</p>
									<p class="route-item">Vrindavan</p>
								</div>
							</small> 
							<small class="flex-fill text-center py-2"
								style="position: relative; display: inline-block;"> <!-- Icon with hover title -->
								<i class="fa fa-info-circle text-primary me-2"
								title="All Includes" style="cursor: pointer;" id="tour-info"></i>

								<!-- Hidden block for additional information -->
								<div class="tour-includes-block"
									style="display: none; position: absolute; top: 40px; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 5px; width: 300px; z-index: 10;">
									<div
										style="display: flex; justify-content: space-between; align-items: center;">
										<h5 class="mb-0">Tour Includes</h5>
										<i class="fa fa-times" style="cursor: pointer;"
											id="close-tour-info"></i>
									</div>
									<hr>
									<ul style="list-style: none; padding: 0; margin: 0;">
										<li style="margin-bottom: 10px;"><i
											class="fa fa-hotel text-primary me-2"></i>Hotel</li>
										<li style="margin-bottom: 10px;"><i
											class="fa fa-utensils text-primary me-2"></i>Meals</li>
										<li style="margin-bottom: 10px;"><i
											class="fa fa-bus text-primary me-2"></i>Transport</li>
										<li style="margin-bottom: 10px;"><i
											class="fa fa-plane text-primary me-2"></i>Flight</li>
										<li style="margin-bottom: 10px;"><i
											class="fa fa-binoculars text-primary me-2"></i>Sightseeing</li>
									</ul>
									<p style="color: red; margin-top: 10px; font-size: 0.85rem;">
										Except for joining/leaving. To & fro Economy class airfare is
										included for all departure cities. Taxes extra.</p>
								</div>
							</small>



						</div>
						<div class="text-center p-4">
							<h3 class="mb-0">&#8377;36,000</h3>

							<div class="mb-3">
    <small class="fa fa-star text-primary"></small>
    <small class="fa fa-star text-primary"></small>
    <small class="fa fa-star text-primary"></small>
    <small class="fa fa-star text-primary"></small>
    <small class="fa fa-star text-primary"></small>
</div>

<!-- Tour Highlights Section -->
<div style="position: relative;">
    <h5 class="text-center">Tour Highlights</h5>
    <p class="tour-highlights">
        <span>Taj Mahal</span>,
        <span>Red Fort</span>,
        <span>Mathura</span>,
        <span>Vrindavan</span>
        <a href="#" id="more-highlights" style="color: #3CB371; margin-left: 10px; cursor: pointer;">More...</a>
    </p>

    <!-- Hidden block for all tour highlights -->
    <div id="all-highlights" 
         style="display: none; position: absolute; top: 50px; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 5px; width: 300px; z-index: 10;">
        <div style="display: flex; justify-content: space-between; align-items: center;">
            <h5 class="mb-0">All Tour Highlights</h5>
            <i class="fa fa-times" id="close-highlights" style="cursor: pointer;"></i>
        </div>
        <hr>
         <div style="flex: 1; text-align: left;">
        <ul style="list-style-type: disc; padding-left: 20px;">
            <li>Taj Mahal</li>
            <li>Red Fort</li>
            <li>Mathura</li>
            <li>Vrindavan</li>
            <li>Akbar’s Tomb</li>
            <li>Fatehpur Sikri</li>
            <li>Chandni Chowk</li>
            <li>India Gate</li>
        </ul>
        </div>
    </div>
</div>
<!-- Buttons Section -->
 <div class="d-flex justify-content-center mb-2">
        <a href="/TouristWebsite/delhiInformation" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">View Tour Details</a>
        <a href="#" class="btn btn-sm btn-primary px-3" id="showFormBtn" style="border-radius: 0 30px 30px 0;">Book Now</a>
    </div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
   <div class="package-item" >
        <div class="overflow-hidden">
            <img  src="img/jaipur.jpg" style="height:270px" alt="Delhi Agra Jaipur">
        </div>
        <div class="d-flex border-bottom">
            <small class="flex-fill text-center border-end py-2">
                <i class="fa fa-map-marker-alt text-primary me-2"></i>Delhi Agra Jaipur
            </small>
            <small class="flex-fill text-center border-end py-2">
                <i class="fa fa-calendar-alt text-primary me-2"></i>7 days
            </small>
            <small class="flex-fill text-center py-2" style="position: relative; display: inline-block; cursor: pointer;">
                <i class="fa fa-globe text-primary me-2"></i>
                <span>
                    1 Country 
                    <i class="fa fa-building text-primary me-2"></i>4 Cities
                </span>
                <div class="hover-content">
                    <p class="with-symbol">
                        <span class="symbol"></span> You Will Visit 1 Country 4 Cities
                    </p>
                    <p class="route-title india">
                        <span class="symbol"></span>India
                    </p>
                    <p class="route-item">Agra</p>
                    <p class="route-item">Mathura</p>
                    <p class="route-item">Delhi</p>
                    <p class="route-item">Vrindavan</p>
                </div>
            </small>
            <small class="flex-fill text-center py-2" style="position: relative; display: inline-block;">
                <i class="fa fa-info-circle text-primary me-2" title="All Includes" style="cursor: pointer;" id="tour-info"></i>
                <div class="tour-includes-block"
                     style="display: none; position: absolute; top: 40px; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 5px; width: 300px; z-index: 10;">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <h5 class="mb-0">Tour Includes</h5>
                        <i class="fa fa-times" style="cursor: pointer;" id="close-tour-info"></i>
                    </div>
                    <hr>
                    <ul style="list-style: none; padding: 0; margin: 0;">
                        <li style="margin-bottom: 10px;"><i class="fa fa-hotel text-primary me-2"></i>Hotel</li>
                        <li style="margin-bottom: 10px;"><i class="fa fa-utensils text-primary me-2"></i>Meals</li>
                        <li style="margin-bottom: 10px;"><i class="fa fa-bus text-primary me-2"></i>Transport</li>
                        <li style="margin-bottom: 10px;"><i class="fa fa-plane text-primary me-2"></i>Flight</li>
                        <li style="margin-bottom: 10px;"><i class="fa fa-binoculars text-primary me-2"></i>Sightseeing</li>
                    </ul>
                    <p style="color: red; margin-top: 10px; font-size: 0.85rem;">
                        Except for joining/leaving. To & fro Economy class airfare is
                        included for all departure cities. Taxes extra.
                    </p>
                </div>
            </small>
        </div>
        <div class="text-center p-4">
            <h3 class="mb-0">&#8377;45,000</h3>
            <div class="mb-3">
                <small class="fa fa-star text-primary"></small>
                <small class="fa fa-star text-primary"></small>
                <small class="fa fa-star text-primary"></small>
                <small class="fa fa-star text-primary"></small>
                <small class="fa fa-star text-primary"></small>
            </div>
            <div style="position: relative;">
                <h5 class="text-center">Tour Highlights</h5>
                <p class="tour-highlights">
                    <span>Taj Mahal</span>,
                    <span>Red Fort</span>,
                    <span>Jaipur</span>,
                    <span>Amber Fort</span>
                    <a href="#" id="more-highlights" style="color: #3CB371; margin-left: 10px; cursor: pointer;">More...</a>
                </p>
                <div id="all-highlights" 
                     style="display: none; position: absolute; top: 50px; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 5px; width: 300px; z-index: 10;">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <h5 class="mb-0">All Tour Highlights</h5>
                        <i class="fa fa-times" id="close-highlights" style="cursor: pointer;"></i>
                    </div>
                    <hr>
                    <div style="flex: 1; text-align: left;">
                        <ul style="list-style-type: disc; padding-left: 20px;">
                            <li>Taj Mahal</li>
                            <li>Red Fort</li>
                            <li>Amber Fort</li>
                            <li>Hawa Mahal</li>
                            <li>Fatehpur Sikri</li>
                            <li>City Palace</li>
                        </ul>
                    </div>
                </div>
            </div>
             <div class="d-flex justify-content-center mb-4">
        <a href="#" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">View Tour Details</a>
        <a href="#" id="bookNowBtn" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a>
    </div>
        </div>
    </div>
</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="package-item">
						<div class="overflow-hidden">
							<img class="img-fluid" src="img/package-3.jpg" alt="">
						</div>
						<div class="d-flex border-bottom">
							<small class="flex-fill text-center border-end py-2"><i
								class="fa fa-map-marker-alt text-primary me-2"></i>Agra</small> <small
								class="flex-fill text-center border-end py-2"><i
								class="fa fa-calendar-alt text-primary me-2"></i>3 days</small> <small
								class="flex-fill text-center py-2"><i
								class="fa fa-user text-primary me-2"></i>2 Person</small>
						</div>
						<div class="text-center p-4">
							<h3 class="mb-0">&#8377;65,000</h3>
							<div class="mb-3">
								<small class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small>
							</div>
							<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum
								sit diam amet diam eos</p>
							<div class="d-flex justify-content-center mb-2">
								<a href="#" class="btn btn-sm btn-primary px-3 border-end"
									style="border-radius: 30px 0 0 30px;">View Tour Details</a> <a href="#"
									class="btn btn-sm btn-primary px-3"
									style="border-radius: 0 30px 30px 0;">Book Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Package End -->


	<!-- Booking Start -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="booking p-5">
				<div class="row g-5 align-items-center">
					<div class="col-md-6 text-white">
						<h6 class="text-white text-uppercase">Booking</h6>
						<h1 class="text-white mb-4">Online Booking</h1>
						<p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor
							diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et
							lorem et sit.</p>
						<p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor
							diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et
							lorem et sit, sed stet lorem sit clita duo justo magna dolore
							erat amet</p>
						<a class="btn btn-outline-light py-3 px-5 mt-2" href="">Read
							More</a>
					</div>
					<div class="col-md-6 mx-auto" id="bookForm">
        <h1 class="text-white mb-4">Book A Tour</h1>
        <form>
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control bg-transparent" id="name" placeholder="Your Name">
                        <label for="name">Your Name</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="email" class="form-control bg-transparent" id="email" placeholder="Your Email">
                        <label for="email">Your Email</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating date" id="date3" data-target-input="nearest">
                        <input type="text" class="form-control bg-transparent datetimepicker-input" id="datetime" placeholder="Date & Time" data-target="#date3" data-toggle="datetimepicker" />
                        <label for="datetime">Date & Time</label>
                    </div>
                </div>
                <div class="col-md-6"> 
    <div class="form-floating">
        <select class="form-select bg-transparent" id="designationDropdown">
            <!-- Options will be dynamically loaded -->
        </select>
       <label for="designationDropdown">Destination</label>
    </div>
</div>
                <div class="col-12">
                    <div class="form-floating">
                        <textarea class="form-control bg-transparent" placeholder="Special Request" id="message" style="height: 100px"></textarea>
                        <label for="message">Special Request</label>
                    </div>
                </div>
                <div class="col-12">
                    <button class="btn btn-outline-light w-100 py-3" type="submit">Book Now</button>
                </div>
            </div>
        </form>
    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- Booking Start -->


	<!-- Process Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center pb-4 wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title bg-white text-center text-primary px-3">Process</h6>
				<h1 class="mb-5">3 Easy Steps</h1>
			</div>
			<div class="row gy-5 gx-4 justify-content-center">
				<div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="position-relative border border-primary pt-5 pb-4 px-4">
						<div
							class="d-inline-flex align-items-center justify-content-center bg-primary rounded-circle position-absolute top-0 start-50 translate-middle shadow"
							style="width: 100px; height: 100px;">
							<i class="fa fa-globe fa-3x text-white"></i>
						</div>
						<h5 class="mt-4">Choose A Destination</h5>
						<hr class="w-25 mx-auto bg-primary mb-1">
						<hr class="w-50 mx-auto bg-primary mt-0">
						<p class="mb-0">Tempor erat elitr rebum clita dolor diam ipsum
							sit diam amet diam eos erat ipsum et lorem et sit sed stet lorem
							sit</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp"
					data-wow-delay="0.3s">
					<div class="position-relative border border-primary pt-5 pb-4 px-4">
						<div
							class="d-inline-flex align-items-center justify-content-center bg-primary rounded-circle position-absolute top-0 start-50 translate-middle shadow"
							style="width: 100px; height: 100px;">
							<i class="fa fa-dollar-sign fa-3x text-white"></i>
						</div>
						<h5 class="mt-4">Pay Online</h5>
						<hr class="w-25 mx-auto bg-primary mb-1">
						<hr class="w-50 mx-auto bg-primary mt-0">
						<p class="mb-0">Tempor erat elitr rebum clita dolor diam ipsum
							sit diam amet diam eos erat ipsum et lorem et sit sed stet lorem
							sit</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp"
					data-wow-delay="0.5s">
					<div class="position-relative border border-primary pt-5 pb-4 px-4">
						<div
							class="d-inline-flex align-items-center justify-content-center bg-primary rounded-circle position-absolute top-0 start-50 translate-middle shadow"
							style="width: 100px; height: 100px;">
							<i class="fa fa-plane fa-3x text-white"></i>
						</div>
						<h5 class="mt-4">Fly Today</h5>
						<hr class="w-25 mx-auto bg-primary mb-1">
						<hr class="w-50 mx-auto bg-primary mt-0">
						<p class="mb-0">Tempor erat elitr rebum clita dolor diam ipsum
							sit diam amet diam eos erat ipsum et lorem et sit sed stet lorem
							sit</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Process Start -->


	<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3" style="font-family: 'Georgia', serif;">Company</h4>
                <a class="btn btn-link" href="">About Us</a>
                <a class="btn btn-link" href="">Contact Us</a>
                <a class="btn btn-link" href="">Privacy Policy</a>
                <a class="btn btn-link" href="">Terms & Condition</a>
                <a class="btn btn-link" href="">FAQs & Help</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3" style="font-family: 'Georgia', serif;">Contact</h4>
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
                <h4 class="text-white mb-3" style="font-family: 'Georgia', serif;">Gallery</h4>
                <div class="row g-2 pt-2">
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="Tour Package Image 1">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="Tour Package Image 2">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="Tour Package Image 3">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="Tour Package Image 4">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="Tour Package Image 5">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="Tour Package Image 6">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3" style="font-family: 'Georgia', serif;">Newsletter</h4>
                <p>Stay updated with our latest pilgrimage tours and news.</p>
                <div class="position-relative mx-auto" style="max-width: 400px;">
                    <input class="form-control border-primary w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                    <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">Sign Up</button>
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
                        <a href="">FAQs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Footer End -->


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

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	<script src="js/hover.js"></script>
	 <script src="js/domestic.js"></script>

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
    $(document).ready(function() {
        // Function to load destinations into the dropdown
        function loadDestinations() {
            $.ajax({
                type: "GET",
                url: '/TouristWebsite/destination',
                dataType: 'json',
                success: function(response) {
                    const designationDropdown = $("#designationDropdown");
                    designationDropdown.empty(); // Clear existing options
                    designationDropdown.append('<option value="">Select Destination</option>');
                    response.forEach(function(destination) {
                        designationDropdown.append($('<option>', {
                            value: destination.id, // Assuming 'id' field exists in the response
                            text: destination.destination // Assuming 'name' field exists in the response
                        }));
                    });
                },
                error: function(jqXHR, status, errorThrown) {
                    alert("Failed to load destinations: " + errorThrown);
                }
            });
        }
        
        // Call the function to load destinations
        loadDestinations();
    });
</script>

<script type="text/javascript">
// document.addEventListener("DOMContentLoaded", function () {
//     // Fetch the packageType from the hidden input field
//     const packageType = document.getElementById('packageType').value;

//     // Function to fetch and display package details
//     async function fetchPackageData(packageType) {
//         try {
//             const response = await fetch(`/TouristWebsite/FindPacakgeDetailsByPackageType=${packageType}`);
//             if (!response.ok) {
//                 throw new Error(`Failed to fetch data: ${response.status}`);
//             }

//             const packageData = await response.json();

//             // Dynamically populate the package details
//             const packageContainer = document.getElementById('package-container');
//             packageContainer.innerHTML = `
//                 <div class="package-item">
//                     <div class="overflow-hidden">
//                         <img class="img-fluid" src="${packageData.packageImage}" alt="${packageData.title}">
//                     </div>
//                     <div class="d-flex border-bottom">
//                         <small class="flex-fill text-center border-end py-2">
//                             <i class="fa fa-map-marker-alt text-primary me-2"></i>${packageData.location}
//                         </small>
//                         <small class="flex-fill text-center border-end py-2">
//                             <i class="fa fa-calendar-alt text-primary me-2"></i>${packageData.duration}
//                         </small>
//                         <small class="flex-fill text-center py-2">
//                             <i class="fa fa-globe text-primary me-2"></i>${packageData.locations} Country(s), ${packageData.locations} City(s)
//                         </small>
//                     </div>
//                     <div class="text-center p-4">
//                         <h3 class="mb-0">&#8377;${packageData.price}</h3>
//                         <div class="mb-3">
//                             ${renderStars(packageData.rating)}
//                         </div>
//                         <h5 class="text-center">Tour Highlights</h5>
//                         <p>${packageData.highlights.join(', ')}</p>
//                     </div>
//                 </div>
//             `;
//         } catch (error) {
//             console.error('Error fetching package data:', error);
//             document.getElementById('package-container').innerHTML = `<p>Error loading package details. Please try again later.</p>`;
//         }
//     }

//     // Helper function to render stars based on rating
//     function renderStars(rating) {
//         let stars = '';
//         for (let i = 0; i < 5; i++) {
//             stars += `<small class="fa fa-star${i < rating ? ' text-primary' : ''}"></small>`;
//         }
//         return stars;
//     }

//     // Call the fetch function with the packageType
//     if (packageType) {
//         fetchPackageData(packageType);
//     } else {
//         console.error('No packageType specified!');
//     }
// });

</script>
 
</body>

</html>