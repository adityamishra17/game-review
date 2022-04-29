<?php
//start session
@session_start();

//number of items in the shopping cart
$count=0;

//retrieve the cart content
if ( isset ( $_SESSION['cart'] ) ){
	$cart = $_SESSION['cart'];

	if  ( $cart ) {
		$items = explode(',', $cart);
		$count = count($items);
	}
}

//check to see if a user if logged in
$login = '';
$name = '';
$role = 0;

if (isset($_SESSION['login'])){
	$login = $_SESSION['login'];
}

if (isset($_SESSION['name'])) {
	$name = $_SESSION['name'];
}

if (isset($_SESSION['role'])){
	$role = $_SESSION['role'];
}

if (isset($_SESSION['id'])) {
	$session_id = $_SESSION['id'];
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $page_title; ?></title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/main.css"/>
  <link rel="stylesheet" href="assets/css/new.css"/>
  <style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">abcGamingZone</a>
    </div>
    
    
    <ul class="nav navbar-nav">
      <li><a href="index.php">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">more <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addgame.php">Add Games</a></li>
          <li><a href="reviews.php">Review</a></li>
          <li><a href="logout.php">LOGOUT</a></li>
        </ul>
      </li>
      <li><a href="games.php">Games</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="registration.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>