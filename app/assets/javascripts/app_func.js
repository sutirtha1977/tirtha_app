$(function() {  

    var topoffset = 52; 
    /************************************ 
    wow start 
    ************************************/
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100
      }
    );
    wow.init();
    /************************************ 
    wow end 
    ************************************/

    $(document).on('turbolinks:load', function() {
        /************************************ 
        make menus drop automatically start 
        ************************************/
        $('ul.nav li.dropdown').hover(function() {
            $('.dropdown-menu', this).fadeIn();
        }, function() {
            $('.dropdown-menu', this).fadeOut('fast');
        });//hover
        /************************************ 
        make menus drop automatically end 
        ************************************/


        /************************************ 
        isotope start 
        ************************************/
        var $gallery = $('.gallery').isotope({
          // options
          itemSelector: '.photo',
          layoutMode: 'masonry'
        });

        $gallery.imagesLoaded().progress( function() {
            $gallery.isotope('layout');
        })
        /************************************ 
        isotope end 
        ************************************/

        /************************************ 
        tool tip start 
        ************************************/
        $('[data-toggle="tooltip"]').tooltip();
        /************************************ 
        tool tip end 
        ************************************/

        /************************************ 
        fullheight start 
        ************************************/
        //window height
        var wheight = $(window).height(); //get height of the window

        $('.fullheight').css('height', wheight);

        $(window).resize(function() {
            var wheight = $(window).height(); //get height of the window
            $('.fullheight').css('height', wheight);
        }) //on resize
        /************************************ 
        fullheight end 
        ************************************/

        /************************************ 
        listings equal height start 
        ************************************/
        var heights = $(".single-list").map(function() {
            return $(this).height();
        }).get(),

        maxHeight = Math.max.apply(null, heights);

        $(".single-list").height(maxHeight);    
        /************************************ 
        listings equal height end 
        ************************************/

    });

});


