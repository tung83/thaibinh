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
    // slick
    $('.slick').slick({
        dots: false,
        autoplay: true,
        autoplaySpeed: 2500,
        infinite: true,
        speed: 100,
        slidesToShow: 4,
        slidesToScroll: 1
    });
    
    $("#search").on('submit',function(e){
        e.preventDefault();
        var val=$(this).find("#hint").val();
        var searchLink=$(this).find("#search-link").val();

        $( location ).attr("href",searchLink+val);
    });
    
    $('.pagination>li>a:has(i)').addClass('has_icon');
    
    $('form#subscribe').on('submit', function (e) {
            e.preventDefault();

            var $form = this;
            var email = $form.email.value.trim();
            var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

            if (!email) return alert("Bạn phải nhập email!");
            if (!regex.test(email)) return alert('Email không đúng!');

            $.ajax({
                    type: 'POST',
                    url: "/ajax.php",
                    data: {act: 'subscribe', email: email },
                    success: function() {
                            alert("Cám ơn bạn đã đăng ký nhận tin.");
                            $form.reset();
                    },
                    fail: function() {
                            alert("Có lỗi xảy ra. Bạn vui lòng thử lại lần sau.");
                    }
            })
    })
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



