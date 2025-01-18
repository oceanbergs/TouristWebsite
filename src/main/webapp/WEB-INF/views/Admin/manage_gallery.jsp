<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Gajanan Yatra - Admin Dashboard</title>
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
				 <img src="../img/logout.png"
					alt="Logout">
			</div>
		</header>


        <div style="display: flex;">
            <!-- Sidebar -->
            <aside class="sidebar">
                <!-- <h2>Shree Gajanan Yatra</h2> -->
                <nav>
                    <ul>
						<li><a href="/TouristWebsite/auth/notification">Enquiry</a></li>
                        <li><a href="/TouristWebsite/auth/dashboard" >Dashboard</a></li>
                        <li><a href="/TouristWebsite/auth/packageType">Packages Type</a></li>
                        <li><a href="/TouristWebsite/auth/managePackage">Manage Packages</a></li>
                <li><a href="/TouristWebsite/auth/bookingView" >Manage Bookings</a></li>
                  <li><a href="/TouristWebsite/auth/manageGallary" class="active" style="background-color: #87be29;">Manage Gallary</a></li>
<!--                        <li><a href="#users">User Management</a></li>-->
                       
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
  <title>Gallery Management</title>
  <script src="https://cdn.tailwindcss.com"></script> 
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body style="background-color: #f3f4f6; margin: 0; font-family: Arial, sans-serif;">
  <div style="max-width: 1200px; margin: 0 auto; padding: 24px;">
    <h1 style="font-size: 36px; font-weight: bold; text-align: center; color: #000000; margin-bottom: 32px;">Gallery Management</h1>

    <div style="background-color: #ffffff; padding: 24px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); margin-bottom: 24px;">
      <h2 style="font-size: 20px; font-weight: 600; margin-bottom: 16px; color: #000000;">Add New Photo</h2>
      <div style="display: flex; flex-wrap: wrap; gap: 16px; align-items: center;">
        <input id="photo-url" type="text" placeholder="Enter Photo URL (optional)" style="border: 1px solid #6b9e12; outline: none; padding: 8px; border-radius: 4px; flex: 1; min-width: 200px;" />
        <input id="photo-alt" type="text" placeholder="Enter Alt Text (use ,, to separate keywords)" style="border: 1px solid #6b9e12; outline: none; padding: 8px; border-radius: 4px; flex: 1; min-width: 200px;" />
        <input id="photo-upload" type="file" accept="image	" style="border: 1px solid #6b9e12; outline: none; padding: 8px; border-radius: 4px; flex: 1; min-width: 200px;" />
        <button onclick="addPhoto()" style="background-color: #6b9e12; color: #ffffff; padding: 8px 16px; border-radius: 4px; border: none; cursor: pointer;">Add Photo</button>
      </div>
    </div>

    <div style="background-color: #ffffff; padding: 24px; border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); overflow-x: auto;">
      <h2 style="font-size: 20px; font-weight: 600; margin-bottom: 16px; color: #6b9e12;">Gallery</h2>
      <div id="gallery-container" style="display: flex; gap: 16px; white-space: nowrap; overflow-x: auto;">
        <!-- Photos will be dynamically added here -->
      </div>
    </div>
  </div>

  <script>
    const gallery = [];

    function renderGallery() {
      const galleryContainer = document.getElementById('gallery-container');
      galleryContainer.innerHTML = '';
      gallery.forEach((photo, index) => {
        const photoElement = document.createElement('div');
        photoElement.style.position = 'relative';
        photoElement.style.width = '150px';
        photoElement.style.height = '150px';
        photoElement.style.display = 'inline-block';

        photoElement.innerHTML = `
          <img src="${photo.url}" alt="${photo.alt}" style="border-radius: 8px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); width: 100%; height: 100%; object-fit: cover;">
          <div style="position: absolute; top: 8px; right: 8px; display: flex; gap: 4px;">
            <button onclick="updatePhoto(${index})" style="background-color: #007bff; color: #ffffff; padding: 4px; border-radius: 4px; border: none; cursor: pointer;"><i class="fas fa-edit"></i></button>
            <button onclick="deletePhoto(${index})" style="background-color: #dc3545; color: #ffffff; padding: 4px; border-radius: 4px; border: none; cursor: pointer;"><i class="fas fa-trash"></i></button>
          </div>
        `;

        galleryContainer.appendChild(photoElement);
      });
    }

    function addPhoto() {
      const photoUrl = document.getElementById('photo-url').value.trim();
      const photoAlt = document.getElementById('photo-alt').value.trim();
      const photoUpload = document.getElementById('photo-upload').files[0];

      if (!photoAlt) {
        alert('Alt Text is required.');
        return;
      }

      if (photoUpload) {
        const reader = new FileReader();
        reader.onload = function (e) {
          gallery.push({ url: e.target.result, alt: photoAlt });
          renderGallery();
          resetInputs();
        };
        reader.readAsDataURL(photoUpload);
      } else if (photoUrl) {
        gallery.push({ url: photoUrl, alt: photoAlt });
        renderGallery();
        resetInputs();
      } else {
        alert('Please provide a URL or upload a photo.');
      }
    }

    function deletePhoto(index) {
      if (confirm('Are you sure you want to delete this photo?')) {
        gallery.splice(index, 1);
        renderGallery();
      }
    }

    function updatePhoto(index) {
      const newAlt = prompt('Enter new Alt Text (required, use ,, to separate keywords):', gallery[index].alt);

      if (!newAlt) {
        alert('Alt Text is required.');
        return;
      }

      const fileInput = document.createElement('input');
      fileInput.type = 'file';
      fileInput.accept = 'image';
      fileInput.onchange = function (event) {
        const reader = new FileReader();
        reader.onload = function (e) {
          gallery[index].url = e.target.result;
          gallery[index].alt = newAlt;
          renderGallery();
        };
        reader.readAsDataURL(event.target.files[0]);
      };
      fileInput.click();
    }

    function resetInputs() {
      document.getElementById('photo-url').value = '';
      document.getElementById('photo-alt').value = '';
      document.getElementById('photo-upload').value = '';
    }

    renderGallery();
  </script>

                </section>
            </main>
        </div>
    </div>
</body>
</html>  