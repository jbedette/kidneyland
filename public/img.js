// image switcher

var slideIndex = 0;
carousel();

function carousel() {
   var i;
   var x = document.getElementsByClassName("mySlides");
   for (i = 0; i < x.length; i++) {
     x[i].style.display = "none"; 
   }
   slideIndex++;
   if (slideIndex > x.length) {slideIndex = 1} 
   x[slideIndex-1].style.display = "block"; 
   setTimeout(carousel, 3000);

  }
 // email valdiation
 function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

var newMail = new.validateEmail(getElementsByClassName(".email"));