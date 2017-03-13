$(function() {  


    $(document).on('turbolinks:load', function() {
        /************************************ 
        backstretch start 
        ************************************/
        // $.backstretch("j (<%= asset_url('main_2.jpg')) %>", {speed: 500}); 
        /************************************ 
        backstretch end 
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

    });

});


