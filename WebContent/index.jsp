<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/x-icon" href="baloon.png" />
<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Design CSS -->
<link href="css/frontDesign.css" rel="stylesheet">
<link href="css/FloatingAnimation.css" rel="stylesheet">

<title>Jerome's Big Surprise</title>
</head>
<body>
	<div class="section scaling">
		<div class="corner tl">
			<div class="a"></div>
			<div class="b"></div>
			<div class="c"></div>
		</div>
		<div class="corner tr">
			<div class="a"></div>
			<div class="b"></div>
			<div class="c"></div>
		</div>

		<div class="section_content">
			<center>
			<form action="index2.jsp" method="post">
				<button>Start!</button>
			</form>

			</center>

		</div>

		<div class="corner bl">
			<div class="a"></div>
			<div class="c"></div>
			<div class="b"></div>
		</div>
		<div class="corner br">
			<div class="a"></div>
			<div class="c"></div>
			<div class="b"></div>
		</div>
	</div>
	<div class="">
		<img class="floating" src="image/baloon.png" height="5%" width="5%">

	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-12">
				<img id="Jerome" src="image/jerome.png" style="display: none">


			</div>
		</div>
	</div>

	<!-- Audio -->
	 
	<audio controls autoplay loop style="display: none; width: 1px;"> <source
		src="audio/Viva La Vida (8 Bit Remix Cover Version) Tribute to Coldplay - 8 Bit Universe.mp3" type="audio/mpeg"></audio>


	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>