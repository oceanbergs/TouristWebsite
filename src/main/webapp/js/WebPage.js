$(document).ready(function() {
    // Function to load destinations into the dropdown
    function loadDestinations() {
        $.ajax({
            type: "GET",
            url: 'getByNation',
            dataType: 'json',
            success: function(response) {
                const dropdownMenu = $("#packageDropdown");
                dropdownMenu.empty(); // Clear existing options
                response.forEach(function(destination) {
                    dropdownMenu.append(
                        $('<li>').append(
                            $('<a>', {
                                class: 'dropdown-item',
                                href: 'packageDetails?packageType=' + destination.packageType,
                                text: destination.packageType
                            }).on('click', function(event) {
                                event.stopPropagation(); // Prevent Bootstrap interference
                                window.location.href = $(this).attr('href'); // Navigate manually
                            })
                        )
                    );
                });
            },
            error: function(jqXHR, status, errorThrown) {
                alert("Failed to load destinations: " + errorThrown);
            }
        });
    }

    // Load destinations on page load
    loadDestinations();
});
