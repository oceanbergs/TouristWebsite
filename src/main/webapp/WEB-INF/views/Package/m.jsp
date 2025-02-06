<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Gajanan Yatra - Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Georgia', serif;
        }

        body, html {
            height: 100%;
        }

        /* Dashboard Styling */
        .dashboard {
            display: flex;
            height: 100%;
            flex-direction: row; /* Side by side */
        }

        /* Header Styling */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 10px 20px;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 900;
        }

        .header .logo img {
            width: 80px;
        }

        .header .actions img {
            width: 35px;
            margin: 0 10px;
            cursor: pointer;
            transition: transform 0.3s;
        }

        .header .actions img:hover {
            transform: scale(1.2);
        }

        /* Sidebar Styling */
		/* Sidebar Styling */
		        .sidebar {
		            width: 250px;
		            background-color: #2c3e50;
		            color: #ecf0f1;
		            padding: 11px;
					align:left;
		            position: fixed;
		            top: 90px; /* Align below the header */
		            height: calc(100vh - 50px);
		            overflow-y: auto; /* Ensure sidebar scrolls if needed */
		        }

		        .sidebar h2 {
		            text-align: left;
		            margin-bottom: 15px;
		        }

		        .sidebar nav ul {
		            list-style: none;
		            padding-top:10px;
		            margin-right: 10px;
		        }

		        .sidebar nav ul li {
		            margin: 0;
		        }

		        .sidebar nav ul li a {
		            display: block;
					margin-top:21px;
		            color: #ecf0f1;
		            text-decoration: none;
		            font-size: 1.1em;
		            padding: 5px 7px;
		            border-radius: 3px;
		            transition: background-color 0.3s;
		            text-align: left;
					
		        }

		        .sidebar nav ul li a:hover {
		            background-color: #34495e;
		        }

		        .sidebar nav ul li a i {
		            margin-right: 8px;
		        }

		        /* Main Content Styling */
		        .main-content {
		            margin-left: 250px;
		            margin-top: 80px; /* Space for fixed header */
		            padding: 20px;
		            background-color: #f8f9fa;
		            flex: 1;
					width:500px;
		        }

        /* Table Styling */
        .table-container {
            margin-top: 20px;
        }

        .table thead {
            background-color: #86B817;
            color: white;
        }

        /* Footer Styling */
        .footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <!-- Header -->
        <header class="header">
            <div class="logo">
                <img src="../img/ShreeGajanan.png" alt="Shree Gajanan Logo">
            </div>
         
			
			<h2 class="companyname" style="font-family: 'Georgia', serif; font-size: 24px; font-weight: bold; color: #fff;">Shri Gajanan Yatra Company Pvt. Ltd</h2>

            <div class="actions">
                <img src="../img/logout.png" alt="Logout" title="Logout">
            </div>
        </header>
        
<!--         <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center" style="display: none;"> -->
<!--     <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status"> -->
<!--         <span class="sr-only">Loading...</span> -->
<!--     </div> -->
<!-- </div> -->
        

        <!-- Sidebar -->
        <aside class="sidebar">
            <nav>
                <ul>
                    <li><a href="notification">Enquiry</a></li>
                    <li><a href="dashboard">Dashboard</a></li>
                    <li><a href="packageType">Packages Type</a></li>
                    <li><a href="managePackage" class="active" style="background-color: #87be29;">Manage Packages</a></li>
                    <li><a href="bookingView">Manage Bookings</a></li>
                    <li><a href="manageGallary">Manage Gallery</a></li>
                     <li><a href="bannerManagement">Banner Management</a></li>
                </ul>
            </nav>
        </aside>
        
        
        

        <!-- Main Content -->
        <main class="main-content">
            <div class="container mt-5" style="max-width: 1200px;">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2 class="text-center" style="color: #2c3e50; font-weight: bold;">Manage Travel Packages</h2>
                    <div>
                        <button class="btn btn-success" onclick="window.location.href='addPackageType'" style="background-color: #86B817; border-color: #86B817;">+ Add New Package</button>
                        <button class="btn btn-primary" style="background-color: #86B817; border-color: #86B817;">Export to Excel</button>
                    </div>
                </div>

                <!-- Search Bar -->
                <div class="mb-3">
                    <input type="text" id="search" class="form-control" placeholder="Search Packages..." style="border: 2px solid #86B817; border-radius: 5px;">
                </div>
                
                <!-- Spinner HTML -->


                <!-- Table -->
                <table id="packageTable" class="table table-striped" style="background: #ffffff; border-radius: 10px; overflow: hidden;">
                    <thead style="background-color: #86B817 !important; color: white !important;">
                        <tr>
                            <th>ID</th>
                            <th>Package Name</th>
                            <th>Duration</th>
                            <th>Price</th>
                            <th>Type</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Data will be dynamically loaded here -->
                        
                        
                    </tbody>
                </table>
                
                <div id="loadingSpinner" style="display:none; text-align: center;">
    <i class="fa fa-spinner fa-spin" style="font-size: 24px;"></i> Loading...
</div>
            </div>
        </main>
    </div>
    
    

    <!-- Modal for Update (if required) -->
    <!-- Add your modal structure here -->
</body>
</html>

<script>
$(document).ready(function () {
    fetchAllBatches(); // Fetch all batches from the server

    // Fetch all packages from the server
    function fetchAllBatches() {
        // Show the loading spinner
        $('#loadingSpinner').show();

        $.ajax({
            url: "getAllPackages", // Ensure this is the correct URL
            type: "GET",
            contentType: "application/json",
            success: function (response) {
                console.log(response); // Log response to check if data is received
                $('#loadingSpinner').hide(); // Hide the spinner after data is received

                if (response && response.length > 0) {
                    populateTable(response);
                } else {
                    console.log("No data found");
                }
            },
            error: function (jqXHR, status, errorThrown) {
                console.log("AJAX Error:", status, errorThrown);
                $('#loadingSpinner').hide(); // Hide the spinner on error
                alert("Failed to communicate with the server");
            }
        });
    }

    // Populate the table with batches
    function populateTable(batches) {
        var tableBody = $("#packageTable tbody");
        tableBody.empty();

        batches.forEach(function (batch, index) {
            var row = $("<tr>");
            row.append($("<td>").text(index + 1));
            row.append($("<td>").text(batch.packageName || "N/A"));
            row.append($("<td>").text(batch.duration || "N/A"));
            row.append($("<td>").text(batch.price || "N/A"));
            row.append($("<td>").text(batch.packageType || "N/A"));

            var actionCell = $("<td>");

            // View Icon
            var viewIcon = $("<i>")
                .addClass("fa-solid fa-eye")
                .attr("title", "View")
                .css({ color: "#007BFF", cursor: "pointer", fontSize: "18px", marginRight: "10px" })
                .click(function () {
                    viewBatchDetails(batch.id);
                });

            // Edit Icon
            var updateIcon = $("<i>")
                .addClass("fa-regular fa-pen-to-square")
                .attr("title", "Edit")
                .css({ color: "#12e068", cursor: "pointer", fontSize: "18px", marginRight: "10px" })
                .click(function () {
                    editBatch(batch.id);
                });

            // Delete Icon
            var deleteIcon = $("<i>")
                .addClass("fa-solid fa-trash")
                .attr("title", "Delete")
                .css({ color: "#eb070f", cursor: "pointer", fontSize: "18px" })
                .click(function () {
                    deleteBatch(batch.id);
                });

            actionCell.append(viewIcon).append(updateIcon).append(deleteIcon);
            row.append(actionCell);
            tableBody.append(row);
        });
    }

    // View Details
    function viewBatchDetails(id) {
        window.location.href = "viewAddPackage?id=" + id;
    }

    // Edit Batch
    function editBatch(id) {
        window.location.href = "editAddPackage?id=" + id;
    }

    // Delete Batch
    function deleteBatch(id) {
        $.ajax({
            url: "deletepackageDetails/" + id,
            type: "POST",
            contentType: "application/json",
            success: function (response) {
                if (response === "Data Deleted Successfully") {
                    alert("Package deleted successfully!");
                    window.location.href = 'managePackage';
                   // fetchAllBatches(); // Refresh table after deletion
                } else {
                    alert("Failed to delete batch: " + response);
                }
            },
            error: function (jqXHR, status, errorThrown) {
                alert("Failed to delete Package");
            }
        });
    }
});



</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>