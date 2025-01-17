<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>6-Day Luxurious Itinerary</title>
  <style>
    body {
      font-family: "Arial", sans-serif;
      background: linear-gradient(to bottom, #f0f4f9, #e1e9f4);
      margin: 0;
      padding: 30px;
      color: #333;
      font-size: 12px;
    }

    .itinerary {
      max-width: 600px;
      margin: 15px auto;
      padding: 20px;
      background: #ffffff;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      border: 1px solid #86B817;
    }

    h2 {
      text-align: center;
      font-size: 1.4rem;
      color: #86B817;
      text-transform: uppercase;
      margin-bottom: 10px;
      letter-spacing: 1px;
    }

    .day {
      margin-bottom: 10px;
    }

    .day-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 8px;
      background-color: #f1f9f3;
      border: 1px solid #cbe9c7;
      font-size: 0.8rem;
    }

    .day-header h4 {
      margin: 0;
      font-size: 0.9rem;
      color: #2d502a;
      font-weight: bold;
    }

    .day-header p {
      margin: 0;
      font-size: 0.8rem;
      color: #6a8266;
      font-weight: bold;
    }

    .toggle-btn {
      background: #86B817;
      color: #fff;
      border: none;
      width: 25px;
      height: 25px;
      font-size: 1rem;
      line-height: 25px;
      cursor: pointer;
      text-align: center;
      box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
      transition: background 0.3s, transform 0.2s;
    }

    .toggle-btn:hover {
      background: #74a514;
      transform: scale(1.05);
    }

    .details {
      display: none;
      margin-top: 8px;
      padding: 8px;
      background: #f8fef8;
      border: 1px solid #a3d48c;
      font-size: 0.75rem;
    }

    .details h4 {
      font-size: 0.85rem;
      color: #2d502a;
      margin-bottom: 2px;
      margin-top: 2px;
      text-decoration: underline;
    }

    .details ul {
      margin: 0;
      padding-left: 12px;
      list-style-type: square;
      color: #444;
    }

    .details ul li {
      margin-bottom: 3px;
      font-size: 0.75rem;
    }

    .details p {
      margin-top: 5px;
      font-size: 0.75rem;
      color: #5e493b;
    }

    footer {
      text-align: center;
      margin-top: 15px;
      padding: 8px 0;
      color: #856d56;
      font-size: 0.75rem;
      background: #fbf9f4;
      border-top: 1px solid #e6e2d3;
    }

    footer a {
      color: #86B817;
      text-decoration: none;
      font-weight: bold;
    }

    footer a:hover {
      text-decoration: underline;
      color: #6b9e12;
    }

    .itinerary-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 10px;
    }

    .close-btn {
      font-size: 1rem;
      font-weight: bold; 	
      color: #fff;
      background-color: #6b9e12;
      width: 20px;
      height: 20px;
      line-height: 20px;
      text-align: center;
      border: none;
      margin-right: 11.5px;
      padding: auto;
      cursor: pointer;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
      transition: background 0.3s, transform 0.2s;
    }

    .close-btn:hover {
      background-color: #6b9e12;
      transform: scale(1.1);
    }
  </style>
</head>
<body>
  <div class="itinerary">
    <div class="itinerary-header">
      <h2>Itinerary</h2>
      <button class="close-btn" onclick="document.querySelector('.itinerary').style.display = 'none';">&times;</button>
    </div>

    <!-- Day 1 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 1 / 25 June, 24</h4>
        <p>Amravati – Pune (1 Night)</p>
        <button class="toggle-btn" onclick="toggleDetails('day1-details')">+</button>
      </div>
      <div class="details" id="day1-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Departure from Amravati</li>
          <li>Overnight stay at Pune</li>
          
          <li>Local sightseeing (Shaniwar Wada and Aga Khan Palace)</li>
        </ul>
        <p><strong>Meals:</strong> Dinner</p>
      </div>
    </div>

    <!-- Day 2 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 2 / 26 June, 24</h4>
        <p>Pune – Kolhapur (1 Night)</p>
        <button class="toggle-btn" onclick="toggleDetails('day2-details')">+</button>
      </div>
      <div class="details" id="day2-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Morning departure for Kolhapur</li>
          <li>Visit Mahalaxmi Temple and Rankala Lake</li>
        </ul>
        <p><strong>Meals:</strong> Breakfast, Dinner</p>
      </div>
    </div>

    <!-- Day 3 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 3 / 27 June, 24</h4>
        <p>Kolhapur – Belgaum (1 Night)</p>
        <button class="toggle-btn" onclick="toggleDetails('day3-details')">+</button>
      </div>
      <div class="details" id="day3-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Travel to Belgaum</li>
          <li>Explore Belgaum Fort and Kamal Basti</li>
        </ul>
        <p><strong>Meals:</strong> Breakfast, Lunch</p>
      </div>
    </div>

    <!-- Day 4 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 4 / 28 June, 24</h4>
        <p>Belgaum – Panaji (1 Night)</p>
        <button class="toggle-btn" onclick="toggleDetails('day4-details')">+</button>
      </div>
      <div class="details" id="day4-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Visit Panaji, Goa</li>
          <li>Basilica of Bom Jesus and Dona Paula</li>
        </ul>
        <p><strong>Meals:</strong> Breakfast, Dinner</p>
      </div>
    </div>

    <!-- Day 5 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 5 / 29 June, 24</h4>
        <p>Goa (North) – (1 Night)</p>
        <button class="toggle-btn" onclick="toggleDetails('day5-details')">+</button>
      </div>
      <div class="details" id="day5-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Explore Calangute, Baga, and Anjuna beaches</li>
          <li>Enjoy water sports</li>
        </ul>
        <p><strong>Meals:</strong> Breakfast, Lunch</p>
      </div>
    </div>

    <!-- Day 6 -->
    <div class="day">
      <div class="day-header">
        <h4>Day 6 / 30 June, 24</h4>
        <p>Return to Amravati</p>
        <button class="toggle-btn" onclick="toggleDetails('day6-details')">+</button>
      </div>
      <div class="details" id="day6-details">
        <h4>Today’s Sightseeing</h4>
        <ul>
          <li>Check-out from Goa</li>
          <li>Return journey</li>
        </ul>
        <p><strong>Meals:</strong> Breakfast</p>
      </div>
    </div>
  </div>

  <footer>
    Designed for an ultimate travel experience. © 2024 Luxury Tours. <a href="#">Contact Us</a>
  </footer>
  <script>
    function toggleDetails(id) {
      const details = document.getElementById(id);
      const allDetails = document.querySelectorAll(".details");

      // Close other details
      allDetails.forEach((detail) => {
        if (detail.id !== id) {
          detail.style.display = "none";
        }
      });

      // Toggle current
      details.style.display = details.style.display === "block" ? "none" : "block";
    }
  </script>
</body>
</html>
