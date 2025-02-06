<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Gajanan Yatra - Admin Dashboard</title>
    <!-- Add jQuery Library -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    
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
	background-col	or: #fff;
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
    }������
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
                <!-- <h2>Shree Gajanan Yatra</h2> -->
                <nav>
                    <ul>
						<li><a href="notification">Notifications</a></li>
                        <li><a href="dashboard">Dashboard</a></li>
                        <li><a href="packageType" class="active" style="background-color: #87be29;">Packages Type</a></li>
                        <li><a href="managePackage">Manage Packages</a></li>
						<li><a href="viewAddPackage">Manage Bookings</a></li>
												<li><a href="manageGallery">Manage Gallary</a></li>
												  <li><a href="bannerManagement">Banner Management</a></li>
<!--                        <li><a href="#users">User Management</a></li>-->
                       
<!--                        <li><a href="#settings">Settings</a></li>-->
                    </ul>
                </nav>
            </aside>

            <!-- Main Content -->
           <main class="main-content" style="padding-top: 50px;">

                <section id="add-package">
    <div class="form-container" style="width: 100%; margin: auto;  min-height: 250px;">
    <h2>Package Type</h2>
    <div  style="display: flex; flex-wrap: wrap; gap: 20px;">
        
        <!-- Package Type Field -->
        <div style="flex: 1; min-width: 45%;">
            <label for="packageType">Package Type Name</label>
            <input type="text" id="packageType" name="packageType" placeholder="Enter package name" required style="width: 100%; padding: 8px; margin-top: 5px;">
        </div>

        <!-- Nation Dropdown -->
        <div style="flex: 1; min-width: 45%;">
            <label for="nation">Nation</label>
            <select id="nation" name="nation" required style="width: 100%; padding: 8px; margin-top: 5px;">
                <option value="" disabled selected>Select Nation</option>
                <option value="India">India</option>
                <option value="World">World</option>
            </select>
        </div>

        <!-- Submit Button -->
        <div style="display: flex; justify-content: center; align-items: center; margin-top: 20px; width: 100%;">
                    <button id="saveButton" style="background-color: #87be29; color: white; padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; width: 200px;">Add Package Type </button>
                </div>
</div>
</div>


    <!-- Table Section -->
    <div class="form-container" style="margin-top: 30px;">
    <h2>Existing Package Types</h2>
    <table style="width: 100%; border-collapse: collapse; margin-top: 20px;">
        <thead>
            <tr style="background-color: #87be29; color: white;">
                <th style="padding: 10px; border: 1px solid #ddd;">Sr.No.</th>
                <th style="padding: 10px; border: 1px solid #ddd;">Package Type Name</th>
                <th style="padding: 10px; border: 1px solid #ddd;">Nation</th>
                <th style="padding: 10px; border: 1px solid #ddd;">Actions</th>
            </tr>
        </thead>
        <tbody class="tablebody">
            <!-- Table rows will be dynamically populated here -->
        </tbody>
    </table>
</div>

</section>

            </main>
        </div>
    </div>
</body>
<script>


$(document).ready(function() {
    // Click event handler for the save button
    $("#saveButton").click(function() {
        const packageType = $("#packageType").val();
        const nation = $("#nation").val();

       
        // Construct batch data object
        const batchData = {
        		packageType: packageType,
            nation: nation
        };
        
        if (!packageType || !nation) {
            alert("Please fill all required fields.");
            return;
        }

        // Send AJAX request to save batch data
        $.ajax({
            url: "savePackageType",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(batchData),
            success: function(response) {
                alert(response);
                window.location.href = "/TouristWebsite/auth/packageType";
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
	$(document).ready(function () {
	    fetchAllBatches();

	    function fetchAllBatches() {
	        $.ajax({
	            url: "getAllPackageTypeData", // Ensure this endpoint is correct
	            type: "GET",
	            contentType: "application/json",
	            success: function (response) {
	                if (response && response.length > 0) {
	                    populateTable(response);
	                } else {
	                    $(".tablebody").html('<tr><td colspan="4" style="text-align: center;">No data found</td></tr>');
	                }
	            },
	            error: function (jqXHR, status, errorThrown) {
	                if (jqXHR.status === 403) {
	                    alert("YOU DON'T HAVE THE PERMISSION");
	                } else {
	                    alert("Failed to communicate with the server");
	                }
	            }
	        });
	    }

	    function populateTable(batches) {
	        var tableBody = $(".tablebody");
	        tableBody.empty();

	        batches.forEach(function (batch, index) {
	            var row = $("<tr>");
	            row.append($("<td>").text(index + 1));
	            row.append($("<td>").text(batch.packageType || "N/A"));
	            row.append($("<td>").text(batch.nation || "N/A"));

	            var actionCell = $("<td>");

	           

	            var deleteIcon = $("<i>")
	                .addClass("fa-solid fa-trash")
	                .attr("title", "Delete")
	                .css({
	                    color: "#eb070f",
	                    cursor: "pointer",
	                    fontSize: "18px",
	                    fontWeight: "900",
	                })
	                .click(function () {
	                    deleteBatch(batch.packageTypeId);
	                });

	           
	            actionCell.append(deleteIcon);

	            row.append(actionCell);

	            tableBody.append(row);
	        });
	    }

	    

	    function deleteBatch(packageTypeId) {
	        $.ajax({
	            url: "deletePackageType/" + packageTypeId,
	            type: "POST",
	            contentType: "application/json",
	            success: function (response) {
	                alert(response);
	                fetchAllBatches();
	            },
	            error: function (jqXHR, status, errorThrown) {
	                if (jqXHR.status === 403) {
	                    alert("YOU DON'T HAVE THE PERMISSION");
	                } else if (jqXHR.status === 404) {
	                    alert("Package type not found or already deleted");
	                } else {
	                    alert("Failed to communicate with the server");
	                }
	            }
	        });
	    }

	});


		</script>
</html>  