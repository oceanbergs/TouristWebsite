document.addEventListener("DOMContentLoaded", function () {
    const internationalLocations = {
        "Africa": [
            { name: "Kenya", link: "kenya.html" },
            { name: "South Africa", link: "southafrica.html" },
            { name: "Egypt", link: "egypt.html" },
        ],
        "America": [
            { name: "USA", link: "usa.html" },
            { name: "Canada", link: "canada.html" },
            { name: "Brazil", link: "brazil.html" },
        ],
        "Asia": [
            { name: "China", link: "china.html" },
            { name: "India", link: "india.html" },
            { name: "Japan", link: "japan.html" },
        ],
        "Australia & New Zealand": [
            { name: "Australia", link: "australia.html" },
            { name: "New Zealand", link: "newzealand.html" },
        ],
        "Europe": [
            { name: "France", link: "france.html" },
            { name: "Germany", link: "germany.html" },
            { name: "Italy", link: "italy.html" },
        ],
        "Middle East": [
            { name: "UAE", link: "uae.html" },
            { name: "Saudi Arabia", link: "saudiarabia.html" },
            { name: "Qatar", link: "qatar.html" },
        ],
        "Antarctica": [
            { name: "South Pole", link: "southpole.html" },
            { name: "Ross Island", link: "rossisland.html" },
        ],
    };

    const internationalDropdown = document.getElementById("internationalDropdown");
    const internationalDropdownToggle = document.getElementById("internationalDropdownToggle");

    function renderInternationalRegions() {
        internationalDropdown.innerHTML = ""; // Clear current items
        Object.keys(internationalLocations).forEach((region) => {
            const item = document.createElement("a");
            item.className = "dropdown-item d-flex justify-content-between align-items-center"; // Flex layout
            item.href = "#";
            item.setAttribute("data-region", region);
            item.innerHTML = `
                <span>${region}</span>
                <span class="arrow">&#9662;</span> <!-- Down arrow -->
            `;
            internationalDropdown.appendChild(item);
        });
    }

    function renderInternationalLocations(region) {
        internationalDropdown.innerHTML = ""; // Clear current items
        internationalLocations[region].forEach((location) => {
            const item = document.createElement("a");
            item.className = "dropdown-item";
            item.href = location.link;
            item.textContent = location.name;
            internationalDropdown.appendChild(item);
        });
    }

    internationalDropdown.addEventListener("click", function (event) {
        const region = event.target.closest("a").getAttribute("data-region");
        if (region && internationalLocations[region]) {
            renderInternationalLocations(region);
        }
    });

    internationalDropdownToggle.addEventListener("click", function () {
        renderInternationalRegions();
    });

    // Initial render
    renderInternationalRegions();
});
