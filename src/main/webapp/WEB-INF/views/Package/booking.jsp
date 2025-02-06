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

        /* Dashboard Layout */
        .dashboard {
            display: flex;
            height: 100vh;
            flex-direction: row;
        }

        /* Header Styling */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            z-index: 1000;
            top: 0;
        }

        header .logo img {
            width: 80px;
        }

        header .companyname {
            flex-grow: 1;
            text-align: center;
            font-size: 1.5rem;
        }

        header .actions img {
            width: 35px;
            cursor: pointer;
            margin-left: 10px;
            transition: transform 0.3s;
        }

        header .actions img:hover {
            transform: scale(1.2);
        }

        /* Sidebar Styling */
        aside {
            width: 250px;
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
            position: fixed;
            top: 50px;
            left: 0;
            height: calc(100vh - 50px);
            overflow-y: auto;
        }

        aside h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.5rem;
        }

        aside nav ul {
            list-style: none;
            padding: 0;
        }

        aside nav ul li {
            margin-bottom: 15px;
        }

        aside nav ul li a {
            display: block;
            color: #ecf0f1;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        aside nav ul li a:hover {
            background-color: #34495e;
        }

        aside nav ul li a.active {
            background-color: #87be29;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 250px;
            padding: 80px 20px 20px 20px;
            background-color: #f8f9fa;
            flex: 1;
        }

        /* Table Styling */
        .table-container {
            margin-top: 20px;
        }

        .table thead {
            background-color: #86B817;
            color: white;
        }

        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }

        .table th {
            width: auto;
        }

        /* Footer Styling */
        .footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header .companyname {
                font-size: 1.2rem;
            }

            aside {
                width: 200px;
            }

            .main-content {
                margin-left: 220px;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <!-- Header -->
        <header>
            <div class="logo">
                <img src="../img/ShreeGajanan.png" alt="Logo">
            </div>            
			<h2 class="companyname" style="font-family: 'Georgia', serif; font-size: 24px; font-weight: bold; color: #fff;">Shri Gajanan Yatra Company Pvt. Ltd</h2>


            <div class="actions">
               <a href="logout">
        <img src="../img/logout.png" alt="Logout">
    </a>
            </div>
        </header>
        
        <!-- Sidebar -->
		<aside class="sidebar">
		            <nav>
		                <ul>
		                 <li><a href="notification"></a></li>
		                    <li><a href="notification">Enquiry</a></li>
		                    <li><a href="dashboard">Dashboard</a></li>
		                    <li><a href="packageType">Packages Type</a></li>
		                    <li><a href="managePackage">Manage Packages</a></li>
		                    <li><a href="bookingView" class="active" style="background-color: #87be29;">Manage Bookings</a></li>
		                    <li><a href="manageGallery">Manage Gallery</a></li>
		                      <li><a href="bannerManagement">Banner Management</a></li>
		                </ul>
		            </nav>
		        </aside>


        <!-- Main Content -->
        <main class="main-content">
            <div class="container mt-5">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2 class="text-center" style="color: #2c3e50; font-weight: bold;">Booking Packages</h2>
                    <div>
                        <button class="btn btn-success" onclick="window.location.href='bookingAdd'" style="background-color: #86B817; border-color: #86B817;">+ Book New Package</button>
                        <button class="btn btn-primary" style="background-color: #86B817; border-color: #86B817;" onclick="exportToExcel()">Export to Excel</button>
                    </div>
                </div>

                <!-- Search Bars -->
              <div class="d-flex mb-3 gap-3 align-items-start"> 
    <!-- Mode of Booking -->
    <div style="flex: 1;">
    <label for="modeOfBooking" class="form-label" style="font-weight: bold;">Mode of Booking</label>
    <select id="modeOfBooking" class="form-select" style="border: 2px solid #86B817; border-radius: 5px;">
        <option value="">Mode of Booking</option>
        <option value="Online">Online</option>
        <option value="Offline">Offline</option>
    </select>
</div>


    <!-- Search -->
   <div style="flex: 1;">
    <label for="search" class="form-label" style="font-weight: bold;">Search</label>
    <input type="text" id="search" class="form-control" placeholder="Search" style="border: 2px solid #86B817; border-radius: 5px;">
</div>


    <!-- Start Date -->
    <div style="flex: 1;">
        <label for="startDate" class="form-label" style="font-weight: bold;">Start Date</label>
        <input type="date" id="startDate" name="startDate" class="form-control datepicker" placeholder="Start Date" style="border: 2px solid #86B817; border-radius: 5px;">
    </div>

    <!-- End Date -->
    <div style="flex: 1;">
        <label for="endDate" class="form-label" style="font-weight: bold;">End Date</label>
        <input type="date" id="endDate"  name="end_ate" class="form-control datepicker" placeholder="End Date" style="border: 2px solid #86B817; border-radius: 5px;">
    </div>

    <!-- Search Button -->
    <div style="flex: 1;">
        <label class="form-label">&nbsp;</label>
        <button id="searchButton" class="btn btn-success w-100" style="background-color: #86B817; border-color: #86B817;">Search</button>
    </div>
</div>




                <!-- Table -->
                <table id="packageTable" class="table table-striped" style="background: #ffffff; border-radius: 10px; overflow: hidden;">
                    <thead>
                        <tr>
                            <th>B_Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Contact</th>
                            <th>Destination</th>
<!--                             <th>Start_Date</th> -->
<!--                             <th>End_Date</th> -->
<!--                               <th>Mode</th> -->
<!--                             <th>Request</th> -->
<!--                             <th>Status</th> -->
                             <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Data will be dynamically loaded here -->
                    </tbody>
                </table>
                
                
            </div>
        </main>
    </div>
</body>
</html>


<!-- Modal for Update -->

<script>
    function exportToExcel() {
        // Redirect to the backend API to trigger the export
        window.location.href = "/TouristWebsite/auth/excel";
    }
</script>

<script>
$(document).ready(function () {
    fetchAllBatches();

    // Fetch all packages from the server
    function fetchAllBatches() {
    	
    	 $('#loadingSpinner').show();
        $.ajax({
            url: "getBookingDetails",
            type: "GET",
            contentType: "application/json",
            success: function (response) {
                if (Array.isArray(response) && response.length > 0) {
                    populateTable(response);
                } else {
                    alert("No data found.");
                    $("#packageTable tbody").empty(); // Clear table if no data
                }
            },
            error: function (jqXHR) {
                if (jqXHR.status === 403) {
                    alert("YOU DON'T HAVE THE PERMISSION.");
                } else {
                    alert("Failed to communicate with the server.");
                }
            }
        });
    }

    // Populate the table with data
    function populateTable(batches) {
        var tableBody = $("#packageTable tbody");
        tableBody.empty();

        batches.forEach(function (batch, index) {
            var row = $("<tr>");
            row.append($("<td>").text(index + 1));
            row.append($("<td>").text(batch.customer_Name || "N/A"));
            row.append($("<td>").text(batch.email || "N/A"));
            row.append($("<td>").text(batch.mobile_Number || "N/A"));
            row.append($("<td>").text(batch.destination || "N/A"));
//             row.append($("<td>").text(batch.start_Date || "N/A"));
//             row.append($("<td>").text(batch.end_Date || "N/A"));
//             row.append($("<td>").text(batch.special_Request || "N/A"));
//             row.append($("<td>").text(batch.status || "N/A"));

            var actionCell = $("<td>");
            actionCell.append(createActionIcon("fa-eye", "View", "#007BFF", function () {
                viewBatchDetails(batch.id);
            }));
            actionCell.append(createActionIcon("fa-pen-to-square", "Edit", "#12e068", function () {
                editBatch(batch.id);
            }));
            actionCell.append(createActionIcon("fa-trash", "Delete", "#eb070f", function () {
                deleteBatch(batch.id);
            }));

            row.append(actionCell);
            tableBody.append(row);
        });
    }

    // Create action icon
    function createActionIcon(iconClass, title, color, onClick) {
        return $("<i>")
            .addClass("fa-solid " + iconClass)
            .attr("title", title)
            .css({ color: color, cursor: "pointer", fontSize: "18px", marginRight: "10px" })
            .click(onClick);
    }

    // View Details
    function viewBatchDetails(id) {
        window.location.href = "viewBooking?id=" + id;
    }

    // Edit Batch
    function editBatch(id) {
        window.location.href = "editBooking?id=" + id;
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
                    fetchAllBatches(); // Refresh table after deletion
                } else {
                    alert("Failed to delete batch: " + response);
                }
            },
            error: function (jqXHR) {
                if (jqXHR.status === 403) {
                    alert("YOU DON'T HAVE THE PERMISSION.");
                } else {
                    alert("An error occurred while deleting the package.");
                }
            }
        });
    }

    // Mode of Booking filter
    $("#modeOfBooking").on("change", function () {
        var selectedMode = $(this).val();

        if (!selectedMode) {
            alert("Please select a Mode of Booking.");
            return;
        }

        // Fetch data based on mode of booking
        $.ajax({
            type: "GET",
            url: "search/mode/" + selectedMode,
            dataType: "json",
            success: function (response) {
                if (Array.isArray(response) && response.length > 0) {
                    populateTable(response);
                } else {
                    alert("No bookings found for the selected mode.");
                    $("#packageTable tbody").empty(); // Clear table if no results
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error("Error fetching bookings:", textStatus, errorThrown);
                alert("Failed to fetch bookings. Please try again.");
            }
        });
    });

    // Global Search functionality
    $("#search").on("input", function () {
        var keyword = $(this).val().trim(); // Get the value entered by the user

        if (keyword === "") {
            // If no input, clear the table and fetch all batches
            fetchAllBatches();
            return;
        }

        // Send AJAX request to search API
        $.ajax({
            url: "globalSearch", // Endpoint for global search
            type: "GET",
            data: { keyword: keyword }, // Send keyword as a query parameter
            success: function (response) {
                if (Array.isArray(response) && response.length > 0) {
                    populateTable(response); // Call function to populate table with results
                } else {
                    alert("No bookings found for the given search term.");
                    $("#packageTable tbody").empty(); // Clear table if no results
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error("Error fetching search results:", textStatus, errorThrown);
                alert("Failed to search. Please try again.");
            }
        });
    });
});


$(document).ready(function () {
    $("#searchButton").click(function () {
        // Get start and end dates
        var startDate = $("#start_Date").val();
        var endDate = $("#end_Date").val();

        // Check if both start and end dates are provided
        if (startDate && endDate) {
            // Make AJAX call to search by date range
            $.ajax({
                url: "/searchByDateRange",
                type: "GET",
                data: {
                    start_Date: start_Date,
                    end_Date: end_Date
                },
                success: function (response) {
                    if (Array.isArray(response) && response.length > 0) {
                        populateTable(response); // Call function to populate the table
                    } else {
                        alert("No bookings found for the selected date range.");
                        $("#packageTable tbody").empty(); // Clear table if no results
                    }
                },
                error: function () {
                    alert("Error occurred while fetching data.");
                }
            });
        } else {
            alert("Please select both start and end dates.");
        }
    });
});



</script>

 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>