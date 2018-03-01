<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full">
<head>
<link rel="shortcut icon" type="image/x-icon" href="baloon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Design -->
<link href="css/index3.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/set1.css" />
<title>Jerome's Big Surprise</title>
</head>
<body>
	<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
		onclick="jerome1()">Continue</button>
	<center>
		<img id="backpack" src="image/bagnijerome.png" style="display: none;">
		<img id="jerome" src="image/halfjerome.png" class="hidden"> 
		<img id="1" src="image/speechbubble3/1.gif" class="hidden"> 
		<img id="2" src="image/speechbubble3/2.gif" class="hidden"> 
		<img id="3" src="image/speechbubble3/3.gif" class="hidden"> 
		<img id="4" src="image/speechbubble3/4.gif" class="hidden"> 
		
		<div class="hidden" id="div">
		<br><br><br><br>
		<form action="Servlet1" method="POST">
<input type="hidden" name="counter" value="0"/>
<table  id="table" class="hidden">
<tr><td>Knapsack Maximum Weight:</td><td> <input name="weight" type="number" min="1" required></td></tr>
<tr><td>Number of Items: </td><td> <input name="items" type="number" min="2" max="10" required></td></tr>
</table>
				</div>
	</center>
	<button class="hidden" id="click2"
		>Continue</button>

	<!-- Audio -->
	<audio controls autoplay loop style="display: none; width: 1px;">
	<source
		src="audio/Stressed Out (8 Bit Remix Cover Version) [Tribute to Twenty One Pilots] - 8 Bit Universe.mp3"
		type="audio/mpeg"></audio>
	<audio id="audio" controls style="display: none; width: 1px;">
	<source src="audio/backpackEffect.mp3" type="audio/mpeg"></audio>
	<!-- Script -->
	<script>
		var buttonClick = 1;
		function jerome1() {
			if (buttonClick == 1) {
				document.getElementById('backpack').style.display = 'block';
				document.getElementById('backpack').className += 'animated zoomIn';
				document.getElementById('audio').play();
				setTimeout(function(){document.getElementById('jerome').className='bottom'}, 1800);
				setTimeout(function(){document.getElementById('1').className='bubble'}, 1800);
				buttonClick++;
			} else if (buttonClick == 2) {
				document.getElementById('1').className='hidden';
				document.getElementById('2').className='bubble';
				buttonClick++;
			} 
			else if (buttonClick == 3) {
				document.getElementById('2').className='hidden';
				document.getElementById('3').className='bubble';
				buttonClick++;
			} 
			else if (buttonClick == 4) {
				document.getElementById('3').className='hidden';
				document.getElementById('4').className='bubble';
				buttonClick++;
			}	else if (buttonClick == 5) {
				document.getElementById('4').className='hidden';
				document.getElementById('jerome').className='hidden';
				document.getElementById('backpack').className += 'animated zoomOut';
				setTimeout(function(){document.getElementById('backpack').className = 'hidden';}, 1500);
				setTimeout(function(){document.getElementById('div').className = 'box';}, 1500);
				setTimeout(function(){document.getElementById('table').className = 'nothidden';}, 1500);
				setTimeout(function(){document.getElementById('click').className = 'hidden';}, 1500);
				setTimeout(function(){document.getElementById('click2').className = 'btn btn-1 btn-1a animated infinite pulse';}, 1500);
				buttonClick++;
			}
		}
	</script>
</body>
</html>