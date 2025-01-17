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

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

 
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
		                   <a href="/TouristWebsite/about" class="nav-item nav-link">About</a>
		                   <a href="/TouristWebsite/service" class="nav-item nav-link">Services</a>

		                   <!-- All Tours India (Domestic) Dropdown -->
						   <div class="nav-item dropdown ">
						   					       <!-- Clickable Label as Dropdown Toggle -->
						   					      
												   <a href="#" class="nav-link dropdown-toggl " id="packageDropdownToggle" data-bs-toggle="dropdown" role="button">India <i class="bi bi-caret-down-fill fs-6"></i></a>
						   					       
						   					       <!-- Dropdown Menu for Dynamic List -->
						   					       <ul class="dropdown-menu" id="packageDropdown">
						   					           <!-- Dynamic package names will be added here -->
						   					       </ul>
						   					   </div>


		                   <!-- All World Tours (International) Dropdown -->
						<a href="/TouristWebsite/GetInternation" class="nav-item nav-link ">World</a>


		                   <a href="/TouristWebsite/packages" class="nav-item nav-link active">Packages</a>
		                   <a href="/TouristWebsite/contact" class="nav-item nav-link ">Contact</a>
		               </div>
		           <!-- <a href="" class="btn btn-primary rounded-pill py-2 px-4">Register</a>-->
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
				                   All Packages
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
				<h6 class="section-title bg-white text-center text-primary px-3">Packages</h6>
				<h1 class="mb-5">Awesome Packages</h1>
			</div>
			<div class="row g-2 justify-content-center">
				<div class="parent-container">
					<div id="packages-container">
						<!-- Example Package Item -->
<!--						<div class="package-item">-->
<!--							<div class="image-container">-->
<!--								<img class="fixed-size-image" src="img/agra.jpg" alt="Agra">-->
<!--							</div>-->
<!--							<div class="d-flex border-bottom">-->
<!--								<small class="flex-fill text-center border-end py-2">-->
<!--									<i class="fa fa-map-marker-alt text-primary me-2"></i>Delhi Agra-->
<!--								</small>-->
<!--								<small class="flex-fill text-center border-end py-2">-->
<!--									<i class="fa fa-calendar-alt text-primary me-2"></i>5 days-->
<!--								</small>-->
<!--								<small class="flex-fill text-center py-2" style="position: relative;">-->
<!--									<i class="fa fa-globe text-primary me-2"></i>-->
<!--									<span>1 Country <i class="fa fa-building text-primary me-2"></i>4 Cities</span>-->
<!--									<div class="hover-content">-->
<!--										<p class="with-symbol"><span class="symbol"></span>You Will Visit 1 Country, 4 Cities</p>-->
<!--										<p class="route-title india"><span class="symbol"></span>India</p>-->
<!--										<p class="route-item">Agra</p>-->
<!--										<p class="route-item">Mathura</p>-->
<!--										<p class="route-item">Delhi</p>-->
<!--										<p class="route-item">Vrindavan</p>-->
<!--									</div>-->
<!--								</small>-->
<!--							</div>-->
<!--							<div class="text-center p-4">-->
<!--								<h3 class="mb-0">&#8377;36,000</h3>-->
<!--								<div class="mb-3">-->
<!--									<small class="fa fa-star text-primary"></small>-->
<!--									<small class="fa fa-star text-primary"></small>-->
<!--									<small class="fa fa-star text-primary"></small>-->
<!--									<small class="fa fa-star text-primary"></small>-->
<!--									<small class="fa fa-star text-primary"></small>-->
<!--								</div>-->
<!--								<h5 class="text-center">Tour Highlights</h5>-->
<!--								<p class="tour-highlights">-->
<!--									<span>Taj Mahal</span>, -->
<!--									<span>Red Fort</span>, -->
<!--									<span>Mathura</span>, -->
<!--									<span>Vrindavan</span>-->
<!--									<a href="#" id="more-highlights" style="color: #3CB371; margin-left: 10px;">More...</a>-->
<!--								</p>-->
<!--								<div id="all-highlights">-->
<!--									<h5>All Tour Highlights</h5>-->
<!--									<ul>-->
<!--										<li>Taj Mahal</li>-->
<!--										<li>Red Fort</li>-->
<!--										<li>Mathura</li>-->
<!--										<li>Vrindavan</li>-->
<!--									</ul>-->
<!--								</div>-->
<!--							</div>-->
<!--						</div>-->
<!--						 End of Example Package Item -->
<!--					</div>-->
<!--				</div>-->
<!--			</div>-->
		</div>
	</div>










<script>		// JavaScript to toggle the visibility of the block
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
function getAllPackages() {
    $.ajax({
        url: "getpackagetype",
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
                                '<i class="fa fa-map-marker-alt text-primary me-2"></i>' + pkg.packageName +
                            '</small>' +
                            '<small class="flex-fill text-center border-end py-2">' +
                                '<i class="fa fa-calendar-alt text-primary me-2"></i>' + pkg.duration + ' days' +
                            '</small>' +
<!--                            '<small class="flex-fill text-center py-2" style="position: relative; display: inline-block; cursor: pointer;">' +-->
<!--                                '<i class="fa fa-globe text-primary me-2"></i>' +-->
<!--                                '<span>' + pkg.locations + ' Country <i class="fa fa-building text-primary me-2"></i>' + pkg.cities + ' Cities</span>' +-->
<!--                                '<div class="hover-content" style="display: none; position: absolute; top: 100%; left: 50%; transform: translateX(-50%); background-color: #fff; padding: 10px; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); z-index: 10;">' +-->
<!--                                    '<p class="with-symbol">You will visit ' + pkg.countries + ' country and ' + pkg.cities + ' cities.</p>' +-->
<!--                                '</div>' +-->
<!--                            '</small>' +-->
                        '</div>' +
                        '<div class="text-center p-4">' +
                            '<h3 class="mb-0">&#8377;' + pkg.price + '</h3>' +
<!--                            '<div class="mb-3">' + pkg.packageName + '</div>' +-->
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
                                '<a href="/TouristWebsite/delhiInformation" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">View Tour Details</a>' +
                                '<a href="#" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a>' +
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

$(document).ready(function() {
    getAllPackages(); // Fetch data when the page loads
});





</script>
 
</body>

</html>