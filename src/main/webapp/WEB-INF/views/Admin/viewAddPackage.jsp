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
				<img src="../img/profile.png" alt="Profile"> <img
					src="../img/setting.png" alt="Setting"> <img src="../img/logout.png"
					alt="Logout">
			</div>
		</header>

		<div style="display: flex;">
			<!-- Sidebar -->
			<aside class="sidebar">
				<nav>
					<ul>
						<li><a href="/TouristWebsite/auth/dashboard">Dashboard</a></li>
						<li><a href="/TouristWebsite/auth/packageType">Packages
								Type</a></li>
						<li><a href="managePackage"
							class="active" style="background-color: #87be29;">Manage
								Packages</a></li>
<!--						<li><a href="#bookings">Bookings</a></li>-->
<!--						<li><a href="#payments">Payments</a></li>-->
<!--						<li><a href="#users">User Management</a></li>-->
						 <li><a href="/TouristWebsite/auth/notification">Notifications</a></li>
<!--						<li><a href="#settings">Settings</a></li>-->
					</ul>
				</nav>
			</aside>

			<!-- Main Content -->
			
			
				<main class="main-content" style="padding-top: 50px;">
  <section id="add-package">
    <div class="form-container" style="width: 100%; margin: auto; min-height: 250px;">
      <h2>View Package</h2>
      <!-- <form id="fileUploadForm" enctype="multipart/form-data"> -->
        <div style="display: flex; flex-wrap: wrap; gap: 20px;">
        
        <input type="hidden" id="id" name="id">
        
        <!-- Package Name Field -->
        <div style="flex: 1; min-width: 90%;">
          <label for="packageName">Package Name</label>
          <input type="text" id="packageName" name="packageName" placeholder="Enter package name" required
            style="width: 100%; padding: 8px; margin-top: 5px;" readonly>
        </div>

        <div style="flex: 1; min-width: 45%;">
          <label for="packageType">Package Type</label>
          <input type="text" id="packageType" name="packageType" placeholder="Enter duration" required
            style="width: 100%; padding: 8px; margin-top: 5px;" readonly>
        </div>

        <!-- Duration -->
        <div style="flex: 1; min-width: 45%;">
          <label for="duration">Duration</label>
          <input type="text" id="duration" name="duration" placeholder="Enter duration" required
            style="width: 100%; padding: 8px; margin-top: 5px;" readonly>
        </div>
        </div>

        <div style="display: flex; gap: 40px; align-items: flex-start; margin-top: 20px;">
          <!-- Price and Package Image Fields -->
          <div style="flex: 1; display: flex; flex-direction: column; gap: 15px;">
            <!-- Price Field -->
            <div style="min-width: 100%;">
              <label for="price">Price</label>
              <input type="text" id="price" name="price" placeholder="Enter price" required
                style="width: 67.5%; padding: 8px; margin-top: 5px;" readonly>
            </div>

            <!-- Package Image Field -->
            <div style="min-width: 100%;">
<!--               <label type="hidden" for="packageImage">Package Image</label> -->
              <input type="hidden" id="packageImage" name="packageImage" accept="image/jpeg" required
                style="width: 100%; padding: 8px; margin-top: 5px;" disabled>
              <p id="imageError" style="color: red; font-size: 14px; margin-top: 5px;"></p>
            </div>
          </div>

          <!-- Image Preview -->
          <div
            style="width: 200px; height: 200px; border: 1px solid #ccc; border-radius: 4px; display: flex; justify-content: center; align-items: center; overflow: hidden; margin-left: 20px;">
            <img id="imagePreview" name="imagePreview" src="" alt="Image Preview"
              style="display: none; width: 100%; height: 100%; object-fit: cover;">
          </div>
        </div>

       
<!-- Additional Options: Hotel, Inclusions, Transport, Flight, Sightseeing -->
<div style="flex: 1; min-width: 90%; margin-top: 10px;"> 
  <label>Package Includes:</label>
  <div style="display: flex; flex-wrap: wrap; gap: 10px; margin-top: 5px;">
    <label>
      <input type="checkbox" id="hotel" name="hotel" style="margin-right: 5px;"  > Hotel
    </label>
    <label>
      <input type="checkbox" id="meals" name="meals" style="margin-right: 5px;"  > Meal
    </label>
    <label>
      <input type="checkbox" id="transportation" name="transportation" style="margin-right: 5px;"  > Transport
    </label>
    <label>
      <input type="checkbox" id="flight" name="flight" style="margin-right: 5px;"  > Flight
    </label>
    <label>
      <input type="checkbox" id="sightseeing" name="sightseeing" style="margin-right: 5px;"  > Sightseeing
    </label>
    <label>
      <input type="checkbox" id="visa" name="visa" style="margin-right: 5px;"  > Visa
    </label>
  </div>
</div>




        <!-- Additional Info Textarea -->
        <div style="margin-top: 10px; min-width: 100%;">
          <label for="note" style="font-weight: bold; color: #34495e;">Additional Info:</label>
          <textarea id="note" name="note" placeholder="Enter additional information"
            style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-size: 1rem; height: 40px;" readonly>
          </textarea>
        </div>

        <!-- Location Section -->
        <div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
          <label for="location" style="font-weight: bold; color: #34495e;">Location:</label>
        </div>
        <div id="locationContainer" style="margin-top: 10px;"></div>

        <!-- Itinerary Section -->
        <div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
          <label for="itinerary" style="font-weight: bold; color: #34495e;">Itinerary:</label>
        </div>
        <br>
         <div id="itineraryContainer"></div>

        <!-- Submit Button -->
        <div style="margin-top: 20px;">
          
        </div> 
    </div>
  </section>
</main>


	
	<script type="text/javascript">
    document.getElementById('packageImage').addEventListener('change', function(event) {
        const fileInput = event.target;
        const imagePreview = document.getElementById('imagePreview');
        const errorElement = document.getElementById('imageError');
        const file = fileInput.files[0];
        
        if (file) {
            const fileType = file.type;
            if (fileType !== 'image/jpeg') {
                errorElement.textContent = 'Please upload a JPG image.';
                fileInput.value = ''; // Clear the invalid file
                imagePreview.style.display = 'none'; // Hide preview
                imagePreview.src = ''; // Clear preview
            } else {
                errorElement.textContent = ''; // Clear error message
                const reader = new FileReader();
                reader.onload = function(e) {
                    imagePreview.src = e.target.result;
                    imagePreview.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        } else {
            imagePreview.style.display = 'none';
            imagePreview.src = '';
            errorElement.textContent = '';
        }
    });
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
<!--  // Function to fetch package details using AJAX-->
<!--  function fetchPackageDetails(id) {-->
<!--    // Alert when the function is called-->
<!--    alert("Fetching package details for ID: " + id);-->
<!--    console.log("Fetching package details for ID:", id);-->

<!--    $.ajax({-->
<!--      url: '/TouristWebsite/auth/getPackageDetails/' + id,  // Correct API endpoint URL-->
<!--      method: 'GET',-->
<!--      success: function(data) {-->
<!--        // Alert and log data received from API-->
<!--        alert('Data received: ' + JSON.stringify(data));-->
<!--        console.log('Data received:', data);-->

<!--        // Check if data is not empty and populate the form fields-->
<!--        if (data) {-->
<!--          alert('Populating the fields with the received data');-->
<!--          $('#id').val(data.id);  // Fill in the ID field-->
<!--          $('#packageName').val(data.packageName);  // Fill in the package name field-->
<!--          $('#packageType').val(data.packageType);  // Fill in the package type field-->
<!--          $('#duration').val(data.duration);  // Fill in the duration field-->
<!--          $('#price').val(data.price);  // Fill in the price field-->
<!--        } else {-->
<!--          alert("No data received for this package.");-->
<!--          console.log("No data received for this package.");-->
<!--        }-->
<!--      },-->
<!--      error: function(xhr, status, error) {-->
<!--        // Alert and log error details-->
<!--        alert('AJAX error: ' + error);-->
<!--        console.error('AJAX error:', error);-->
<!--      }-->
<!--    });-->
<!--  }-->

<!--  // Call the function with the desired package ID (example ID 1)-->
<!--  alert("Calling fetchPackageDetails with ID 1");-->
<!--  fetchPackageDetails(1); // Example: Fetch details for package with ID 1-->
</script>


	

	  

<script type="text/javascript">
$(document).ready(function () {
    // Get packageId from the URL parameter
	
	
    var packageId = getUrlParameter('id');

    if (packageId) {
        getPackageDetails(packageId);
    } else {
        alert("Package ID is missing");
    }

    // Function to fetch package details (including locations, days, and itinerary)
    function getPackageDetails(id) {
        $.ajax({
            url: "/TouristWebsite/auth/getPackageDetails/" + id,
            type: "GET",
            contentType: "application/json",
            success: function (response) {
                console.log(response); // Inspect the response
                if (response) {
                    populateForm(response);
                    if (response.locations && Array.isArray(response.locations)) {
                        populateLocations(response.locations);
                    } else {
                        $('#locationContainer').html('<p>No locations available for this package.</p>');
                    }
                    if (response.iternary && Array.isArray(response.iternary)) {
                        populateItinerary(response.iternary);
                        
                    } else {
                        $('#itineraryContainer').html('<p>No itinerary available for this package.</p>');
                    }
                } else {
                    alert("No Package data found");
                }
            },
            error: function (jqXHR, status, errorThrown) {
                if (jqXHR.status === 403) {
                    alert("YOU DON'T HAVE PERMISSION");
                } else {
                    alert("Failed to communicate with the server");
                }
            }
        });
    }

	function populateForm(packageDetails) {
	    console.log("Package Data:", packageDetails); // Debugging

	    // Populate text fields
	    document.getElementById("id").value = packageDetails.id || '';
	    document.getElementById("packageName").value = packageDetails.packageName || '';
	    document.getElementById("duration").value = packageDetails.duration || '';
	    document.getElementById("packageType").value = packageDetails.packageType || '';
	    document.getElementById("price").value = packageDetails.price || '';
	    document.getElementById("note").value = packageDetails.allInclude?.note || '';

	    // Populate checkboxes
	    if (packageDetails.allInclude) {
	        console.log("All Include Data:", packageDetails.allInclude); // Debugging the data

	        setCheckbox("hotel", packageDetails.allInclude.hotel);
	        setCheckbox("meals", packageDetails.allInclude.meals);
	        setCheckbox("transportation", packageDetails.allInclude.transportation);
	        setCheckbox("flight", packageDetails.allInclude.flight);
	        setCheckbox("sightseeing", packageDetails.allInclude.sightseeing);
	        setCheckbox("visa", packageDetails.allInclude.visa);
	    } else {
	        console.warn("AllInclude data is missing or undefined");
	        resetCheckboxes();
	    }

	    // Display image if present
	    const imagePreview = document.getElementById("imagePreview"); // Target the img tag for preview

	    if (packageDetails.packageImage) { 
	        imagePreview.src = "data:image/jpeg;base64," + packageDetails.packageImage;  // Use directly without re-adding the prefix
	        imagePreview.style.display = 'block'; // Show the image preview container
	    } else {
	        imagePreview.src = ''; // Clear the previous image
	        imagePreview.style.display = 'none'; // Hide if no image
	    }
	}


    // Function to dynamically populate locations
    function populateLocations(locations) {
        const locationContainer = document.getElementById('locationContainer');
        locationContainer.innerHTML = ''; // Clear existing locations

        // Check if locations are provided
        if (Array.isArray(locations) && locations.length > 0) {
            locations.forEach(location => {
                const locationWrapper = document.createElement('div');
                locationWrapper.style.display = 'flex';
                locationWrapper.style.alignItems = 'center';
                locationWrapper.style.gap = '5px';
                locationWrapper.style.marginTop = '5px';

                const locationInput = document.createElement('input');
                locationInput.type = 'text';
                locationInput.value = location.locationName || ''; // Access the correct location name field
                locationInput.placeholder = 'Enter location';
                locationInput.style.padding = '8px';
                locationInput.style.border = '1px solid #ccc';
                locationInput.style.borderRadius = '3px';
                locationInput.style.flex = '1';
                locationInput.style.fontSize = '0.9rem';
                locationInput.name = 'location[]'; // Ensure proper naming for API

                locationWrapper.appendChild(locationInput);
                locationContainer.appendChild(locationWrapper);
            });
        } else {
            locationContainer.innerHTML = '<p>No locations available for this package.</p>';
        }
    }

	function populateItinerary(itinerary) {
	    const itineraryContainer = document.getElementById('itineraryContainer');
	    itineraryContainer.innerHTML = ''; // Clear existing itinerary data

	    if (Array.isArray(itinerary) && itinerary.length > 0) {
	        itinerary.forEach((dayDetails, index) => {
	            const dayWrapper = document.createElement('div');
	            dayWrapper.style.marginBottom = '20px';
	            dayWrapper.style.padding = '10px';
	            dayWrapper.style.border = '1px solid #ddd';
	            dayWrapper.style.borderRadius = '5px';

	            // Day Number and Destination
	            const dayDiv = document.createElement('div');
	            dayDiv.style.display = 'flex';
	            dayDiv.style.flexDirection = 'column';
	            dayDiv.style.gap = '10px';
	            dayDiv.style.marginBottom = '10px';

	            // Day Number
	            const dayNumberLabel = document.createElement('label');
	            dayNumberLabel.innerText = 'Day Number:';
	            dayNumberLabel.style.fontWeight = 'bold';

	            const dayNumberInput = document.createElement('input');
	            dayNumberInput.type = 'text';
	            dayNumberInput.name = 'day[]';
	            dayNumberInput.value = dayDetails.day || '';
	            dayNumberInput.placeholder = 'Day Number';
	            dayNumberInput.style.padding = '10px';
	            dayNumberInput.style.border = '1px solid #ccc';
	            dayNumberInput.style.borderRadius = '5px';

	            // Destination
	            const destinationLabel = document.createElement('label');
	            destinationLabel.innerText = 'Destination:';
	            destinationLabel.style.fontWeight = 'bold';

	            const destinationInput = document.createElement('input');
	            destinationInput.type = 'text';
	            destinationInput.name = 'destination[]';
	            destinationInput.value = dayDetails.destination || '';
	            destinationInput.placeholder = 'Destination';
	            destinationInput.style.padding = '10px';
	            destinationInput.style.border = '1px solid #ccc';
	            destinationInput.style.borderRadius = '5px';

	            dayDiv.appendChild(dayNumberLabel);
	            dayDiv.appendChild(dayNumberInput);
	            dayDiv.appendChild(destinationLabel);
	            dayDiv.appendChild(destinationInput);
	            dayWrapper.appendChild(dayDiv);

	            // Sightseeing Details
	            const sightseeingContainer = document.createElement('div');
	            sightseeingContainer.style.display = 'flex';
	            sightseeingContainer.style.flexDirection = 'column';
	            sightseeingContainer.style.gap = '10px';
	            sightseeingContainer.style.marginTop = '10px';

	            const sightseeingLabel = document.createElement('label');
	            sightseeingLabel.innerText = 'Sightseeing Details:';
	            sightseeingLabel.style.fontWeight = 'bold';
	            sightseeingContainer.appendChild(sightseeingLabel);

	            if (Array.isArray(dayDetails.sightseeingEntrie) && dayDetails.sightseeingEntrie.length > 0) {
	                dayDetails.sightseeingEntrie.forEach((sight, sIndex) => {
	                    const sightInput = document.createElement('input');
	                    sightInput.type = 'text';
	                    sightInput.name = `sightseeingDay[${index}][]`;
	                    sightInput.value = sight.location || '';
	                    sightInput.placeholder = `Sightseeing Location ${sIndex + 1}`;
	                    sightInput.style.padding = '8px';
	                    sightInput.style.border = '1px solid #ccc';
	                    sightInput.style.borderRadius = '3px';

	                    sightseeingContainer.appendChild(sightInput);
	                });
	            } else {
	                const noSightseeing = document.createElement('p');
	                noSightseeing.innerText = 'No sightseeing details available for this day.';
	                sightseeingContainer.appendChild(noSightseeing);
	            }

	            dayWrapper.appendChild(sightseeingContainer);

	            // Inclusions (checkboxes)
	            const inclusionsDiv = document.createElement('div');
	            inclusionsDiv.innerHTML = `
	                <label><strong>Inclusions:</strong></label>
	                <div style="display: flex; gap: 10px; flex-wrap: wrap; margin-top: 5px;">
	                    <label><input type="checkbox" id="breakfast_${index}" name="inclusions[${index}][breakfast]"> Breakfast</label>
	                    <label><input type="checkbox" id="lunch_${index}" name="inclusions[${index}][lunch]"> Lunch</label>
	                    <label><input type="checkbox" id="dinner_${index}" name="inclusions[${index}][dinner]"> Dinner</label>
	                    <label><input type="checkbox" id="nightStay_${index}" name="inclusions[${index}][nightStay]"> Night Stay</label>
	                    <label><input type="checkbox" id="hiTea_${index}" name="inclusions[${index}][hiTea]"> Hi-Tea</label>
	                </div>
	            `;
	            dayWrapper.appendChild(inclusionsDiv);
	            itineraryContainer.appendChild(dayWrapper);

	            // Set checkbox values dynamically for each day
	            setCheckbox(`breakfast_${index}`, dayDetails.breakfast);
	            setCheckbox(`lunch_${index}`, dayDetails.lunch);
	            setCheckbox(`dinner_${index}`, dayDetails.dinner);
	            setCheckbox(`nightStay_${index}`, dayDetails.nightStay);
	            setCheckbox(`hiTea_${index}`, dayDetails.hiTea);
	        });
	    } else {
	        itineraryContainer.innerHTML = '<p>No itinerary available for this package.</p>';
	    }
	}

	// Utility function to set checkbox based on value
	function setCheckbox(id, value) {
	    const checkbox = document.getElementById(id);
	    if (checkbox) {
	        checkbox.checked = Boolean(value);
	    } else {
	        console.warn(`Checkbox with id '${id}' not found`);
	    }
	}



	// Call the function to populate itinerary
	populateItinerary(itineraryData);




    // Utility function to safely set checkbox
    function setCheckbox(id, value) {
    const checkbox = document.getElementById(id);
    if (checkbox) {
      checkbox.checked = Boolean(value);
      
      // Disable checkbox if not checked
      checkbox.disabled = !Boolean(value);
    } else {
      console.warn(`Checkbox with id '${id}' not found`);
    }
  }

    // Utility function to reset all checkboxes
    function resetCheckboxes() {
    ["hotel", "meals", "transportation", "flight", "sightseeing", "visa"].forEach(id => {
      const checkbox = document.getElementById(id);
      if (checkbox) {
        checkbox.checked = false;
        checkbox.disabled = true;  // Disable all checkboxes if no data is available
      }
        });
    }

    // Utility function to get URL parameters
    function getUrlParameter(name) {
        var results = new RegExp('[?&]' + name + '=([^&#]*)').exec(window.location.href);
        return results ? decodeURIComponent(results[1]) : null;
    }
});

function getInclusions() {
    const selectedCheckboxes = document.querySelectorAll('input[name="inclusions"]:checked');
    const inclusions = Array.from(selectedCheckboxes).map(checkbox => checkbox.value);
    console.log("Selected Inclusions:", inclusions);
    return inclusions;
}



</script>



