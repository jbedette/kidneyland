$(document).ready(function() {
   var cnt=0, bg;
   var $body = $('body');
   var arr = ['img/happy.jpg','img/happy2.jpg','img/happy3.jpg','img/happy4.jpg','img/happy5.jpg','img/happy6.jpg'];
   var bgImg = document.getElementById("bg_img")
   var index = 0

    function slideShow() {
        bgImg.className += "fadeOut";
        setTimeout(function() {
            bgImg.src = arr[index];
            bgImg.className = "";
        },2500);
        index++;
        if (index == arr.length) { index = 0; }
        setTimeout(slideShow, 5000);
    }
    slideShow();

});