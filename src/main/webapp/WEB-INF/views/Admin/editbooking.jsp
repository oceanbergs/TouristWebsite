<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shree Gajanan Yatra - Admin Dashboard</title>
<!-- Add jQuery Library -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
/* General Reset */
/* General Styling */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Georgia', serif;
}

/* Dashboard Layout */
.dashboard {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

/* Header Styling */
.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #2c3e50;
	color: #ecf0f1;
	padding: 10px 20px;
}

.header .logo img {
	width: 80px;
}

.header .actions img {
	width: 30px;
	margin: 0 10px;
	cursor: pointer;
	transition: transform 0.3s;
}

.header .actions img:hover {
	transform: scale(1.1);
}

/* Sidebar Styling */
.sidebar {
	width: 250px;
	min-height: 100vh;
	background-color: #2c3e50;
	color: #ecf0f1;
	padding: 20px;
	flex-shrink: 0;
	overflow-y: auto;
}

.sidebar h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 1.4em;
}

.sidebar nav ul {
	list-style: none;
}

.sidebar nav ul li {
	margin: 15px 0;
}

.sidebar nav ul li a {
	color: #ecf0f1;
	text-decoration: none;
	font-size: 1.1em;
	display: block;
	padding: 10px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.sidebar nav ul li a:hover, .sidebar nav ul li a.active {
	background-color: #34495e;
}

/* Main Content */
.main-content {
	flex: 1;
	padding: 20px;
	background-color: #f8f9fa;
}

/* Card Styling */
.card-container {
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	margin-top: 20px;
}

.card {
	background-color: #3498db;
	color: #fff;
	flex: 1;
	min-width: 250px;
	padding: 20px;
	border-radius: 8px;
	text-align: center;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
}

.card:hover {
	transform: translateY(-5px);
}

.card h3 {
	margin-bottom: 10px;
}

/* Form Container Styling */
.form-container {
	background-color: #fff;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	max-width: 1000px;
	margin: 30px auto;
	min-height: 350px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #2c3e50;
	font-size: 1.5em;
}

.form-container label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
	color: #34495e;
}

.form-container input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 1em;
}

.form-container button {
	width: 100%;
	padding: 12px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 1em;
	transition: background-color 0.3s;
}

.form-container button:hover {
	background-color: #2980b9;
}

.form-container select {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 1em;
	background-color: #fff;
	cursor: pointer;
}

.form-container select:focus {
	outline: none;
	border-color: #87be29;
	box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
}

/* Responsive Design */
@media ( max-width : 1024px) {
	.card-container {
		flex-direction: column;
	}
	.sidebar {
		width: 200px;
	}
}

@media ( max-width : 768px) {
	.sidebar {
		display: none;
	}
	.header {
		justify-content: space-between;
		padding: 10px;
	}
	.main-content {
		padding: 10px;
	}
	.card {
		min-width: 100%;
	}
	.form-container {
		margin: 10px;
		padding: 20px;
	}
}

@media ( max-width : 480px) {
	.header .logo img {
		width: 60px;
	}
	.header .actions img {
		width: 25px;
	}
	.form-container {
		padding: 15px;
	}
}
/* Table Styling */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	background-color: #fff;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

thead {
	background-color: #2c3e50;
	color: #ecf0f1;
}

thead th {
	padding: 12px 15px;
	text-align: left;
	font-weight: bold;
	border-bottom: 2px solid #34495e;
}

/* tbody Styling */
tbody {
	background-color: #f9fafc;
}

tbody tr {
	border-bottom: 1px solid #ddd;
	transition: background-color 0.2s;
}

tbody tr:hover {
	background-color: #f1f1f1;
}

tbody td {
	padding: 10px 15px;
	text-align: left;
	color: #2c3e50;
	font-size: 0.95em;
}

/* Alternate Row Colors */
tbody tr:nth-child(even) {
	background-color: #f2f6f8;
}

/* Action Icons Styling */
tbody td .action-icons i {
	margin: 0 5px;
	cursor: pointer;
	font-size: 18px;
}

tbody td .fa-eye {
	color: #007BFF;
}

tbody td .fa-pen-to-square {
	color: #12e068;
}

tbody td .fa-trash {
	color: #eb070f;
}

/* Responsive Table */
@media ( max-width : 768px) {
	table {
		display: block;
		overflow-x: auto;
		white-space: nowrap;
	}
	tbody td {
		font-size: 0.85em;
		padding: 8px 10px;
	}
	thead th {
		font-size: 0.9em;
		padding: 10px 12px;
	}
	.companyname {
		margin: 0;
		text-align: left;
		padding-left: 0px;
	}
	      
	
	
}
}
</style>
</head>
<body>
	<div class="dashboard">
		<!-- Header -->
		<header class="header">
			<div class="logo">
				<img src="../img/ShreeGajanan.png" alt=" ">
			</div>
			<h2 class="companyname">Shri Gajanan Yatra Company Pvt. Ltd</h2>
			<div class="actions">
				<a href="logout">
        <img src="../img/logout.png" alt="Logout">
    </a>
			</div>
		</header>

		<div style="display: flex;">
			<!-- Sidebar -->
			<aside class="sidebar">
				<nav>
					<ul>
						<li><a href="notification">Enquiry</a></li>
						<li><a href="dashboard">Dashboard</a></li>
						<li><a href="packageType">Packages
								Type</a></li>
						<li><a href="managePackage" >  Manage Packages</a></li>
						<li><a href="bookingView">Manage Booking</a></li>
						<li><a href="manageGallery">Manage Gallery</a></li>
						  <li><a href="bannerManagement">Banner Management</a></li>
<!--						<li><a href="#users">User Management</a></li>-->
					 
<!--						<li><a href="#settings">Settings</a></li>-->
					</ul>
				</nav>
			</aside>

			<!-- Main Content -->

					
							<main class="main-content" style="padding-top: 50px;">
  <section id="add-package">
    <div class="form-container" style="width: 100%; margin: auto; min-height: 250px;">
      <h2>Update Booking</h2>
      
      <input type="hidden" id="id" name="id">
<!--       <form id="fileUploadForm" enctype="multipart/form-data"> -->
	<div style="display: flex; flex-direction: column; gap: 20px;">

		<div style="display: flex; flex-direction: column; gap: 20px;">

		  <!-- Row 1: Client Name and Email -->
		  <div style="display: flex; gap: 20px; align-items: flex-start;">
		    <div style="flex: 1;">
		      <label for="customer_Name">Client Name</label>
		      <input type="text" id="customer_Name" name="customer_Name" placeholder="Enter client name" required
		        style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>
		    <div style="flex: 1;">
		      <label for="email">Email</label>
		      <input type="email" id="email" name="email" placeholder="Enter email" required
		         style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>
		  </div>

		  <!-- Row 2: Contact and Package Name -->
		  <div style="display: flex; gap: 20px; align-items: flex-start;">
		    <div style="flex: 1;">
		      <label for="mobile_Number">Contact</label>
		      <input type="tel" id="mobile_Number" name="mobile_Number" placeholder="Enter contact number" required
		        style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>
		    <div style="flex: 1;">
				<label for="destination">Package Name</label>
				<select id="destination" name="destination" required style="width: 100%; padding: 8px; margin-top: 5px;">
<!--				  <option value="" disabled selected>Select a package</option>-->
<!--				  <option value="silver">Silver Package</option>-->
<!--				  <option value="gold">Gold Package</option>-->
<!--				  <option value="platinum">Platinum Package</option>-->
				</select>
		    </div>
		  </div>

		  <!-- Row 3: Start Date and End Date -->
		  <div style="display: flex; gap: 20px; align-items: flex-start;">
		    <div style="flex: 1;">
		      <label for="start_Date">Start Date</label>
		      <input type="date" id="start_Date" name="start_Date" required
		         style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>
		    <div style="flex: 1;">
		      <label for="end_Date">End Date</label>
		      <input type="date" id="end_Date" name="end_Date" required
		         style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>
		  </div>

		 

		  <!-- Row 5: Client Address and Mode of Booking -->
		  <div style="display: flex; gap: 20px; align-items: flex-start;">
		    <!-- Client Address -->
		    <div style="flex: 1;">
		      <label for="address">Client Address</label>
		      <input type="text" id="address" name="address" placeholder="Enter client address"
		        style="width: 100%; padding: 8px; margin-top: 5px; height: 40px; font-size: 1rem;">
		    </div>

		    <!-- Mode of Booking -->
		    <div style="flex: 1;">
		      <label for="modOffBooking">Mode of Booking</label>
		      <select id="modOffBooking" name="modOffBooking" required style="width: 100%; padding: 8px; margin-top: 5px;">
		        <option value="" disabled selected>Select mode of booking</option>
		        <option value="online">Online</option>
		        <option value="offline">Offline</option>
		      </select>
		    </div>
		  </div>
		  
		  
		  <div style="margin-bottom: 20px;">
		    <label for="special_Request">Special Request</label>
		    <textarea id="special_Request" name="special_Request" placeholder="Enter any special requests"
		      style="width: 100%; padding: 8px; margin-top: 5px; font-size: 1rem; height: 80px; resize: vertical;"></textarea>		  </div>


		</div>

					  

						        <!-- Submit Button -->
								<div style="margin-top: 20px;">
								    <button id="submitBtn"
								        style="width: 100%; background-color: #87be29; color: white; padding: 14px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem;">
								        Update Booking
								    </button>
								</div>
								
					</div>
				</section>
			</main>
			
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	  	<script src="lib/wow/wow.min.js"></script>
	  	<script src="lib/easing/easing.min.js"></script>
	  	<script src="lib/waypoints/waypoints.min.js"></script>
	  	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	  	<script src="lib/tempusdominus/js/moment.min.js"></script>
	  	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	  	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
	  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

$(document).ready(function () {
    // Get bookingId from the URL parameter
    var bookingId = getUrlParameter('id');
    var bookingDestination = ''; // To hold booking's destination

    if (bookingId) {
        getBookingDetails(bookingId);
    } else {
        alert("Booking ID is missing");
    }

    // Load course data for package selection dropdown
    getCourseData();

    // Function to fetch booking details (including locations, days, and itinerary)
    function getBookingDetails(id) {
        $.ajax({
            url: "getBookingDetails/" + id, // Ensure the correct endpoint is used
            type: "GET",
            contentType: "application/json",
            success: function (response) {
                console.log("Server Response:", response); // Debugging

                if (response) {
                    bookingDestination = response.destination || ''; // Store the destination
                    populateForm(response);
                } else {
                    alert("No Booking data found.");
                }
            },
            error: function (jqXHR, status, errorThrown) {
                if (jqXHR.status === 403) {
                    alert("You don't have permission to access this resource.");
                } else if (jqXHR.status === 404) {
                    alert("Booking not found.");
                } else {
                    alert("Failed to communicate with the server. Please try again later.");
                }
            }
        });
    }

    // Function to populate the form with booking details
    function populateForm(booking) {
        console.log("Populating Form with Data:", booking); // Debugging

        document.getElementById("id").value = booking.id || '';
        document.getElementById("customer_Name").value = booking.customer_Name || '';
        document.getElementById("email").value = booking.email || '';
        document.getElementById("address").value = booking.address || '';
        document.getElementById("mobile_Number").value = booking.mobile_Number || '';
        document.getElementById("destination").value = booking.destination || '';
        document.getElementById("special_Request").value = booking.special_Request || '';
        document.getElementById("modOffBooking").value = booking.modOffBooking || '';
        document.getElementById("start_Date").value = booking.start_Date ? booking.start_Date.split('T')[0] : '';
        document.getElementById("end_Date").value = booking.end_Date ? booking.end_Date.split('T')[0] : '';
        $("#start_Date").val(booking.start_Date || '');
        $("#end_Date").val(booking.end_Date || '');
    }

    // Function to load package data for the dropdown
   function getCourseData() {
    $.ajax({
        type: "GET",
        url: 'getAllPackages', // API endpoint
        dataType: 'json', // Expected response type
        success: function (response) {
            console.log("Course Data Response:", response); // Debugging

            // Clear existing options
            $("#destination").empty();

            // Add default "Select a Package" option
            var appenddata1 = "<option value='' disabled selected>Select a Package</option>";

            // Add the selected destination if available
            if (bookingDestination) {
                appenddata1 += "<option value='" + bookingDestination + "' selected>" + bookingDestination + "</option>";
            }

            if (response && response.length > 0) {
                for (var i = 0; i < response.length; i++) {
                    appenddata1 += "<option value='" + response[i].packageName + "'>" + response[i].packageName + "</option>";
                }

                $("#destination").html(appenddata1); // Populate the dropdown
            } else {
                console.warn("No package data found.");
                alert("No packages available at the moment.");
            }
        },
        error: function (jqXHR, status, errorThrown) {
            console.error("Error fetching package data:", errorThrown); // Debugging
            if (jqXHR.status === 403) {
                alert("You don't have permission to access this resource.");
            } else {
                alert("Failed to load packages. Please try again later.");
            }
        }
    });
}



    // Function to get URL parameter by name
    function getUrlParameter(name) {
        name = name.replace(/[[\]]/g, '\\$&');
        var regex = new RegExp('[?&]' + name + '=([^&#]*)');
        var results = regex.exec(location.search);
        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
    }
});

	  </script>
	  
	  
	<script type="text/javascript">
    $(document).ready(function () {
        // Listen for the 'Update Booking' button click event
        $('#submitBtn').click(function () {
            updateBookingDetails();
        });

        // Function to update booking details
        function updateBookingDetails() {
            // Get the booking ID (make sure the ID is retrieved correctly)
            var id = $("#id").val();

            // Construct the booking object with form values
            var booking = {
                id: id,
                customer_Name: $("#customer_Name").val(),
                email: $("#email").val(),
                address: $("#address").val(),
                mobile_Number: $("#mobile_Number").val(),
                destination: $("#destination").val(),
                special_Request: $("#special_Request").val(),
                modOffBooking: $("#modOffBooking").val(),
                start_Date: $("#start_Date").val(),
                end_Date: $("#end_Date").val()
            };

            // Send the updated booking details to the server via AJAX
            $.ajax({
                url: 'updateBookingDetails/' + id, // Ensure the correct API endpoint
                type: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(booking),
                success: function () {
                    alert("Booking updated successfully!");
                    // Optionally, redirect to a different page or refresh the page
                    window.location.reload(); // Refresh the page
                },
                error: function (jqXHR, status, errorThrown) {
                    // Handle error cases
                    if (jqXHR.status === 404) {
                        alert("Booking not found.");
                    } else if (jqXHR.status === 403) {
                        alert("You don't have permission to update this booking.");
                    } else {
                        alert("Failed to update booking. Please try again.");
                    }
                }
            });
        }
    });
</script>

</body>
</html>


			


			

		

			




