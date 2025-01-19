document.addEventListener("DOMContentLoaded", function () {
    const packageDropdown = document.getElementById("packageDropdown");
    const packageDropdownToggle = document.getElementById("packageDropdownToggle");

    if (!packageDropdown || !packageDropdownToggle) {
        console.error("Required dropdown elements not found in the DOM.");
        return;
    }

    // Show Loading Indicator
    packageDropdown.innerHTML = "<a class='dropdown-item disabled'>Loading Packages...</a>";

    fetch('http://localhost:8080/TouristWebsite/getByNation')
        .then(response => {
            if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
            return response.json();
        })
        .then(packageTypes => {
            console.log('Fetched Package Types:', packageTypes);

            if (Array.isArray(packageTypes) && packageTypes.some(pt => pt.packageType)) {
                populateDropdown(packageTypes);
            } else {
                console.warn("No valid package types found in the response.");
                packageDropdown.innerHTML = "<a class='dropdown-item disabled'>No Packages Available</a>";
            }
        })
        .catch(error => {
            console.error('Error fetching package types:', error);
            packageDropdown.innerHTML = "<a class='dropdown-item disabled'>Failed to load packages</a>";
            alert('Failed to load packages. Please try again later.');
        });

    // Populate Dropdown
    function populateDropdown(packageTypes) {
        packageDropdown.innerHTML = ""; // Clear previous dropdown items

        packageTypes.forEach(packageType => {
            if (!packageType.packageType) return; // Skip invalid entries

            const item = document.createElement("a");
            item.className = "dropdown-item";
            item.href = `packageDetails?packageType=${encodeURIComponent(packageType.packageType)}`;
            item.textContent = packageType.packageType;
            item.addEventListener("click", function () {
                const packageTypeInput = document.getElementById("packageType");
                if (packageTypeInput) {
                    packageTypeInput.value = packageType.packageType;
                } else {
                    console.warn("Element with ID 'packageType' not found in the DOM.");
                }
            });
            packageDropdown.appendChild(item);
        });
    }
});
