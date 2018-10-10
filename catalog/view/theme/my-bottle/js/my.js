 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //                            карточка товара (изображение с переди \ сзади)

    function swapImgFRONT(idThis, back){
        var img      = $('#swapImg')            ;
        var imgFront = img.attr('data-front')   ;
        img.attr('src', imgFront)               ;
        $(idThis).addClass('active')            ;
        $(back).removeClass('active')           ;
        $(img).css({'transform': 'rotateY(0)'});

    }
    function swapImgBACK(idThis, front){
        var img      = $('#swapImg')            ;
        var imgBack  = img.attr('data-back')    ;
        img.attr('src', imgBack)                ;
        $(idThis).addClass('active')            ;
        $(front).removeClass('active')          ;
        $(img).css({'transform': 'rotateY(180deg)'});
    }

$(document).ready(function () {

    
    /////////////////////////////////////////////////////////
    /////                                               /////
    ///// Запуск счетчика цифр при скролле              /////   
    /////                                               /////
    /////////////////////////////////////////////////////////
    
    var show = true;
    var countbox = "#counts";
    $(window).on("scroll load resize", function () {
        if (!show) return false;                      // Отменяем показ анимации, если она уже была выполнена
        var w_top       = $(window).scrollTop()     ; // Количество пикселей на которое была прокручена страница
        var e_top       = $(countbox).offset().top  ; // Расстояние от блока со счетчиками до верха всего документа
        var w_height    = $(window).height()        ; // Высота окна браузера
        var d_height    = $(document).height()      ; // Высота всего документа
        var e_height    = $(countbox).outerHeight() ; // Высота всего документа
        if (w_top + 500 >= e_top || w_height + w_top == d_height || e_height + e_top < w_height) {
            $(".benefits__number").spincrement();
            // $('.benefits__number').css('opacity', '1');
            // $('.benefits__number').spincrement({
            //     thousandSeparator: "",
            //     duration: 1200
            // });
            show = false;
        }
    });


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
    //                                                      откроет меню
    function openNav(){
        $('.mobilBar').toggleClass("openNav");
        $('#nav').toggleClass('showNav');
    }

    $('.mobilBar').on('click',function(){
        openNav();
    });
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //                                          кнопка вверх
    $(document).ready(function(){
        $('body').append('<a href="#" id="go-top" title="Вверх"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>');
      });
      
      $(function() {
       $.fn.scrollToTop = function() {
        $(this).hide().removeAttr("href");
        if ($(window).scrollTop() >= "250") $(this).fadeIn("slow")
        var scrollDiv = $(this);
        $(window).scroll(function() {
         if ($(window).scrollTop() <= "250") $(scrollDiv).fadeOut("slow")
         else $(scrollDiv).fadeIn("slow")
        });
        $(this).click(function() {
         $("html, body").animate({scrollTop: 0}, "slow")
        })
       }
      });
      
      $(function() {
       $("#go-top").scrollToTop();
      });


      $(".formSubscription button").click(function() {
          var mail = $(this).prev('input').val();
          $('#formSubscription').modal('show');
/*         $.ajax({
            type: "POST",
            url: "/php/sendMail.php",
            data: form_data,
            success: function () {
                
                $('#modalForm').modal('hide');
                $('#modalFuncYou').modal('show');
            },
            error: function (data) {
                console.log(data);
            }
        });
 */      
        });
        $('[type="mail"]').blur(function() {
            if($(this).val() != '') {
                var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
                if(pattern.test($(this).val())){
                    $(this).css({'border' : '1px solid #569b44'});
                } else {
                    $(this).css({'border' : '1px solid #ff0000'});
                }
            } else {
                $(this).css({'border' : '1px solid #ff0000'});
            }
        });
      
   

});