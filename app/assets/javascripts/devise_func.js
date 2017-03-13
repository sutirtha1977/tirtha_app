$(function() {  

    $(document).on('turbolinks:load', function() {
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

    });

});


