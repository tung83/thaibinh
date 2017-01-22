var recaptchaChecked = false;
function recaptchaCallback() {
    recaptchaChecked = true;
    ToogleEnableSubmitButton();
};

function ToogleEnableSubmitButton(){
    var empty = false;
    $('form input,form textarea').each(function() {
        var attr = $(this).attr('required');
        if (typeof attr !== typeof undefined && attr !== false && $(this).val() == '' ) {
            empty = true;
        }
    });

    if (empty || !recaptchaChecked) {
        $('.submit-button').addClass('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
    } else {
        $('.submit-button').removeClass('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
    }
}
$(function(){    
    new WOW().init();
    $('form input,form textarea').keyup(function() {
        ToogleEnableSubmitButton();
    });
    $( "#tabs" ).tabs();
    $("body").append('<a href="#" class="scrollTo-top" ><i class="fa fa-angle-double-up"></i></a>');
    var viewPortWidth = $(window).width();
    $(window).scroll(function(event) {
        event.preventDefault();
        if ($(this).scrollTop() > 180) {
            $('.scrollTo-top').fadeIn();
        } else {
            $('.scrollTo-top').fadeOut();
        }
    });    
    $('.scrollTo-top').click(function(event) {
        $('html, body').animate({scrollTop : 0 }, 600);
        event.preventDefault();
    }); 
    
    
    $(".test-popup-link").magnificPopup({
      type: "image",
      zoom: {
        enabled: true,
        duration: 300
      }
    });
    $('.popup-gallery').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
        },
        zoom: {
            enabled: true,
            duration: 300
        },
        image: {
            verticalFit:true
        }
	});   
    $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
      disableOn: 700,
      type: 'iframe',
      mainClass: 'mfp-fade',
      removalDelay: 160,
      preloader: false,
      zoom: {
            enabled: true,
            duration: 300
      },
      fixedContentPos: false
    });      
})
$(function() {
     $('.slick').slick({
        dots: false,
        autoplay: true,
        autoplaySpeed: 2000,
        infinite: true,
        speed: 150,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 1,
              infinite: true,
              dots: true
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
          // You can unslick at a given breakpoint now by adding:
          // settings: "unslick"
          // instead of a settings object
        ]
      });
    
    $("#search").on('submit',function(e){
        e.preventDefault();
        var val=$(this).find("#hint").val();
        var searchLink=$(this).find("#search-link").val();

        $( location ).attr("href",searchLink+val);
    });
    
    $('.pagination>li>a:has(i)').addClass('has_icon');
});

function add_cart(id,qty){
    $.ajax({
        method: "POST",
        url: "/page/cart.php",
        data: { act : 'add' , product_id : id , product_qty : qty }
    }).done(function( msg ) {
        $("#cart-count").html(msg);     
        $("#cart-count").removeClass('hidden');
        alert( "Đã thêm sản phẩm vào giỏ hàng!" );
    });
}


