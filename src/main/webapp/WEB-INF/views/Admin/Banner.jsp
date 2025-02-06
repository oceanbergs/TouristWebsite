<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Gajanan Yatra - Banner Management</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
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
	background-color: #61b515;
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
                <!-- <h2>Shree Gajanan Yatra</h2> -->
                <nav>
                    <ul>
						<li><a href="notification">Enquiry</a></li>
                        <li><a href="dashboard" >Dashboard</a></li>
                        <li><a href="packageType">Packages Type</a></li>
                        <li><a href="managePackage">Manage Packages</a></li>
                <li><a href="bookingView" >Manage Bookings</a></li>
                  <li><a href="manageGallery" >Manage Gallary</a></li>
<!--                        <li><a href="#users">User Management</a></li>-->
                          <li><a href="bannerManagement" class="active" style="background-color: #87be29;">Banner Management</a></li>
<!--                        <li><a href="#settings">Settings</a></li>-->
                    </ul>
                </nav>
            </aside>

            <!-- Main Content -->
            <main class="main-content">
                <section id="dashboard" class="overview">
					<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Banner Management</title>
  <script src="https://cdn.tailwindcss.com"></script> 
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body style="background-color: #f3f4f6; margin: 0; font-family: Arial, sans-serif;">
  <div style="max-width: 1200px; margin: 0 auto; padding: 24px;">
    <h1 style="font-size: 36px; font-weight: bold; text-align: center; color: #000000; margin-bottom: 32px;">Banner Management</h1>

    <div style="background-color: #ffffff; padding: 24px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); margin-bottom: 24px;">
  <h2 style="font-size: 20px; font-weight: 600; margin-bottom: 16px; color: #000000;">Add New Photo</h2>
  <div style="display: flex; flex-wrap: wrap; gap: 16px; align-items: center;">
    <input id="photo-upload" type="file" accept="image/*" style="border: 1px solid #6b9e12; outline: none; padding: 8px; border-radius: 4px; flex: 1; min-width: 200px;" />
    <button onclick="uploadPhoto();" style="background-color: #6b9e12; color: #ffffff; padding: 8px 16px; border-radius: 4px; border: none; cursor: pointer;">Add Photo</button>
  </div>
</div>
<div style="background-color: #ffffff; padding: 24px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); overflow-x: auto;">
  <h2 style="font-size: 20px; font-weight: 600; margin-bottom: 16px; color: #6b9e12;">Banner</h2>
  <div id="gallery-container" style="display: flex; gap: 16px; white-space: nowrap; overflow-x: auto;">
    <!-- Photos will be dynamically added here -->
  </div>
</div>

 
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  function uploadPhoto() {
    const fileInput = document.getElementById("photo-upload");
    const file = fileInput.files[0];
    if (!file) {
      alert("Please select an image!");
      return;
    }

    const reader = new FileReader();
    reader.onload = function (e) {
      const base64Image = e.target.result.split(",")[1]; // Extract Base64 string
      const payload = {
//         name: file.name,
//         type: file.type,
        banner: base64Image,
      };

      $.ajax({
        url: "saveBanner",
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify(payload),
        success: function (data) {
        	//alert(Image Upload Successfully...);
          displayPhoto(data);
          fileInput.value = ""; // Clear input
        },
        error: function (error) {
          console.error("Error:", error);
        },
      });
    };

    reader.readAsDataURL(file); // Read file as Base64 string
  }

  function displayPhoto(image) {
	  const galleryContainer = document.getElementById("gallery-container");

	  if (!galleryContainer) {
	    console.error("Gallery container not found.");
	    return;
	  }

	  if (!image || !image.banner || !image.id) {
	    console.error("Invalid image data provided.");
	    return;
	  }

	  // Create a container for the photo
	  const photoDiv = document.createElement("div");
	  photoDiv.style.position = "relative";
	  photoDiv.style.display = "inline-block";
	  photoDiv.style.margin = "10px";

	  // Construct the Base64 image source
	  const base64Image = "data:image/jpeg;base64," + image.banner;

	  // Create the image element
	  const imgElement = document.createElement("img");
	  imgElement.src = base64Image;
	  imgElement.alt = image.name;
	  imgElement.style.width = "1200px";
	  imgElement.style.height = "400px";
	  imgElement.style.borderRadius = "8px";
	  imgElement.style.objectFit = "cover";

	  // Create the delete button
	  const deleteButton = document.createElement("button");
	  deleteButton.textContent = "X";
	  deleteButton.style.position = "absolute";
	  deleteButton.style.top = "5px";
	  deleteButton.style.right = "5px";
	  deleteButton.style.background = "red";
	  deleteButton.style.color = "white";
	  deleteButton.style.border = "none";
	  deleteButton.style.borderRadius = "50%";
	  deleteButton.style.cursor = "pointer";

	  // Attach the ID to the button and add delete functionality
	  deleteButton.dataset.id = image.id; // Set image ID as a data attribute
	  deleteButton.onclick = () => {
		    const imageId = deleteButton.dataset.id; // Retrieve the ID
		    console.log('Deleting image with ID:', imageId); // Log the ID for debugging
		    deleteBatch(imageId); // Call delete function
		    galleryContainer.removeChild(photoDiv); // Remove photo from the UI
		};


	  // Append the image and button to the photoDiv
	  photoDiv.appendChild(imgElement);
	  photoDiv.appendChild(deleteButton);

	  // Append the photoDiv to the gallery container
	  galleryContainer.appendChild(photoDiv);
	}


  function deleteBatch(id) {
	    $.ajax({
	        url: "getBannerBy/" + id, // This URL should match your backend mapping
	        type: "POST", // Using POST as per your backend mapping
	        success: function (response) {
	            console.log(response); // Log the response for debugging
	            if (response === "Data Deleted Successfully") {
	                alert("Image deleted successfully!");
	                // Optionally reload or update the gallery here
	            } else {
	                alert("Failed to delete image: " + response);
	            }
	        },
	        error: function (jqXHR, status, errorThrown) {
	            alert("Error: Failed to delete the image");
	            console.error("Error details:", status, errorThrown);
	        }
	    });
	}




	function loadGallery() {
	  $.ajax({
	    url: "getbanner",
	    type: "GET",
	    success: function (images) {
	      const galleryContainer = document.getElementById("gallery-container");
	      galleryContainer.innerHTML = ""; // Clear the container before reloading
	      images.forEach((image) => displayPhoto(image)); // Display all fetched images
	    },
	    error: function (error) {
	      console.error("Error:", error);
	    },
	  });
	}

	// Load gallery on page load
	$(document).ready(function () {
	  loadGallery(); // Initial gallery load
	});

</script>

                </section>
            </main>
        </div>
    </div>
</body>
</html>  