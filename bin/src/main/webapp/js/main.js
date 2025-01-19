(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
//    $(window).scroll(function () {
//        if ($(this).scrollTop() > 45) {
//            $('.navbar').addClass('sticky-top shadow-sm');
//        } else {
//            $('.navbar').removeClass('sticky-top shadow-sm');
//        }
//    });


let lastScrollTop = 0;

$(window).scroll(function () {
    let currentScroll = $(this).scrollTop();
    let navbar = $('.navbar');

    if (currentScroll > lastScrollTop) {
        // Scrolling down
        navbar.slideUp();
    } else {
        // Scrolling up
        navbar.slideDown();
    }

    // Change background color on scroll
    if (currentScroll > 50) { // Adjust the value as per your requirement
         navbar.css('background-color', 'black');// Default background color
    } else {
        navbar.css('background-color', 'transparent'); // Transparent when at the top
    }

    lastScrollTop = currentScroll;
});

    
    // Dropdown on mouse hover
    const $dropdown = $(".dropdown");
    const $dropdownToggle = $(".dropdown-toggle");
    const $dropdownMenu = $(".dropdown-menu");
    const showClass = "show";
    
    $(window).on("load resize", function() {
        if (this.matchMedia("(min-width: 992px)").matches) {
            $dropdown.hover(
            function() {
                const $this = $(this);
                $this.addClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "true");
                $this.find($dropdownMenu).addClass(showClass);
            },
            function() {
                const $this = $(this);
                $this.removeClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "false");
                $this.find($dropdownMenu).removeClass(showClass);
            }
            );
        } else {
            $dropdown.off("mouseenter mouseleave");
        }
    });
    
    
   $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
        $('.back-to-top').fadeIn('slow');  // Show the button after scrolling 300px
    } else {
        $('.back-to-top').fadeOut('slow');  // Hide the button when less than 300px
    }
});

$('.back-to-top').click(function () {
    $('html, body').animate({ scrollTop: 0 }, 1500, 'easeInOutExpo'); // Smooth scroll to top
    return false;
});



    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        center: true,
        margin: 24,
        dots: true,
        loop: true,
        nav : false,
        responsive: {
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    
})(jQuery);

