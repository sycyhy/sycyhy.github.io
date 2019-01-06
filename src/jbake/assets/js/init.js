


makeActive = function () {

    var selector, elems, makeActive;

    selector = 'nav li';
    elems = document.querySelectorAll(selector);


    for (var i = 0; i < elems.length; i++) {
        elems[i].classList.remove('active');

        if(elems[i].querySelector('a').href === document.URL) {
            elems[i].classList.add('active')
        }
    }
};


(function($){
  $(function(){

    $('.sidenav').sidenav();
    makeActive()

  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems, options);
  });


  // Or with jQuery

  $('.dropdown-trigger').dropdown();

 // Floating-Fixed table of contents
    setTimeout(function() {
      var tocWrapperHeight = 260; // Max height of ads.
      var tocHeight = $('.toc-wrapper .table-of-contents').length
        ? $('.toc-wrapper .table-of-contents').height()
        : 0;
      var socialHeight = 95; // Height of unloaded social media in footer.
      var footerOffset = $('body > footer').first().length
        ? $('body > footer')
            .first()
            .offset().top
        : 0;
      var bottomOffset = footerOffset - socialHeight - tocHeight - tocWrapperHeight;
      if ($('nav').length) {
        console.log('Nav pushpin', $('nav').height());
        $('.toc-wrapper').pushpin({
          top: 232,
          bottom: bottomOffset
        });
      } else if ($('#index-banner').length) {
      	console.log('Index banner', $('nav').height());
        $('.toc-wrapper').pushpin({
          top: $('#index-banner').height(),
          bottom: bottomOffset
        });
      } else {
      	console.log('Nav pushpin', $('nav').height());
        $('.toc-wrapper').pushpin({
          top: 0,
          bottom: bottomOffset
        });
      }
    }, 100);


$('.scrollspy').scrollSpy();

  }); // end of document ready
})(jQuery); // end of jQuery name space
