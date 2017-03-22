$(document).ready(function(){

//image gallery

$('.size-shop_thumbnail, .attachment-shop_single.size-shop_single.wp-post-image').on('click', function(prevent){
  prevent.preventDefault();
});

if($(window).width() >= 480){ 
//  console.log('nu da');  
  
$('.size-shop_thumbnail').click(function() {
var thmb = this;
var srcset = this.srcset;
    $('.attachment-shop_single.size-shop_single.wp-post-image').fadeOut(400,function(){
      thmb.srcset = this.srcset;
      $(this).fadeIn(400)[0].srcset = srcset;
  });
})};
  
 
//burger and scroll
  
  var  mb = $(".burger-container");
    mn = $(".menu");
    mbs = "burger-container-scrolled";
    mns = "menu-scrolled";
    hdr = $('header').height() + 15;
    contHeight = $(".burger-container").height();

$(window).scroll(function() {
  if( $(this).scrollTop() > hdr ) {
    mb.addClass(mbs);
    mn.addClass(mns);
    $(".burger-container-space").height(contHeight);
  } else {
    mb.removeClass(mbs);
    mn.removeClass(mns);
    $(".burger-container-space").height(0);
  }
});  
  

// burger animation
  $(".burger").on('click', function(){
      $(this).toggleClass("change");
  });
  
  $(".burger").on('click', function(){
      $('.menu').toggleClass("closed");
//      $('.aside-left').toggleClass("closed");
  });
  
//  menu close and smooth scroll 
  
  $('a[href*="#"]:not([href="#"])').click(function() {
    $('.menu').toggleClass("closed");
    $(".burger").toggleClass("change");
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

// menu adjustment to fit in wrapper  
w = 0;
if($(window).width() < 480) 
{    
w = $(".content-wrapper").width();
console.log(w);
$(".menu").width(w);
$(".menu-scrolled").width(w);
} else {
console.log("screen is wider than 480");
}
  
});
  
