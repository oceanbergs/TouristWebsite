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
					src="../img/setting.png" alt="Setting"> <img
					src="../img/logout.png" alt="Logout">
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
						<li><a href="managePackage" class="active"
							style="background-color: #87be29;">  Manage Packages</a></li>
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
					<div class="form-container"
						style="width: 100%; margin: auto; min-height: 250px;">
						<h2>Update Package Details</h2>
						
						<input type="hidden" id="id" name="id">

						 <div style="display: flex; flex-wrap: wrap; gap: 20px;">
						          <!-- Package Name Field -->
						          <div style="flex: 1; min-width: 90%;">
						            <label for="packageName">Package Name</label>
						            <input type="text" id="packageName" name="packageName" placeholder="Enter package name" required
						              style="width: 100%; padding: 8px; margin-top: 5px;">
						          </div>

						          <!-- Nation Dropdown -->
						         <div style="flex: 1; min-width: 45%;">
						    <label for="packageType">Package Type</label>
						    <select id="packageType" name="packageType" required style="width: 100%; padding: 8px; margin-top: 5px;">
						        <option value="" disabled selected>Select Package Type</option>
						         
						    </select>
						</div>



						          <!-- Duration -->
						          <div style="flex: 1; min-width: 45%;">
						            <label for="duration">Duration</label>
						            <input type="text" id="duration" name="duration" placeholder="Enter duration" required
						              style="width: 100%; padding: 8px; margin-top: 5px;">
						          </div>
						        </div>

						        <div style="display: flex; gap: 40px; align-items: flex-start; margin-top: 20px;">
						          <!-- Price and Package Image Fields -->
						          <div style="flex: 1; display: flex; flex-direction: column; gap: 15px;">
						            <!-- Price Field -->
						            <div style="min-width: 100%;">
						              <label for="price">Price</label>
						              <input type="text" id="price" name="price" placeholder="Enter price" required
						                style="width: 67.5%; padding: 8px; margin-top: 5px;">
						            </div>

						            <!-- Package Image Field -->
						            <div style="min-width: 100%;">
						              <label for="packageImage">Package Image</label>
						              <input type="file" id="packageImage" name="packageImage" accept="image/jpeg" required
						                style="width: 100%; padding: 8px; margin-top: 5px;">
						              <p id="imageError" style="color: red; font-size: 14px; margin-top: 5px;"></p>
						            </div>
						          </div>

						          <!-- Image Preview -->
						          <div
						            style="width: 200px; height: 200px; border: 1px solid #ccc; border-radius: 4px; display: flex; justify-content: center; align-items: center; overflow: hidden; margin-left: 20px;">
						            <img id="imagePreview" src="" alt="Image Preview"
						              style="display: none; width: 100%; height: 100%; object-fit: cover;">
						          </div>
						        </div>

						        <!-- Additional Options: Hotel, Inclusions, Transport, Flight, Sightseeing -->
						        <div style="flex: 1; min-width: 90%; margin-top: 10px;">
						          <label>Package Includes:</label>
						          <div style="display: flex; flex-wrap: wrap; gap: 10px; margin-top: 5px;">
						            <label><input type="checkbox" id="hotel" name="hotel" style="margin-right: 5px;"> Hotel</label>
						            <label><input type="checkbox" id="meals" name="meals" style="margin-right: 5px;"> Meal</label>
						            <label><input type="checkbox" id="transport" name="transport" style="margin-right: 5px;"> Transport</label>
						            <label><input type="checkbox" id="flight" name="flight" style="margin-right: 5px;"> Flight</label>
						            <label><input type="checkbox" id="sightseeing" name="sightseeing" style="margin-right: 5px;"> Sightseeing</label>
						            <label><input type="checkbox" id="visa" name="visa" style="margin-right: 5px;"> Visa</label>
						          </div>
						        </div>

						        <!-- Additional Info Textarea -->
						        <div style="margin-top: 10px; min-width: 100%;">
						          <label for="note" style="font-weight: bold; color: #34495e;">Additional Info:</label>
						          <textarea id="note" name="note" placeholder="Enter additional information"
						            style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-size: 1rem; height: 40px;">
						          </textarea>
						        </div>

						        <!-- Location Section -->
						        <div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
						          <label for="location" style="font-weight: bold; color: #34495e;">Location:</label>
						          <button type="button" id="addLocationBtn"
						            style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
						            <i class="fas fa-plus"></i>
						          </button>
						        </div>
						        <div id="locationContainer" style="margin-top: 10px;"></div>

						        <!-- Itinerary Section -->
						        <div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
						          <label for="itinerary" style="font-weight: bold; color: #34495e;">Itinerary:</label>
						          <button type="button" id="addDayBtn"
						            style="background-color: #87be29; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 80px; height: 30px; display: flex; align-items: center; justify-content: center;">
						            Add Day
						          </button>
						        </div>
						        <br>
						         <div id="days-container"></div>

						        <!-- Submit Button -->
								<div style="margin-top: 20px;">
								    <button id="submitBtn"
								        style="width: 100%; background-color: #87be29; color: white; padding: 14px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem;">
								        Update Package
								    </button>
								</div>
								<script type="text/javascript">
									document.addEventListener('DOMContentLoaded', function () {
									    document.getElementById('submitBtn').addEventListener('click', function (event) {
									        event.preventDefault(); // Prevent default form submission
									       // alert('Button clicked!');

									        // ✅ Get Package ID (Make sure it's present in your HTML form)
									        const id = document.getElementById('id') ? document.getElementById('id').value : null;
									        if (!id) {
									            alert('Error: Package ID not found!');
									            return;
									        }
									       // alert('Package ID: ' + id);

									        const fileInput = document.getElementById('packageImage');
									        const file = fileInput.files[0];
									       // alert('File selected: ' + (file ? file.name : 'None'));

									        const locationInputs = document.querySelectorAll('input[name="location[]"]');
									        let locations = [];
									        locationInputs.forEach(input => {
									            const locationName = input.value.trim();
									            if (locationName) {
									                locations.push({ locationName });
									            }
									        });
									       // alert('Locations collected: ' + locations.length);

									        const itinerary = [];
									        const dayBlocks = document.querySelectorAll('.day-block');
									       // alert('Day blocks count: ' + dayBlocks.length);

									        dayBlocks.forEach((dayBlock, index) => {
									            const day = dayBlock.querySelector('input[id="day' + (index + 1) + '"]').value;
									            const destination = dayBlock.querySelector('input[id="destination' + (index + 1) + '"]').value;
									            const breakfast = dayBlock.querySelector('input[name="breakfast[' + (index + 1) + ']"]').checked;
									            const lunch = dayBlock.querySelector('input[name="lunch[' + (index + 1) + ']"]').checked;
									            const dinner = dayBlock.querySelector('input[name="dinner[' + (index + 1) + ']"]').checked;
									            const nightStay = dayBlock.querySelector('input[name="nightStay[' + (index + 1) + ']"]').checked;
									            const hiTea = dayBlock.querySelector('input[name="hiTea[' + (index + 1) + ']"]').checked;

									            const sightseeingEntries = [];
									            const sightseeingWrappers = dayBlock.querySelectorAll('.sightseeingWrapper');
									            alert('Sightseeing wrappers in day ' + (index + 1) + ': ' + sightseeingWrappers.length);

									            sightseeingWrappers.forEach(wrapper => {
									                const sightseeingLocation = wrapper.querySelector('input[name="sightseeingLocation[' + (index + 1) + '][]"]').value;
									                sightseeingEntries.push({ location: sightseeingLocation, day: 'Day ' + day });
									            });

									            itinerary.push({
									                day: 'Day ' + day,
									                destination: destination,
									                dinner: dinner,
									                breakfast: breakfast,
									                hiTea: hiTea,
									                nightStay: nightStay,
									                lunch: lunch,
									                sightseeingEntries: sightseeingEntries
									            });
									        });
									       // alert('Itinerary created with ' + itinerary.length + ' days');

									        if (file) {
									            const reader = new FileReader();
									            reader.onloadend = function () {
									                const base64String = reader.result.replace("data:", "").replace(/^.+,/, "");
									                alert('Image file loaded as base64');

									                const packageData = {
									                    id: id, // ✅ Ensure ID is included in the data
									                    packageName: $('#packageName').val(),
									                    duration: $('#duration').val(),
									                    price: $('#price').val(),
									                    packageType: $('#packageType').val(),
									                    packageImage: base64String,
									                    //locations: locations,
<!--									                    allInclude: {-->
<!--									                        hotel: document.getElementById('hotel').checked,-->
<!--									                        meals: document.getElementById('meals').checked,-->
<!--									                        transportation: document.getElementById('transport').checked,-->
<!--									                        flight: document.getElementById('flight').checked,-->
<!--									                        sightseeing: document.getElementById('sightseeing').checked,-->
<!--									                        visa: document.getElementById('visa').checked,-->
<!--									                        note: $('#note').val()-->
<!--									                    },-->
									                    itinerary: itinerary
									                };

									                // ✅ Send data via AJAX for update
									                alert('Sending data via AJAX');
									                $.ajax({
									                    url: "/TouristWebsite/auth/updatePackageDetails/"+id, // Ensure ID is in the URL
									                    type: 'PUT',
									                    contentType: 'application/json',
									                    data: JSON.stringify(packageData),
									                    success: function (response) {
									                        alert('Update successful! Response: ' + response);
															window.location.href = '/TouristWebsite/auth/managePackage';
									                    },
									                    error: function (error) {
									                        console.error('Error sending data:', error);
									                        alert('Error: Could not update package details.');
									                    }
									                });
									            };
									            reader.readAsDataURL(file);
									        } else {
									            alert("Please select an image file first.");
									        }
									    });
									});

								</script>
					</div>
				</section>
			</main>
			<script>
function getCourseData() {
    $.ajax({
        type: "GET",
        url: '/TouristWebsite/auth/getAllPackageTypeData',
        dataType: 'json', 
        success: function(response) {
            console.log("Full Response:", response); // Log the full response
            if (Array.isArray(response)) {
                var appenddata1 = "";
                for (var i = 0; i < response.length; i++) {
                    appenddata1 += "<option value='" + response[i].packageType + "'>" + response[i].packageType + "</option>";
                }
                $("#packageType").append(appenddata1);
            } else {
                alert("Data is not in the expected format.");
            }
        },
        error: function (jqXHR, status, errorThrown) {
            if (jqXHR.status === 403) {
                alert("YOU DON'T HAVE THE PERMISSION");
            } else {
                alert("Failed to communicate with the server. Please try again later.");
            }
        }
    });
}

// Call the function after its declaration
getCourseData();
</script>




			


			

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

<script>
<!--    const addLocationBtn = document.getElementById('addLocationBtn');-->
<!--    const locationContainer = document.getElementById('locationContainer');-->

<!--    addLocationBtn.addEventListener('click', () => {-->
<!--        // Create a wrapper div-->
<!--        const locationWrapper = document.createElement('div');-->
<!--        locationWrapper.style.display = 'flex';-->
<!--        locationWrapper.style.alignItems = 'center';-->
<!--        locationWrapper.style.gap = '5px';-->
<!--        locationWrapper.style.marginTop = '0px';-->

<!--        // Create the input field-->
<!--        const locationInput = document.createElement('input');-->
<!--        locationInput.type = 'text';-->
<!--        locationInput.placeholder = 'Enter location';-->
<!--        locationInput.style.padding = '8px';-->
<!--        locationInput.style.border = '1px solid #ccc';-->
<!--        locationInput.style.borderRadius = '3px';-->
<!--        locationInput.style.flex = '1';-->
<!--        locationInput.style.fontSize = '0.9rem';-->
        
<!--        locationInput.id = 'location'; // Set a unique id if needed-->
<!--        locationInput.name = 'location[]'; // Set name attribute to match model API-->

<!--        // Create the delete button-->
<!--       const deleteBtn = document.createElement('button');-->
<!--deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';-->
<!--deleteBtn.style.backgroundColor = '#e74c3c';-->
<!--deleteBtn.style.color = 'white';-->
<!--deleteBtn.style.border = 'none';-->
<!--deleteBtn.style.padding = '8px';-->
<!--deleteBtn.style.borderRadius = '3px';-->
<!--deleteBtn.style.cursor = 'pointer';-->
<!--deleteBtn.style.display = 'flex';-->
<!--deleteBtn.style.alignItems = 'center';-->
<!--deleteBtn.style.justifyContent = 'center';-->
<!--deleteBtn.style.fontSize = '1rem';-->

<!--// Align the delete button correctly-->
<!--deleteBtn.style.height = '30px';-->
<!--deleteBtn.style.width = '30px';-->

<!--// Shift the button slightly upward-->
<!--deleteBtn.style.position = 'relative';-->
<!--deleteBtn.style.top = '-7px'; // Adjust this value to control the upward shift-->

<!--        // Delete functionality-->
<!--        deleteBtn.addEventListener('click', () => {-->
<!--            locationContainer.removeChild(locationWrapper);-->
<!--        });-->

<!--        // Append input and delete button to wrapper-->
<!--        locationWrapper.appendChild(locationInput);-->
<!--        locationWrapper.appendChild(deleteBtn);-->

<!--        // Append wrapper to the container-->
<!--        locationContainer.appendChild(locationWrapper);-->
<!--    });-->
<!--</script>-->


<script>
    const addDayBtn = document.getElementById('addDayBtn');
    const daysContainer = document.getElementById('days-container');

    let dayCount = 0;

    addDayBtn.addEventListener('click', () => {
        const newDayBlock = document.createElement('div');
        newDayBlock.classList.add('day-block');
        newDayBlock.style.display = 'flex';
        newDayBlock.style.flexWrap = 'wrap';
        newDayBlock.style.justifyContent = 'space-between';
        newDayBlock.style.border = '1px solid #ccc';
        newDayBlock.style.padding = '10px';
        newDayBlock.style.marginBottom = '10px';
        newDayBlock.style.borderRadius = '5px';
        newDayBlock.style.boxShadow = '0 2px 5px rgba(0, 0, 0, 0.1)';
        newDayBlock.style.position = 'relative';

        // Increment day count
        dayCount++;

        // Add fields for Day Number and Destination
        newDayBlock.innerHTML = `
            <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
                <label for="day`+dayCount+`" style="display: block; margin-bottom: 5px; font-weight: bold;">Day Number:</label>
                <input type="text" id="day`+dayCount+`" name="day[]" placeholder="E.g., 1"
                    style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
            </div>
            <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
                <label for="destination`+dayCount+`" style="display: block; margin-bottom: 5px; font-weight: bold;">Destination:</label>
                <input type="text" id="destination`+dayCount+`" name="destination[]" placeholder="E.g., Amravati - Pune"
                    style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
            </div>
            <div style="flex: 1 1 100%; margin: 5px;">
                <div style="display: flex; justify-content: flex-start; align-items: center; gap: 10px;">
                    <label for="sightseeing`+dayCount+`" style="font-weight: bold; margin-right: 10px;">
                        Sightseeing Details:
                    </label>
                    <button type="button" class="addSightseeingBtn"
                        style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
                <div class="sightseeingContainer" style="display: flex; flex-direction: column; gap: 10px; margin-top: 10px;">
                </div>
                <div style="display: flex; gap: 10px; flex-wrap: wrap;">
                    <label><input type="checkbox" name="breakfast[`+dayCount+`]" value="1">Breakfast</label>
                    <label><input type="checkbox" name="lunch[`+dayCount+`]" value="1">Lunch</label>
                    <label><input type="checkbox" name="dinner[`+dayCount+`]" value="1">Dinner</label>
                    <label><input type="checkbox" name="nightStay[`+dayCount+`]" value="1">Night Stay</label>
                    <label><input type="checkbox" name="hiTea[`+dayCount+`]" value="1">Hi-Tea</label>
                </div>
                <div style="width: 100%; display: flex; align-items: center;">
                    <button class="deleteDayBtn" style="background-color: #e74c3c; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer; height: 30px; width: 100px; display: flex; justify-content: center; align-items: center; font-size: 1rem; margin-left: auto;">
                        Delete Day
                    </button>
                </div>
            </div>
        `;

        daysContainer.appendChild(newDayBlock);

        const addSightseeingBtn = newDayBlock.querySelector('.addSightseeingBtn');
        const sightseeingContainer = newDayBlock.querySelector('.sightseeingContainer');

        addSightseeingBtn.addEventListener('click', () => {
            const sightseeingWrapper = document.createElement('div');
            sightseeingWrapper.classList.add('sightseeingWrapper');
            sightseeingWrapper.style.display = 'flex';
            sightseeingWrapper.style.gap = '10px';
            sightseeingWrapper.style.alignItems = 'center';

            const sightseeingInput = document.createElement('input');
            sightseeingInput.type = 'text';
            sightseeingInput.placeholder = 'Enter details of sightseeing...';
            sightseeingInput.style.flex = '1 1 calc(85% - 10px)';
            sightseeingInput.style.height = '40px';
            sightseeingInput.style.padding = '10px';
            sightseeingInput.style.fontSize = '1rem';
            sightseeingInput.style.border = '1px solid #ccc';
            sightseeingInput.style.borderRadius = '5px';
            sightseeingInput.style.boxSizing = 'border-box';
            sightseeingInput.name = `sightseeingLocation[`+dayCount+`][]`;

            const deleteBtn = document.createElement('button');
            deleteBtn.classList.add('deleteBtn');
            deleteBtn.style.backgroundColor = '#e74c3c';
            deleteBtn.style.color = 'white';
            deleteBtn.style.border = 'none';
            deleteBtn.style.padding = '10px';
            deleteBtn.style.borderRadius = '5px';
            deleteBtn.style.cursor = 'pointer';
            deleteBtn.style.height = '30px';
            deleteBtn.style.width = '30px';
            deleteBtn.style.display = 'flex';
            deleteBtn.style.justifyContent = 'center';
            deleteBtn.style.alignItems = 'center';
            deleteBtn.style.fontSize = '1rem';
            deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';

            deleteBtn.style.position = 'relative';
            deleteBtn.style.top = '-7px';

            deleteBtn.addEventListener('click', () => {
                sightseeingContainer.removeChild(sightseeingWrapper);
            });

            sightseeingWrapper.appendChild(sightseeingInput);
            sightseeingWrapper.appendChild(deleteBtn);
            sightseeingContainer.appendChild(sightseeingWrapper);
        });
    });

    document.getElementById('days-container').addEventListener('click', function(e) {
        if (e.target && e.target.classList.contains('deleteDayBtn')) {
            e.target.closest('.day-block').remove();
        }

        if (e.target && e.target.classList.contains('deleteBtn')) {
            e.target.closest('.sightseeingWrapper').remove();
        }
    });
</script>



			<script type="text/javascript">
    // Initialize an empty array to store locations
  

<!--    document.getElementById('submitBtn').addEventListener('click', function() {-->
<!--		alert(hii);-->
   
<!--    const fileInput = document.getElementById('packageImage');-->
<!--    const file = fileInput.files[0];-->
    
<!--    const locationInputs = document.querySelectorAll('input[name="location[]"]');-->
<!--    let locations = [];-->

<!--    locationInputs.forEach(input => {-->
<!--        const locationName = input.value.trim();-->
<!--        if (locationName) {-->
<!--            locations.push({ locationName });-->
<!--        }-->
<!--    });-->

<!--   // console.log(locations)-->

<!--   const itinerary = [];-->
<!--const dayBlocks = document.querySelectorAll('.day-block');-->

<!--dayBlocks.forEach((dayBlock, index) => {-->
<!--    const day = dayBlock.querySelector('input[id="day'+(index + 1)+'"]').value;-->
<!--    const destination = dayBlock.querySelector('input[id="destination'+(index + 1)+'"]').value;-->
<!--    const breakfast = dayBlock.querySelector('input[name="breakfast['+(index + 1)+']"]').checked;-->
<!--    const lunch = dayBlock.querySelector('input[name="lunch['+(index + 1)+']"]').checked;-->
<!--    const dinner = dayBlock.querySelector('input[name="dinner['+(index + 1)+']"]').checked;-->
<!--    const nightStay = dayBlock.querySelector('input[name="nightStay['+(index + 1)+']"]').checked;-->
<!--    const hiTea = dayBlock.querySelector('input[name="hiTea['+(index + 1)+']"]').checked;-->

<!--    const sightseeingEntries = [];-->
<!--    const sightseeingWrappers = dayBlock.querySelectorAll('.sightseeingWrapper');-->

<!--    sightseeingWrappers.forEach(wrapper => {-->
<!--        const sightseeingLocation = wrapper.querySelector('input[name="sightseeingLocation['+(index + 1)+'][]"]').value;-->
<!--        sightseeingEntries.push({ location: sightseeingLocation, day: 'Day '+day });-->
<!--    });-->

<!--    itinerary.push({-->
<!--        day: 'Day '+day,-->
<!--        destination: destination,-->
<!--        dinner: dinner,-->
<!--        breakfast: breakfast,-->
<!--        hiTea: hiTea,-->
<!--        nightStay: nightStay,-->
<!--        lunch: lunch,-->
<!--        sightseeingEntrie: sightseeingEntries-->
<!--    });-->
<!--});-->
  

<!--    if (file) {-->
<!--        const reader = new FileReader();-->
<!--        reader.onloadend = function() {-->
<!--            const base64String = reader.result.replace("data:", "").replace(/^.+,/, "");-->

<!--            const packageData = {-->
<!--                packageName: $('#packageName').val(),-->
<!--                duration: $('#duration').val(),-->
<!--                price: $('#price').val(),-->
<!--                packageType: $('#packageType').val(),-->
<!--                packageImage: base64String,-->
<!--                locations: locations,-->
<!--                allInclude : {-->
<!--                	hotel: document.getElementById('hotel').checked,-->
<!--                    meals: document.getElementById('meals').checked,-->
<!--                    transportation: document.getElementById('transport').checked,-->
<!--                    flight: document.getElementById('flight').checked,-->
<!--                    sightseeing: document.getElementById('sightseeing').checked,-->
<!--                    visa: document.getElementById('visa').checked,-->
<!--                    note: $('#note').val()-->
<!--                },-->
<!--                iternary : itinerary-->
<!--            };-->

           
            
<!--            // Convert packageData to JSON string-->
<!--            const jsonData = JSON.stringify(packageData);-->
<!--            //console.log(jsonData);-->

<!--            // Send data via AJAX-->
<!--            $.ajax({-->
<!--                url: '/TouristWebsite/auth/updatePackageDetails/'+id, // Replace with your API endpoint-->
<!--                type: 'POST',-->
<!--                contentType: 'application/json',-->
<!--                data: jsonData,-->
<!--                success: function(response) {-->
<!--                    alert(response);-->
<!--                    //windows.href='addPackageType';-->
<!--                },-->
<!--                error: function(error) {-->
<!--                    console.error('Error sending data:', error);-->
<!--                }-->
<!--            });-->
<!--        };-->
<!--        reader.readAsDataURL(file);-->
<!--    } else {-->
<!--        alert("Please select an image file first.");-->
<!--    }-->
<!--});-->
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
                        $('#days-container').html('<p>No itinerary available for this package.</p>');
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
	        locations.forEach((location) => {
	            const locationWrapper = document.createElement('div');
	            locationWrapper.style.display = 'flex';
	            locationWrapper.style.alignItems = 'center';
	            locationWrapper.style.gap = '5px';
	            locationWrapper.style.marginTop = '5px';

	            // Location Input
	            const locationInput = document.createElement('input');
	            locationInput.type = 'text';
	            locationInput.value = location.locationName || '';
	            locationInput.placeholder = 'Enter location';
	            locationInput.style.padding = '8px';
	            locationInput.style.border = '1px solid #ccc';
	            locationInput.style.borderRadius = '3px';
	            locationInput.style.flex = '1';
	            locationInput.style.fontSize = '0.9rem';
				locationInput.id = 'location'; // Set a unique id if needed
	            locationInput.name = 'location[]';

	            // Create the delete button
	            const deleteBtn = document.createElement('button');
	            deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';
	            deleteBtn.style.backgroundColor = '#e74c3c';
	            deleteBtn.style.color = 'white';
	            deleteBtn.style.border = 'none';
	            deleteBtn.style.padding = '8px';
	            deleteBtn.style.borderRadius = '3px';
	            deleteBtn.style.cursor = 'pointer';
	            deleteBtn.style.display = 'flex';
	            deleteBtn.style.alignItems = 'center';
	            deleteBtn.style.justifyContent = 'center';
	            deleteBtn.style.fontSize = '1rem';

	            // Align the delete button correctly
	            deleteBtn.style.height = '30px';
	            deleteBtn.style.width = '30px';

	            // Shift the button slightly upward
	            deleteBtn.style.position = 'relative';
	            deleteBtn.style.top = '-7px'; // Adjust this value to control the upward shift

	            // Delete functionality
	            deleteBtn.addEventListener('click', () => {
	                locationContainer.removeChild(locationWrapper);
	            });

	            // Append input and delete button to wrapper
	            locationWrapper.appendChild(locationInput);
	            locationWrapper.appendChild(deleteBtn);

	            // Append wrapper to container
	            locationContainer.appendChild(locationWrapper);
	        });
	    } else {
	        locationContainer.innerHTML = '<p>No locations available for this package.</p>';
	    }
	}


	function populateItinerary(itinerary) {
	    const daysContainer = document.getElementById('days-container');
	    let dayCount = 0;

	    // Clear the previous content (in case the function is called multiple times)
	    daysContainer.innerHTML = '';

	    // Loop through the fetched data to populate each day
	    itinerary.forEach(day => {
	        dayCount++;

	        const newDayBlock = document.createElement('div');
	        newDayBlock.classList.add('day-block');
	        newDayBlock.style.display = 'flex';
	        newDayBlock.style.flexWrap = 'wrap';
	        newDayBlock.style.justifyContent = 'space-between';
	        newDayBlock.style.border = '1px solid #ccc';
	        newDayBlock.style.padding = '10px';
	        newDayBlock.style.marginBottom = '10px';
	        newDayBlock.style.borderRadius = '5px';
	        newDayBlock.style.boxShadow = '0 2px 5px rgba(0, 0, 0, 0.1)';
	        newDayBlock.style.position = 'relative';

	        // Add fields for Day Number and Destination
	        newDayBlock.innerHTML = `
	            <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
	                <label for="day${dayCount}" style="display: block; margin-bottom: 5px; font-weight: bold;">Day Number:</label>
	                <input type="text" id="day`+dayCount+`" name="day[]" value="${day.day ? day.day : ''}" placeholder="E.g., 1"
	                    style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
	            </div>
	            <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
	                <label for="destination${dayCount}" style="display: block; margin-bottom: 5px; font-weight: bold;">Destination:</label>
	                <input type="text" id="destination`+dayCount+`" name="destination[]" value="${day.destination || ''}" placeholder="E.g., Amravati - Pune"
	                    style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
	            </div>
	            <div style="flex: 1 1 100%; margin: 5px;">
	                <div style="display: flex; justify-content: flex-start; align-items: center; gap: 10px;">
	                    <label for="sightseeing${dayCount}" style="font-weight: bold; margin-right: 10px;">
	                        Sightseeing Details:
	                    </label>
	                    <button type="button" class="addSightseeingBtn"
	                        style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
	                        <i class="fas fa-plus"></i>
	                    </button>
	                </div>
	                <div class="sightseeingContainer" style="display: flex; flex-direction: column; gap: 10px; margin-top: 10px;">
	                </div>
	                <div style="display: flex; gap: 10px; flex-wrap: wrap;">
	                    <label><input type="checkbox" name="breakfast[`+dayCount+`]" value="1" ${day.meals.breakfast ? 'checked' : ''}>Breakfast</label>
	                    <label><input type="checkbox"  name="lunch[`+dayCount+`]" value="1" ${day.meals.lunch ? 'checked' : ''}>Lunch</label>
	                    <label><input type="checkbox" name="dinner[${dayCount}]" value="1" ${day.meals.dinner ? 'checked' : ''}>Dinner</label>
	                    <label><input type="checkbox" name="nightStay[`+dayCount+`]" value="1" ${day.nightStay ? 'checked' : ''}>Night Stay</label>
	                    <label><input type="checkbox" name="hiTea[`+dayCount+`]" value="1" ${day.hiTea ? 'checked' : ''}>Hi-Tea</label>
	                </div>
	                <div style="width: 100%; display: flex; align-items: center;">
	                    <button class="deleteDayBtn" style="background-color: #e74c3c; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer; height: 30px; width: 100px; display: flex; justify-content: center; align-items: center; font-size: 1rem; margin-left: auto;">
	                        Delete Day
	                    </button>
	                </div>
	            </div>
	        `;

	        // Append the new day block to the container
	        daysContainer.appendChild(newDayBlock);

	        const addSightseeingBtn = newDayBlock.querySelector('.addSightseeingBtn');
	        const sightseeingContainer = newDayBlock.querySelector('.sightseeingContainer');

	        // Loop through and add sightseeing details if any
	        if (Array.isArray(day.sightseeing)) {
	            day.sightseeing.forEach(sight => {
	                const sightseeingWrapper = document.createElement('div');
	                sightseeingWrapper.classList.add('sightseeingWrapper');
	                sightseeingWrapper.style.display = 'flex';
	                sightseeingWrapper.style.gap = '10px';
	                sightseeingWrapper.style.alignItems = 'center';

	                const sightseeingInput = document.createElement('input');
	                sightseeingInput.type = 'text';
	                sightseeingInput.value = sight;
	                sightseeingInput.placeholder = 'Enter details of sightseeing...';
	                sightseeingInput.style.flex = '1 1 calc(85% - 10px)';
	                sightseeingInput.style.height = '40px';
	                sightseeingInput.style.padding = '10px';
	                sightseeingInput.style.fontSize = '1rem';
	                sightseeingInput.style.border = '1px solid #ccc';
	                sightseeingInput.style.borderRadius = '5px';
	                sightseeingInput.style.boxSizing = 'border-box';
	                sightseeingInput.name = `sightseeingLocation[`+dayCount+`][]`;

	                const deleteBtn = document.createElement('button');
	                deleteBtn.classList.add('deleteBtn');
	                deleteBtn.style.backgroundColor = '#e74c3c';
	                deleteBtn.style.color = 'white';
	                deleteBtn.style.border = 'none';
	                deleteBtn.style.padding = '10px';
	                deleteBtn.style.borderRadius = '5px';
	                deleteBtn.style.cursor = 'pointer';
	                deleteBtn.style.height = '30px';
	                deleteBtn.style.width = '30px';
	                deleteBtn.style.display = 'flex';
	                deleteBtn.style.justifyContent = 'center';
	                deleteBtn.style.alignItems = 'center';
	                deleteBtn.style.fontSize = '1rem';
	                deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';

	                deleteBtn.style.position = 'relative';
	                deleteBtn.style.top = '-7px';

	                deleteBtn.addEventListener('click', () => {
	                    sightseeingContainer.removeChild(sightseeingWrapper);
	                });

	                sightseeingWrapper.appendChild(sightseeingInput);
	                sightseeingWrapper.appendChild(deleteBtn);
	                sightseeingContainer.appendChild(sightseeingWrapper);
	            });
	        }

	        // Add a new sightseeing entry if the button is clicked
	        addSightseeingBtn.addEventListener('click', () => {
	            const sightseeingWrapper = document.createElement('div');
	            sightseeingWrapper.classList.add('sightseeingWrapper');
	            sightseeingWrapper.style.display = 'flex';
	            sightseeingWrapper.style.gap = '10px';
	            sightseeingWrapper.style.alignItems = 'center';

	            const sightseeingInput = document.createElement('input');
	            sightseeingInput.type = 'text';
	            sightseeingInput.placeholder = 'Enter details of sightseeing...';
	            sightseeingInput.style.flex = '1 1 calc(85% - 10px)';
	            sightseeingInput.style.height = '40px';
	            sightseeingInput.style.padding = '10px';
	            sightseeingInput.style.fontSize = '1rem';
	            sightseeingInput.style.border = '1px solid #ccc';
	            sightseeingInput.style.borderRadius = '5px';
	            sightseeingInput.style.boxSizing = 'border-box';
	            sightseeingInput.name = `sightseeingLocation[${dayCount}][]`;

	            const deleteBtn = document.createElement('button');
	            deleteBtn.classList.add('deleteBtn');
	            deleteBtn.style.backgroundColor = '#e74c3c';
	            deleteBtn.style.color = 'white';
	            deleteBtn.style.border = 'none';
	            deleteBtn.style.padding = '10px';
	            deleteBtn.style.borderRadius = '5px';
	            deleteBtn.style.cursor = 'pointer';
	            deleteBtn.style.height = '30px';
	            deleteBtn.style.width = '30px';
	            deleteBtn.style.display = 'flex';
	            deleteBtn.style.justifyContent = 'center';
	            deleteBtn.style.alignItems = 'center';
	            deleteBtn.style.fontSize = '1rem';
	            deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';

	            deleteBtn.style.position = 'relative';
	            deleteBtn.style.top = '-7px';

	            deleteBtn.addEventListener('click', () => {
	                sightseeingContainer.removeChild(sightseeingWrapper);
	            });

	            sightseeingWrapper.appendChild(sightseeingInput);
	            sightseeingWrapper.appendChild(deleteBtn);
	            sightseeingContainer.appendChild(sightseeingWrapper);
	        });

	        // Add delete day functionality
	        const deleteDayBtn = newDayBlock.querySelector('.deleteDayBtn');
	        deleteDayBtn.addEventListener('click', () => {
	            daysContainer.removeChild(newDayBlock);
	        });
	    });
	}



	// Utility function to safely set checkbox
	function setCheckbox(id, value) {
	    const checkbox = document.getElementById(id);
	    if (checkbox) {
	        checkbox.checked = Boolean(value);

	        // Disable checkbox if not checked
	       
	    } else {
	        console.warn(`Checkbox with id '${id}' not found`);
	    }
	}

	// Utility function to reset all checkboxes
	function resetCheckboxes() {
	    // Enable all checkboxes
	    ["hotel", "meals", "transportation", "flight", "sightseeing", "visa"].forEach(id => {
	        const checkbox = document.getElementById(id);
	        if (checkbox) {
	            checkbox.disabled = false;  // Enable the checkbox
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



