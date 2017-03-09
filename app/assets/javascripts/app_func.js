$(function() {  

    var topoffset = 52; 

    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100
      }
    );
    wow.init();

    $(document).on('turbolinks:load', function() {

        //make menus drop automatically
        $('ul.nav li.dropdown').hover(function() {
            $('.dropdown-menu', this).fadeIn();
        }, function() {
            $('.dropdown-menu', this).fadeOut('fast');
        });//hover

        //tool tip
        $('[data-toggle="tooltip"]').tooltip();

        //fullheight START
        //window height
        var wheight = $(window).height(); //get height of the window

        $('.fullheight').css('height', wheight);

        $(window).resize(function() {
            var wheight = $(window).height(); //get height of the window
            $('.fullheight').css('height', wheight);
        }) //on resize
        //fullheight END

      // //highlight navigation
      // $(window).scroll(function() {
      //   var windowpos = $(window).scrollTop() + topoffset;
      //   $('nav li').removeClass('active');

      //   // if (windowpos > $('#intro').offset().top) {
      //   //   $('nav li').removeClass('active');
      //   //   $('a[href$="/"]').parent().addClass('active');
      //   // } //windowpos

      //   if (windowpos > $('#about').offset().top) {
      //     $('nav li').removeClass('active');
      //     $('a[href$="#about"]').parent().addClass('active');
      //   } //windowpos

      //   if (windowpos > $('#service').offset().top) {
      //     $('nav li').removeClass('active');
      //     $('a[href$="#service"]').parent().addClass('active');
      //   } //windowpos

      //   if (windowpos > $('#product').offset().top) {
      //     $('nav li').removeClass('active');
      //     $('a[href$="#product"]').parent().addClass('active');
      //   } //windowpos

      //   if (windowpos > $('#team').offset().top) {
      //     $('nav li').removeClass('active');
      //     $('a[href$="#team"]').parent().addClass('active');
      //   } //windowpos

      // }); //window scroll

    });

});


