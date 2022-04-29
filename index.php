
<?php
use function UI\Draw\Text\Font\fontFamilies;
$page_title = "abc.ai";
include_once('includes/header.php');
?>

<div  class="new-content"  data-ride="content" style="max-width:2000px; margin-top:46px">

	<div class="mySlides display-container new-center" role="listbox">
    <img src="assets/img/x-elder.jpg" style="width:100%">
    <div class="jumbotron">
      <div class="carousel-caption">
        <h3>Welcome</h3>
        <p><b>abc Game review</b></p>  
      </div>
    </div> 
  </div>
  <div class="mySlides display-container new-center">
    <img src="assets/img/x-godofwar.jpg" style="width:100%">
    <div class="jumbotron">
            <div class="carousel-caption">
                <h3>Join Us </h3>
                <p><b>Sign up today to rate your favorate game.</b></p> 
                <p><a class="btn btn-lg btn-info" href="registration.php" role="button">Sign up today</a></p>
             </div>
     </div>
  </div>
  <div class="mySlides display-container new-center">
    <img src="assets/img/x-forza.jpg" style="width:100%">
    <div class="jumbotron">
              <div class="carousel-caption">
                <h3>Reviews</h3>
                <p><b>See what other people think about games.<b></p>
                <p><a class="btn btn-lg  btn-info" href="reviews.php" role="button">VIEW REVIEWS</a></p> 
              </div>
      </div>
  </div>
</div>

  <!-- description   Section -->
  <div class="new-container new-content new-center new-padding-64"                style="max-width:1200px">
    <h2 class="new-wide">abcGamingZone</h2>
    <p class="new-opacity"><i>for all gamers</i></p>
    <p style="font-size:17px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">Welcome to abc gaming zone On abc gaming zone we always aim to inform news, reviews, features.We analyze games on a secular level which will break down a game based on its graphics, sound, stability and overall gaming experience. If youre concerned about the family friendliness of a game, we have a separate moral score which looks at violence, language, sexual content, occult references and other ethical issues.
  </p>
    <div class="new-row new-padding- new-margin-middle 32">
      <div class="new-third">
        <p>Elden Ring</p>
        <img src="assets/img/elder-ring.jpg" class="new-round new-margin-bottom" alt="Random Name" style="width:auto">
      </div>
      <div class="new-third">
        <p>Cyber Punk 2077</p>
        <img src="assets/img/cyberpunk.jpg" class="new-round new-margin-bottom" alt="Random Name" style="width:auto">
      </div>
      <div class="new-third">
        <p>valorant</p>
        <img src="assets/img/valorant.png" class="new-round" alt="Random Name" style="width:auto">
      </div>
    </div>
  </div>
  </div>

 
</div>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}


</script>



<?php
include_once('includes/footer.php');
