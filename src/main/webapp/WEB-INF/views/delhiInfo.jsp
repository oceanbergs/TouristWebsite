<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Itinerary</title>
  <style>
    body {
      font-family: "Segoe UI", Arial, sans-serif;
      background-color: #f7fafc;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 1200px;
      margin: auto;
      height: auto;
      padding: 20px;
    }
    .header {
      background: linear-gradient(to right, #6b9e12, #a3d977);
      color: #ffffff;
      text-align: center;
      padding: 30px;
      border-radius: 12px;
      margin-bottom: 25px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }
    .header h1 {
      margin: 0;
      font-size: 2.8rem;
      text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
    }
    .header p {
      font-size: 1.2rem;
      margin-top: 10px;
    }
    .tab-buttons {
      display: flex;
      justify-content: center;
      margin-bottom: 25px;
      gap: 10px;
    }
    .tab-button {
      background-color: #e2e8f0;
      color: #6b9e12;
      border: 2px solid #6b9e12;
      padding: 12px 25px;
      border-radius: 30px;
      cursor: pointer;
      transition: all 0.3s ease;
      font-weight: bold;
    }
    .tab-button.active, .tab-button:hover {
      background-color: #6b9e12;
      color: #ffffff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .tab-content {
      display: none;
      background: #ffffff;
      border-radius: 12px;
      padding: 25px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    .tab-content.active {
      display: block;
    }
    .card {
      border: 1px solid #e0e4e8;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
      transition: transform 0.2s ease;
    }
    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    }
    .card h4 {
      color: #6b9e12;
      margin-bottom: 12px;
      font-size: 1.4rem;
    }
    .button-primary {
      background-color: #6b9e12;
      color: #ffffff;
      padding: 18px 30px;
      padding-bottom: 10px;
      margin-left: 1050px;
      margin-bottom: 20px;
      border: none;
      
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }
    .button-primary:hover {
      background-color: #558d0e;
      transform: scale(1.05);
    }
    ul {
      list-style: disc;
      padding-left: 30px;
      margin: 15px 0;
    }
    ul li {
      margin-bottom: 10px;
    }
    .gallery {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
    }
    .gallery img {
      width: 100%;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;
    }
    .gallery img:hover {
      transform: scale(1.1);
    }
  </style>
</head>
<body>
  <div class="container">
    <header class="header">
      <h1>Itinerary</h1>
      <p>Your ultimate travel experience awaits</p>
    </header>

    <div class="tab-buttons">
      <button class="tab-button active" onclick="showTab('itinerary-section', this)">ITINERARY</button>
      <button class="tab-button" onclick="showTab('include-exclude-section', this)">INCLUDE / EXCLUDE</button>
      <button class="tab-button" onclick="showTab('gallery-section', this)">GALLERY</button>
    </div>
    
    

    <div id="itinerary-section" class="tab-content active">
<!--       <div class="text-right mb-4"> -->
<!--         <button class="button-primary" onclick="window.print()">Print</button> -->
<!--       </div> -->
<!--       <div class="card"> -->
<!--         <h4>Day 1: Port Blair</h4> -->
<!--         <p>Arrival at Port Blair Airport and transfer to hotel. After fresh-up, visit Cellular Jail, Light & Sound Show, Veer Savarkar Park, and stay overnight at Port Blair. <strong>Note:</strong> Cellular Jail is closed on national holidays. Light & Sound Show timing depends on ticket availability.</p> -->
<!--         <p><strong>Meals:</strong> Dinner</p> -->
<!--       </div> -->
<!--       <div class="card"> -->
<!--         <h4>Day 2: Ross Island - North Bay Island - Port Blair</h4> -->
<!--         <p>Proceed to Ross Island, explore the ruins of British-era buildings like the Chief Commissioner’s house, and visit North Bay Island for water activities. Return to Port Blair for dinner and overnight stay. <strong>Note:</strong> Ferry timing and availability are subject to weather conditions.</p> -->
<!--         <p><strong>Meals:</strong> Breakfast & Dinner</p> -->
<!--       </div> -->
<!--       <div class="card"> -->
<!--         <h4>Day 3: Port Blair - Havelock Island</h4> -->
<!--         <p>Early morning journey to Havelock Island by boat. Upon arrival, visit Radhanagar Beach, one of the most beautiful beaches in Asia. Enjoy beach activities and stay overnight at Havelock. <strong>Note:</strong> Ferry operation depends on weather and clearance conditions.</p> -->
<!--         <p><strong>Meals:</strong> Breakfast & Dinner</p> -->
<!--       </div> -->
    </div>

    <div id="include-exclude-section" class="tab-content">
      <h2>Include</h2>
      <ul id="include-list">
<!--         <li>Accommodation on twin sharing basis</li> -->
<!--         <li>Meals as per itinerary</li> -->
<!--         <li>Transportation in AC vehicle</li> -->
<!--         <li>Entry tickets for all sightseeing</li> -->
<!--         <li>Guide charges</li> -->
      </ul>
      <h2>Exclude</h2>
      <ul id="exclude-list"></ul>
<!--         <li>Airfare/Train fare</li> -->
<!--         <li>Personal expenses</li> -->
<!--         <li>Optional activities (like scuba diving)</li> -->
<!--         <li>Anything not mentioned in the inclusions</li> -->
      </ul>
    </div>

   <div id="gallery-section" class="tab-content">
    <div class="gallery">
        <!-- Images will be dynamically inserted here -->
    </div>
</div>

  </div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
    function showTab(sectionId, button) {
      const contents = document.querySelectorAll('.tab-content');
      const buttons = document.querySelectorAll('.tab-button');

      contents.forEach(content => content.classList.remove('active'));
      buttons.forEach(btn => btn.classList.remove('active'));

      document.getElementById(sectionId).classList.add('active');
      button.classList.add('active');
    }
  </script>
  
  
  <script>
  $(document).ready(function () {
	    // Function to extract URL parameters
	    function getUrlParameter(name) {
	        var urlParams = new URLSearchParams(window.location.search);
	        return urlParams.get(name);
	    }

	    var packageId = getUrlParameter('id'); // Get 'id' from URL
	   // alert("Package ID: " + packageId); // Alert to check if ID is received

	    if (packageId) {
	        getPackageDetails(packageId);
	    } else {
	        alert("Package ID is missing");
	    }

	    // Function to fetch itinerary details for a specific package using AJAX
	    function getPackageDetails(id) {
	        $.ajax({
	            url: "getAllItinerary/" + id, // Adjust API endpoint
	            type: "GET",
	            contentType: "application/json",
	            success: function (response) {
	                console.log(response); // Log response to check data structure
	                displayItinerary(response);
	            },
	            error: function (error) {
	                console.log("Error fetching data: ", error);
	            }
	        });
	    }

	    // Function to render itinerary dynamically
	    function displayItinerary(itineraryData) {
	        var itineraryHtml = "";

	        if (!itineraryData || itineraryData.length === 0) {
	            itineraryHtml = "<p>No itinerary details available.</p>";
	        } else {
	            // Loop through the itinerary data and render it
	            $.each(itineraryData, function (index, itinerary) {
	                // Prepare sightseeing locations list as a string
	                var sightseeingLocations = "";
	                if (itinerary.sightseeingEntrie && itinerary.sightseeingEntrie.length > 0) {
	                    $.each(itinerary.sightseeingEntrie, function (idx, sightseeing) {
	                        sightseeingLocations += sightseeing.location + ", ";
	                    });
	                    // Remove the trailing comma and space
	                    sightseeingLocations = sightseeingLocations.slice(0, -2);
	                }

	                itineraryHtml +=
	                    '<div class="card">' +
	                    '<h4> ' + itinerary.day + ': ' + itinerary.destination + '</h4>' +
	                    '<p>' + itinerary.details + '</p>' +
	                   // '<p><strong>Meals:</strong> ' + (itinerary.meals || "Not specified") + '</p>' +
	                    '<p><strong>Meals:</strong> ' + sightseeingLocations + '</p>' +
	                    '</div>';
	            });
	        }

	        $("#itinerary-section").html(itineraryHtml);
	    }
	});

  </script>
  <script type="text/javascript">
  
  $(document).ready(function () {
	    // Function to extract URL parameters
	    function getUrlParameter(name) {
	        var urlParams = new URLSearchParams(window.location.search);
	        return urlParams.get(name);
	    }

	    var packageId = getUrlParameter('id'); // Get 'id' from URL

	    if (!packageId) {
	        alert("Package ID is missing in the URL!");
	        return; // Stop execution if packageId is not found
	    }

	    // Fetch Includes
	    fetchIncludes(packageId);

	    // Fetch Excludes
	    fetchExcludes(packageId);

	    // Function to fetch Includes using AJAX
	    function fetchIncludes(id) {
	        $.ajax({
	            url: "getAllincludes/" + id,
	            type: "GET",
	            dataType: "json",
	            success: function (data) {
	                var includeList = $("#include-list");
	                includeList.empty(); // Clear previous data
	                
	                if (data.length === 0) {
	                    includeList.append("<li>No inclusions available</li>");
	                } else {
	                    $.each(data, function (index, item) {
	                        includeList.append("<li>" + item.includes + "</li>");
	                    });
	                }
	            },
	            error: function (xhr, status, error) {
	                console.error("Error fetching includes:", xhr.responseText);
	                $("#include-list").append("<li>Error fetching includes</li>");
	            }
	        });
	    }

	    // Function to fetch Excludes using AJAX
	    function fetchExcludes(id) {
	        $.ajax({
	            url: "getAllexcludes/" + id,
	            type: "GET",
	            dataType: "json",
	            success: function (data) {
	                var excludeList = $("#exclude-list");
	                excludeList.empty(); // Clear previous data
	                
	                if (data.length === 0) {
	                    excludeList.append("<li>No exclusions available</li>");
	                } else {
	                    $.each(data, function (index, item) {
	                        excludeList.append("<li>" + item.excludes + "</li>");
	                    });
	                }
	            },
	            error: function (xhr, status, error) {
	                console.error("Error fetching excludes:", xhr.responseText);
	                $("#exclude-list").append("<li>Error fetching excludes</li>");
	            }
	        });
	    }
	});


  
  </script>
  
  <script>
  function getUrlParameter(name) {
	    var urlParams = new URLSearchParams(window.location.search);
	    return urlParams.get(name);
	}

	var packageId = getUrlParameter('id'); // Get 'id' from URL

	// Alert to check if packageId is retrieved correctly
	//alert("Package ID: " + packageId);

	if (!packageId) {
	    alert("Package ID is missing in the URL!");
	} else {
	    fetchGalleryImages(packageId);
	}

	function fetchGalleryImages(packageId) {
	    $.ajax({
	        url: "getbyPackage/" + packageId,  // API call to fetch images
	        type: "GET",
	        dataType: "json",
	        success: function (response) {
	            console.log("API Response:", response); // Debugging

	            let galleryContainer = $(".gallery");
	            galleryContainer.empty(); // Clear existing images

	            if (!response || response.length === 0) {
	                $("#gallery-section").html("<p>No images available for this package.</p>");
	                return;
	            }

	            response.forEach(image => {
	                if (image.gallery) { // Ensure gallery field is not null
	                    let imgSrc = "data:image/jpeg;base64," + image.gallery; // Prefix Base64 data

	                    let imgElement = $("<img>", {
	                        src: imgSrc,
	                        alt: "Gallery Image",
	                        width: "270",
	                        height: "200",
	                        css: { margin: "5px" }
	                    });

	                    galleryContainer.append(imgElement);
	                    console.log("Appended Image:", imgSrc); // Debugging
	                } else {
	                    console.warn("Missing image data in response:", image);
	                }
	            });
	        },
	        error: function (xhr) {
	            console.error("Error fetching gallery images:", xhr.responseText);
	            $("#gallery-section").html("<p>Error loading images.</p>");
	        }
	    });
	}


  </script>
</body>
</html>
