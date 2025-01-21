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

						       <div style="min-width: 100%; margin-bottom: 20px;">
				    <!-- Label and Button container -->
					<div style="display: flex; align-items: center; gap: 10px; margin-bottom: 10px;">
					  <label for="fileUploads" style="font-size: 16px; font-weight: bold; margin: 0;">
					    Gallery Images
					  </label>
					  <button 
					    type="button" 
					    id="addFileButton" 
					    style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
					    <i class="fas fa-plus"></i>
					  </button>
					</div>

				    <!-- File Upload Inputs -->
				    <div id="fileUploadContainer" style="display: flex; flex-direction: column; gap: 10px; margin-bottom: 20px;">
				      <!-- File inputs with delete buttons will be dynamically added here -->
				    </div>

				    <!-- Image Preview Section -->
				    <div id="imagePreviewContainer" 
				      style="display: flex; flex-wrap: wrap; gap: 10px; align-items: center; padding: 10px; border: 1px solid #ddd; border-radius: 5px;">
				      <!-- Image previews will appear here -->
				    </div>
				  </div>

				  <script>
					const addFileButton = document.getElementById('addFileButton');
					const fileUploadContainer = document.getElementById('fileUploadContainer');
					const imagePreviewContainer = document.getElementById('imagePreviewContainer');

					addFileButton.addEventListener('click', () => {
					  // Create a container for the file input and delete button
					  const fileInputWrapper = document.createElement('div');
					  fileInputWrapper.style.cssText = 'display: flex; align-items: center; gap: 10px; margin-bottom: 10px;';

					  // Create a new file input
					  const fileInput = document.createElement('input');
					  fileInput.type = 'file';
					  fileInput.name = 'gallery[]';
					  fileInput.accept = 'image/jpeg';
					  fileInput.required = true;
					  fileInput.style.cssText = 'flex: 1; padding: 8px; margin-right: 10px;';

					  // Create a delete button for the file input
					  const deleteButton = document.createElement('button');
					  deleteButton.textContent = 'Delete';
					  deleteButton.style.cssText = `
					    padding: 4px 8px;
					    background: #d9534f;
					    color: white;
					    border: none;
					    border-radius: 4px;
					    cursor: pointer;
					    font-size: 14px;
					    height: 30px;
					    width: auto; /* Adjust width dynamically based on content */
					    display: flex;
					    justify-content: center;
					    align-items: center;
					  `;

					  // Append file input and delete button to the wrapper
					  fileInputWrapper.appendChild(fileInput);
					  fileInputWrapper.appendChild(deleteButton);

					  // Add the wrapper to the file upload container
					  fileUploadContainer.appendChild(fileInputWrapper);

					  // Handle image preview
					  fileInput.addEventListener('change', (event) => {
					    const files = event.target.files;

					    // Clear existing previews for this input if any
					    if (fileInput.previewElements) {
					      fileInput.previewElements.forEach(preview => preview.remove());
					    }
					    fileInput.previewElements = [];

					    for (let i = 0; i < files.length; i++) {
					      const file = files[i];
					      const reader = new FileReader();

					      reader.onload = function (e) {
					        // Create a preview container for the image
					        const preview = document.createElement('div');
					        preview.style.cssText = `
					          width: 100px; 
					          height: 100px; 
					          border: 1px solid #ddd; 
					          border-radius: 5px; 
					          overflow: hidden; 
					          display: flex; 
					          justify-content: center; 
					          align-items: center; 
					          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
					          margin-right: 10px;
					        `;

					        const img = document.createElement('img');
					        img.src = e.target.result;
					        img.style.cssText = 'width: 100%; height: 100%; object-fit: cover;';
					        preview.appendChild(img);

					        // Add the preview to the container and associate it with the input
					        imagePreviewContainer.appendChild(preview);
					        fileInput.previewElements.push(preview);
					      };

					      reader.readAsDataURL(file);
					    }
					  });

					  // Handle deletion of file input and its associated previews
					  deleteButton.onclick = () => {
					    if (fileInput.previewElements) {
					      fileInput.previewElements.forEach(preview => preview.remove()); // Remove all associated previews
					    }
					    fileInputWrapper.remove(); // Remove the file input container
					  };
					});

				  </script>

       

		<div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
				    <label for="includes" style="font-weight: bold; color: #34495e;">Includes:</label>
				    <button type="button" id="addIncludesBtn"
		      style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
		      <i class="fas fa-plus"></i>
		    </button>
				</div>

				<div id="IncludesContainer" style="margin-top: 10px;"></div>
				
				<div style="display: flex; align-items: center; gap: 10px; margin-top: 10px; width: 100%;">
						  <label for="location" style="font-weight: bold; color: #34495e;">Excludes:</label>
						    <button type="button" id="addExcludesBtn"
		    style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
		    <i class="fas fa-plus"></i>
		  </button>
						 
						</div>

						<!-- Container for dynamically added Excludes input fields -->
						<div id="excludesContainer" style="margin-top: 10px;"></div>


		
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
         <div id="itineraryContainer"></div>
						        <!-- Submit Button -->
								
								    <button id="submitBtn"
								        style="width: 100%; background-color: #87be29; color: white; padding: 14px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem;">
								        Update Package
								    </button>
								</div>
								<script type="text/javascript">
								document.addEventListener('DOMContentLoaded', function () {
								    document.getElementById('submitBtn').addEventListener('click', function (event) {
								        event.preventDefault(); // Prevent default form submission

								        // Get Package ID
								        const id = document.getElementById('id') ? document.getElementById('id').value : null;
								        if (!id) {
								            alert('Error: Package ID not found!');
								            return;
								        }

								        const fileInput = document.getElementById('packageImage');
								        const file = fileInput.files[0]; // Get the first file (if any)

								        // Collect includes
								        const includesInputs = document.querySelectorAll('input[name="includes[]"]');
								        let allIncludes = [];
								        includesInputs.forEach(input => {
								            const includes = input.value.trim();
								            if (includes) {
								                allIncludes.push({ includes });
								            }
								        });

								        // Collect excludes
								        const excludeInputs = document.querySelectorAll('input[name="excludes[]"]');
								        let allExcludes = [];
								        excludeInputs.forEach(input => {
								            const excludes = input.value.trim();
								            if (excludes) {
								                allExcludes.push({ excludes });
								            }
								        });

								        // Collect locations
								        const locationInputs = document.querySelectorAll('input[name="location[]"]');
								        let locations = [];
								        locationInputs.forEach(input => {
								            const locationName = input.value.trim();
								            const locationId = input.getAttribute('data-id'); // Assuming you have `data-id` for existing entries
								            if (locationName) {
								                locations.push({
								                    id: locationId || null, // Use null for new entries
								                    locationName
								                });
								            }
								        });

								        // Collect itinerary
								        const itinerary = [];
								        const dayBlocks = document.querySelectorAll('.day-block');
								        dayBlocks.forEach((dayBlock, index) => {
								            const day = dayBlock.querySelector('input[id="day' + (index + 1) + '"]').value;
								            const destination = dayBlock.querySelector('input[id="destination' + (index + 1) + '"]').value;
								            const details = dayBlock.querySelector('input[id="details' + (index + 1) + '"]').value;

								            const sightseeingEntries = [];
								            const sightseeingWrappers = dayBlock.querySelectorAll('.sightseeingWrapper');
								            sightseeingWrappers.forEach(wrapper => {
								                const sightseeingLocation = wrapper.querySelector('input[name="sightseeingLocation[' + (index + 1) + '][]"]').value;
								                sightseeingEntries.push({ location: sightseeingLocation, day: 'Day ' + day });
								            });

								            itinerary.push({
								                day: 'Day ' + day,
								                destination: destination,
								                details: details,
								                sightseeingEntrie: sightseeingEntries,
								            });
								        });

								        // Collect gallery images
								        const galleryInputs = document.querySelectorAll('input[name="gallery[]"]');
								        let gallery = [];

								        const processGalleryImages = () => {
								            let galleryFiles = [];
								            galleryInputs.forEach(input => {
								                galleryFiles = galleryFiles.concat(Array.from(input.files));
								            });

								            if (galleryFiles.length > 0) {
								                const promises = galleryFiles.map(file => {
								                    return new Promise((resolve, reject) => {
								                        const reader = new FileReader();
								                        reader.onloadend = function () {
								                            resolve(reader.result.split(",")[1]); // Extract Base64
								                        };
								                        reader.onerror = reject;
								                        reader.readAsDataURL(file);
								                    });
								                });

								                return Promise.all(promises)
								                    .then(base64Images => {
								                        base64Images.forEach(base64 => {
								                            gallery.push({ gallery: base64 });
								                        });
								                    })
								                    .catch(error => {
								                        console.error('Error processing gallery images:', error);
								                        alert('Failed to process gallery images. Please try again.');
								                    });
								            } else {
								                return Promise.resolve(); // No gallery images to process
								            }
								        };

								        // Process gallery and file image, then send data
								        processGalleryImages().then(() => {
								            const packageData = {
								                packageName: document.getElementById('packageName').value.trim(),
								                duration: document.getElementById('duration').value.trim(),
								                price: document.getElementById('price').value.trim(),
								                packageType: document.getElementById('packageType').value.trim(),
								                gallery: gallery,
								                locations: locations, // Includes `id` for updates
								                allIncludes: allIncludes,
								                allExcludes: allExcludes,
								                iternary: itinerary
								            };

								            // If file is selected, include it in the data
								            if (file) {
								                const reader = new FileReader();
								                reader.onloadend = function () {
								                    const base64String = reader.result.split(",")[1]; // Extract base64 part
								                    packageData.packageImage = base64String;

								                    // Send data via AJAX for update
								                    sendUpdateRequest(packageData, id);
								                };
								                reader.readAsDataURL(file);
								            } else {
								                // Send data without the image file
								                sendUpdateRequest(packageData, id);
								            }
								        });
								    });

								    // Function to send update request
								    function sendUpdateRequest(packageData, id) {
								        $.ajax({
								            url: "/TouristWebsite/auth/updatePackageDetails/" + id,
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
								    }
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
//     const addDayBtn = document.getElementById('addDayBtn');
//     const daysContainer = document.getElementById('days-container');

//     let dayCount = 0;

//     addDayBtn.addEventListener('click', () => {
//         const newDayBlock = document.createElement('div');
//         newDayBlock.classList.add('day-block');
//         newDayBlock.style.display = 'flex';
//         newDayBlock.style.flexWrap = 'wrap';
//         newDayBlock.style.justifyContent = 'space-between';
//         newDayBlock.style.border = '1px solid #ccc';
//         newDayBlock.style.padding = '10px';
//         newDayBlock.style.marginBottom = '10px';
//         newDayBlock.style.borderRadius = '5px';
//         newDayBlock.style.boxShadow = '0 2px 5px rgba(0, 0, 0, 0.1)';
//         newDayBlock.style.position = 'relative';

//         // Increment day count
//         dayCount++;

//         // Add fields for Day Number and Destination
//         newDayBlock.innerHTML = `
//             <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
//                 <label for="day`+dayCount+`" style="display: block; margin-bottom: 5px; font-weight: bold;">Day Number:</label>
//                 <input type="text" id="day`+dayCount+`" name="day[]" placeholder="E.g., 1"
//                     style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
//             </div>
//             <div style="flex: 1 1 calc(50% - 10px); margin: 5px;">
//                 <label for="destination`+dayCount+`" style="display: block; margin-bottom: 5px; font-weight: bold;">Destination:</label>
//                 <input type="text" id="destination`+dayCount+`" name="destination[]" placeholder="E.g., Amravati - Pune"
//                     style="width: 100%; padding: 10px; font-size: 1rem; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;">
//             </div>
//             <div style="flex: 1 1 100%; margin: 5px;">
//                 <div style="display: flex; justify-content: flex-start; align-items: center; gap: 10px;">
//                     <label for="sightseeing`+dayCount+`" style="font-weight: bold; margin-right: 10px;">
//                         Sightseeing Details:
//                     </label>
//                     <button type="button" class="addSightseeingBtn"
//                         style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
//                         <i class="fas fa-plus"></i>
//                     </button>
//                 </div>
//                 <div class="sightseeingContainer" style="display: flex; flex-direction: column; gap: 10px; margin-top: 10px;">
//                 </div>
//                 <div style="display: flex; gap: 10px; flex-wrap: wrap;">
//                     <label><input type="checkbox" name="breakfast[`+dayCount+`]" value="1">Breakfast</label>
//                     <label><input type="checkbox" name="lunch[`+dayCount+`]" value="1">Lunch</label>
//                     <label><input type="checkbox" name="dinner[`+dayCount+`]" value="1">Dinner</label>
//                     <label><input type="checkbox" name="nightStay[`+dayCount+`]" value="1">Night Stay</label>
//                     <label><input type="checkbox" name="hiTea[`+dayCount+`]" value="1">Hi-Tea</label>
//                 </div>
//                 <div style="width: 100%; display: flex; align-items: center;">
//                     <button class="deleteDayBtn" style="background-color: #e74c3c; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer; height: 30px; width: 100px; display: flex; justify-content: center; align-items: center; font-size: 1rem; margin-left: auto;">
//                         Delete Day
//                     </button>
//                 </div>
//             </div>
//         `;

//         daysContainer.appendChild(newDayBlock);

//         const addSightseeingBtn = newDayBlock.querySelector('.addSightseeingBtn');
//         const sightseeingContainer = newDayBlock.querySelector('.sightseeingContainer');

//         addSightseeingBtn.addEventListener('click', () => {
//             const sightseeingWrapper = document.createElement('div');
//             sightseeingWrapper.classList.add('sightseeingWrapper');
//             sightseeingWrapper.style.display = 'flex';
//             sightseeingWrapper.style.gap = '10px';
//             sightseeingWrapper.style.alignItems = 'center';

//             const sightseeingInput = document.createElement('input');
//             sightseeingInput.type = 'text';
//             sightseeingInput.placeholder = 'Enter details of sightseeing...';
//             sightseeingInput.style.flex = '1 1 calc(85% - 10px)';
//             sightseeingInput.style.height = '40px';
//             sightseeingInput.style.padding = '10px';
//             sightseeingInput.style.fontSize = '1rem';
//             sightseeingInput.style.border = '1px solid #ccc';
//             sightseeingInput.style.borderRadius = '5px';
//             sightseeingInput.style.boxSizing = 'border-box';
//             sightseeingInput.name = `sightseeingLocation[`+dayCount+`][]`;

//             const deleteBtn = document.createElement('button');
//             deleteBtn.classList.add('deleteBtn');
//             deleteBtn.style.backgroundColor = '#e74c3c';
//             deleteBtn.style.color = 'white';
//             deleteBtn.style.border = 'none';
//             deleteBtn.style.padding = '10px';
//             deleteBtn.style.borderRadius = '5px';
//             deleteBtn.style.cursor = 'pointer';
//             deleteBtn.style.height = '30px';
//             deleteBtn.style.width = '30px';
//             deleteBtn.style.display = 'flex';
//             deleteBtn.style.justifyContent = 'center';
//             deleteBtn.style.alignItems = 'center';
//             deleteBtn.style.fontSize = '1rem';
//             deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';

//             deleteBtn.style.position = 'relative';
//             deleteBtn.style.top = '-7px';

//             deleteBtn.addEventListener('click', () => {
//                 sightseeingContainer.removeChild(sightseeingWrapper);
//             });

//             sightseeingWrapper.appendChild(sightseeingInput);
//             sightseeingWrapper.appendChild(deleteBtn);
//             sightseeingContainer.appendChild(sightseeingWrapper);
//         });
//     });

//     document.getElementById('days-container').addEventListener('click', function(e) {
//         if (e.target && e.target.classList.contains('deleteDayBtn')) {
//             e.target.closest('.day-block').remove();
//         }

//         if (e.target && e.target.classList.contains('deleteBtn')) {
//             e.target.closest('.sightseeingWrapper').remove();
//         }
//     });
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

			        // Populate Locations
			        if (response.locations && Array.isArray(response.locations)) {
			            populateLocations(response.locations);
			        } else {
			            $('#locationContainer').html('<p>No locations available for this package.</p>');
			        }

			        // Populate Itinerary
			        if (response.iternary && Array.isArray(response.iternary)) {
			            populateItinerary(response.iternary);
			        } else {
			            $('#itineraryContainer').html('<p>No itinerary available for this package.</p>');
			        }

					if (response.allIncludes && Array.isArray(response.allIncludes)) {
					    populateIncludes(response.allIncludes);
					} else {
					    $('#IncludesContainer').html('<p>No includes available for this package.</p>');
					}


					if (response.allExcludes && Array.isArray(response.allExcludes)) {
					    populateExcludes(response.allExcludes);
					} else {
					    $('#excludesContainer').html('<p>No excludes available for this package.</p>');
					}
					if (response.gallery && Array.isArray(response.gallery)) {
					    populateGallery(response.gallery);
					} else {
					    $('#galleryContainer').html('<p>No gallery images available for this package.</p>');
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
	    

	    // Populate checkboxes
	   

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
                //locationInput.name = 'location[]'; 
				//locationInput.disabled = true;

                locationWrapper.appendChild(locationInput);
                locationContainer.appendChild(locationWrapper);
            });
        } else {
            locationContainer.innerHTML = '<p>No locations available for this package.</p>';
        }
    }
    

	
	function populateIncludes(allIncludes) {
	    const includesContainer = document.getElementById('IncludesContainer');
	    includesContainer.innerHTML = ''; // Clear existing includes

	    // Check if allIncludes is an array and has items
	    if (Array.isArray(allIncludes) && allIncludes.length > 0) {
	        allIncludes.forEach((include) => {
	            // Create a wrapper for each include input
	            const includesWrapper = document.createElement('div');
	            includesWrapper.style.marginBottom = '10px';

	            // Create the input field for the include
	            const includesInput = document.createElement('input');
	            includesInput.type = 'text';
	            includesInput.value = include.includes || ''; // Access the 'includes' property
	            includesInput.placeholder = 'Enter Includes';
	            includesInput.style.padding = '8px';
	            includesInput.style.border = '1px solid #ccc';
	            includesInput.style.borderRadius = '3px';
	            includesInput.style.fontSize = '0.9rem';
	            includesInput.style.width = '100%'; // Ensure it spans the container width
	           // includesInput.name = 'includes[]'; // Correct name for server compatibility
				//includesInput.disabled = true;

	            // Append the input field to the wrapper
	            includesWrapper.appendChild(includesInput);

	            // Append the wrapper to the includes container
	            includesContainer.appendChild(includesWrapper);
	        });
	    } else {
	        // If no data, show a message
	        includesContainer.innerHTML = '<p>No includes available for this package.</p>';
	    }
	}

	function populateExcludes(allExcludes) {
	    const excludesContainer = document.getElementById('excludesContainer');
	    excludesContainer.innerHTML = ''; // Clear existing excludes

	    // Check if allExcludes is an array and has items
	    if (Array.isArray(allExcludes) && allExcludes.length > 0) {
	        allExcludes.forEach((exclude) => {
	            // Create a wrapper for each exclude input
	            const excludeWrapper = document.createElement('div');
	            excludeWrapper.style.marginBottom = '10px';

	            // Create the input field for the exclude
	            const excludeInput = document.createElement('input');
	            excludeInput.type = 'text';
	            excludeInput.value = exclude.excludes || ''; // Access the 'excludes' property
	            excludeInput.placeholder = 'Enter Excludes';
	            excludeInput.style.padding = '8px';
	            excludeInput.style.border = '1px solid #ccc';
	            excludeInput.style.borderRadius = '3px';
	            excludeInput.style.fontSize = '0.9rem';
	            excludeInput.style.width = '100%'; // Ensure it spans the container width
	            //excludeInput.name = 'excludes[]'; // Name attribute for API compatibility
				//excludeInput.disabled = true;
	            // Append the input field to the wrapper
	            excludeWrapper.appendChild(excludeInput);

	            // Append the wrapper to the excludes container
	            excludesContainer.appendChild(excludeWrapper);
	        });
	    } else {
	        // If no data, show a message
	        excludesContainer.innerHTML = '<p>No excludes available for this package.</p>';
	    }
	}
	
	function populateGallery(gallery) {
	    const galleryContainer = document.getElementById('imagePreviewContainer');
	    galleryContainer.innerHTML = ''; // Clear existing gallery images

	    if (Array.isArray(gallery) && gallery.length > 0) { // Check for valid gallery array
	        gallery.forEach(image => {
	            const imageWrapper = document.createElement('div');
	            imageWrapper.style.marginBottom = '15px';
	            imageWrapper.style.display = 'inline-block';
	            imageWrapper.style.width = '100px';
	            imageWrapper.style.height = '100px';

	            const imgElement = document.createElement('img');

	            // Handle the gallery field as a string or object
	            if (typeof image.gallery === 'string') {
	                imgElement.src = "data:image/jpeg;base64," + image.gallery;
	            } else {
	                console.error('Invalid gallery format:', image.gallery);
	                imgElement.src = 'placeholder.png'; // Fallback for invalid data
	            }

	            imgElement.alt = 'Gallery Image';
	            imgElement.style.width = '100%';
	            imgElement.style.height = '100%';
	            imgElement.style.borderRadius = '5px';

	            imageWrapper.appendChild(imgElement);
	            galleryContainer.appendChild(imageWrapper);
	        });
	    } else {
	        galleryContainer.innerHTML = '<p>No gallery images available for this package.</p>';
	    }
	}

	// Function to handle image addition
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

	            // Day Number and Destination container (side by side)
	            const dayDiv = document.createElement('div');
	            dayDiv.style.display = 'flex';
	            dayDiv.style.flexDirection = 'row'; // Align Day Number and Destination side by side
	            dayDiv.style.gap = '20px'; // Add some space between the fields
	            dayDiv.style.marginBottom = '10px';

	            // Day Number
	            const dayNumberWrapper = document.createElement('div');
	            dayNumberWrapper.style.display = 'flex';
	            dayNumberWrapper.style.flexDirection = 'column';

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
	            dayNumberInput.disabled = true;

	            dayNumberWrapper.appendChild(dayNumberLabel);
	            dayNumberWrapper.appendChild(dayNumberInput);

	            // Destination
	            const destinationWrapper = document.createElement('div');
	            destinationWrapper.style.display = 'flex';
	            destinationWrapper.style.flexDirection = 'column';

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
	            destinationInput.disabled = true;

	            destinationWrapper.appendChild(destinationLabel);
	            destinationWrapper.appendChild(destinationInput);

	            // Append both Day and Destination to the main div
	            dayDiv.appendChild(dayNumberWrapper);
	            dayDiv.appendChild(destinationWrapper);

	            // Details
	            const detailsWrapper = document.createElement('div');
	            detailsWrapper.style.display = 'flex';
	            detailsWrapper.style.flexDirection = 'column';

	            const detailsLabel = document.createElement('label');
	            detailsLabel.innerText = 'Details:';
	            detailsLabel.style.fontWeight = 'bold';

	            const detailsInput = document.createElement('textarea');
	            detailsInput.name = 'details[]';
	            detailsInput.value = dayDetails.details || '';
	            detailsInput.placeholder = 'Details about the day';
	            detailsInput.style.padding = '10px';
	            detailsInput.style.border = '1px solid #ccc';
	            detailsInput.style.borderRadius = '5px';
	            detailsInput.style.resize = 'vertical';
	            detailsInput.disabled = true;

	            detailsWrapper.appendChild(detailsLabel);
	            detailsWrapper.appendChild(detailsInput);

	            // Append inputs to the main container
	            dayWrapper.appendChild(dayDiv);
	            dayWrapper.appendChild(detailsWrapper);

	            // Sightseeing Details
	            const sightseeingContainer = document.createElement('div');
	            sightseeingContainer.style.marginTop = '10px';

	            const sightseeingLabel = document.createElement('label');
	            sightseeingLabel.innerText = 'Meals:';
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
	                    sightInput.style.marginTop = '5px';
	                    sightInput.disabled = true;

	                    sightseeingContainer.appendChild(sightInput);
	                });
	            } else {
	                const noSightseeing = document.createElement('p');
	                noSightseeing.innerText = 'No sightseeing details available for this day.';
	                noSightseeing.style.marginTop = '5px';
	                sightseeingContainer.appendChild(noSightseeing);
	            }

	            dayWrapper.appendChild(sightseeingContainer);
	            itineraryContainer.appendChild(dayWrapper);
	        });
	    } else {
	        itineraryContainer.innerHTML = '<p>No itinerary data available.</p>';
	    }
	}

	// Call the function to populate itinerary
	populateItinerary(itineraryData);

	

    
    

    // Utility function to get URL parameters
    function getUrlParameter(name) {
        var results = new RegExp('[?&]' + name + '=([^&#]*)').exec(window.location.href);
        return results ? decodeURIComponent(results[1]) : null;
    }
});


</script>

<script>
    const addDayBtn = document.getElementById('addDayBtn');
    const daysContainer = document.getElementById('itineraryContainer');

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
			<div style="margin-top: 10px; min-width: 100%;">
			    <label for="details`+dayCount+`" style="font-weight: bold; color: #34495e;">Enter Details</label>
			    <textarea id="details`+dayCount+`" name="details[]" placeholder="Enter additional information"
			      style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-size: 1rem; resize: none; overflow: hidden;"
			      rows="1" oninput="adjustHeight(this)"></textarea>
			</div>				 
            <div style="flex: 1 1 100%; margin: 5px;">
                <div style="display: flex; justify-content: flex-start; align-items: center; gap: 10px;">
                    <label for="sightseeing`+dayCount+`" style="font-weight: bold; margin-right: 10px;">
                        Meals
                    </label>
                    <button type="button" class="addSightseeingBtn"
                        style="background-color: #007bff; color: white; border: none; padding: 4px; border-radius: 3px; cursor: pointer; font-size: 0.8rem; width: 30px; height: 30px; display: flex; align-items: center; justify-content: center;">
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
                <div class="sightseeingContainer" style="display: flex; flex-direction: column; gap: 10px; margin-top: 10px;">
                </div>
               
	  <br>
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
            sightseeingInput.placeholder = 'Enter Meals';
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

    document.getElementById('itineraryContainer').addEventListener('click', function(e) {
        if (e.target && e.target.classList.contains('deleteDayBtn')) {
            e.target.closest('.day-block').remove();
        }

        if (e.target && e.target.classList.contains('deleteBtn')) {
            e.target.closest('.sightseeingWrapper').remove();
        }
    });
</script>

<script>
    const addLocationBtn = document.getElementById('addLocationBtn');
    const locationContainer = document.getElementById('locationContainer');

    addLocationBtn.addEventListener('click', () => {
        // Create a wrapper div
        const locationWrapper = document.createElement('div');
        locationWrapper.style.display = 'flex';
        locationWrapper.style.alignItems = 'center';
        locationWrapper.style.gap = '5px';
        locationWrapper.style.marginTop = '0px';

        // Create the input field
        const locationInput = document.createElement('input');
        locationInput.type = 'text';
        locationInput.placeholder = 'Enter location';
        locationInput.style.padding = '8px';
        locationInput.style.border = '1px solid #ccc';
        locationInput.style.borderRadius = '3px';
        locationInput.style.flex = '1';
        locationInput.style.fontSize = '0.9rem';
        
        locationInput.id = 'location'; // Set a unique id if needed
        locationInput.name = 'location[]'; // Set name attribute to match model API
		locationInput.style.marginRight = '5px';

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

        // Append wrapper to the container
        locationContainer.appendChild(locationWrapper);
    });
</script>
<script>
  const addIncludesBtn = document.getElementById('addIncludesBtn');
  const includesContainer = document.getElementById('IncludesContainer');

  addIncludesBtn.addEventListener('click', () => {
    // Create the wrapper div for input and delete button
    const locationWrapper = document.createElement('div');
    locationWrapper.style.display = 'flex';
    locationWrapper.style.alignItems = 'center';
    locationWrapper.style.marginBottom = '10px'; // Space between inputs

    // Create the input field
    const locationInput = document.createElement('input');
    locationInput.type = 'text';
    locationInput.placeholder = 'Enter Includes';
    locationInput.style.padding = '8px';
    locationInput.style.border = '1px solid #ccc';
    locationInput.style.borderRadius = '3px';
    locationInput.style.fontSize = '0.9rem';
    locationInput.style.flex = '1';  // Make the input take available space
    locationInput.name = 'includes[]'; // Name attribute for API compatibility
	locationInput.style.marginRight = '10px';

    // Create the delete button
    const deleteBtn = document.createElement('button');
    deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';
    deleteBtn.style.backgroundColor = '#e74c3c';
    deleteBtn.style.color = 'white';
    deleteBtn.style.border = 'none';
    deleteBtn.style.padding = '10px';
    deleteBtn.style.borderRadius = '3px';
    deleteBtn.style.cursor = 'pointer';
    deleteBtn.style.fontSize = '1rem';
    deleteBtn.style.height = '30px';
    deleteBtn.style.width = '30px';
    deleteBtn.style.display = 'flex';
    deleteBtn.style.alignItems = 'center';
    deleteBtn.style.justifyContent = 'center';
    deleteBtn.style.position = 'relative';
    deleteBtn.style.top = '-7px'; 

    // Delete functionality
    deleteBtn.addEventListener('click', () => {
      includesContainer.removeChild(locationWrapper);
    });

    // Append input and delete button to the wrapper
    locationWrapper.appendChild(locationInput);
    locationWrapper.appendChild(deleteBtn);

    // Append the wrapper to the container
    includesContainer.appendChild(locationWrapper);
  });
</script>


<script>
  const addExcludesBtn = document.getElementById('addExcludesBtn');
  const excludesContainer = document.getElementById('excludesContainer');

  addExcludesBtn.addEventListener('click', () => {
    // Create a wrapper div
    const locationWrapper = document.createElement('div');
    locationWrapper.style.display = 'flex';
    locationWrapper.style.alignItems = 'center';
    locationWrapper.style.gap = '10px'; // Added padding between input and delete button
    locationWrapper.style.marginBottom = '10px'; // Space between inputs

    // Create the input field
    const locationInput = document.createElement('input');
    locationInput.type = 'text';
    locationInput.placeholder = 'Enter Excludes';
    locationInput.style.padding = '8px';
    locationInput.style.border = '1px solid #ccc';
    locationInput.style.borderRadius = '3px';
    locationInput.style.fontSize = '0.9rem';
    locationInput.style.flex = '1'; // Ensure the input takes available space
    locationInput.name = 'excludes[]'; // Name attribute for API compatibility

    // Create the delete button
    const deleteBtn = document.createElement('button');
    deleteBtn.innerHTML = '<i class="fas fa-trash"></i>';
    deleteBtn.style.backgroundColor = '#e74c3c';
    deleteBtn.style.color = 'white';
    deleteBtn.style.border = 'none';
    deleteBtn.style.padding = '8px';
    deleteBtn.style.borderRadius = '3px';
    deleteBtn.style.cursor = 'pointer';
    deleteBtn.style.fontSize = '1rem';
    deleteBtn.style.height = '30px';
    deleteBtn.style.width = '30px';
    deleteBtn.style.display = 'flex';
    deleteBtn.style.alignItems = 'center';
    deleteBtn.style.justifyContent = 'center';
	deleteBtn.style.position = 'relative';
		deleteBtn.style.top = '-7px';

    // Delete functionality
    deleteBtn.addEventListener('click', () => {
      excludesContainer.removeChild(locationWrapper);
    });

    // Append input and delete button to the wrapper
    locationWrapper.appendChild(locationInput);
    locationWrapper.appendChild(deleteBtn);

    // Append wrapper to the container
    excludesContainer.appendChild(locationWrapper);
  });
</script>


