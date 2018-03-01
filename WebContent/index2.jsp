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
<link href="css/secondDesign.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<title>JEROME'S BIRTHDAY SURPRISE</title>
</head>
<body>
	<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
		onclick="jerome1()">Continue</button>

	<img id="jerome" src="image/jerome.png"
		style="bottom: 0; position: fixed; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em; width: 15%;">

	<img class="position" id="callout1" src="image/speechBubble/Hello.gif"
		style="position: relative; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	<img id="callout2" src="image/speechBubble/Name.gif"
		style="position: relative; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	<img id="callout3" src="image/speechBubble/Need.gif"
		style="position: relative; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	<img id="callout4" src="image/speechBubble/butFirst.gif"
		style="position: relative; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	<img id="callout5" src="image/speechBubble/toTheGrocery.gif"
		style="position: relative; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	<!-- fixed input -->
	<form action="logic" method="post">
		<center>
		<div id="div" class="hidden">
			<table id="table" class="hidden" border="0">
				<tr>
					<th>Edge</th>
					<th>Weight</th>
				</tr>
				<tr>
					<td>House - A</td>
					<td><input type="number" name="sa"  min="0" required></td>
				</tr>
				<tr>
					<td>House - B</td>
					<td><input type="number" name="sb"  min="0" required></td>
				</tr>
				<tr>
					<td>A - C</td>
					<td><input type="number" name="ac" min="0" required></td>
				</tr>
				<tr>
					<td>A - D</td>
					<td><input type="number" name="ad" min="0" required></td>
				</tr>
				<tr>
					<td>B - C</td>
					<td><input type="number" name="bc"  min="0" required></td>
				</tr>
				<tr>
					<td>B - F</td>
					<td><input type="number" name="bf" min="0" required></td>
				</tr>
				<tr>
					<td>C - E</td>
					<td><input type="number" name="ce"  min="0" required></td>
				</tr>
				<tr>
					<td>D - E</td>
					<td><input type="number" name="de"  min="0" required></td>
				</tr>
				<tr>
					<td>D - Grocery</td>
					<td><input type="number" name="dm"  min="0" required></td>
				</tr>
				<tr>
					<td>E - Grocery</td>
					<td><input type="number" name="em"  min="0" required></td>
				</tr>
				<tr>
					<td>E - F</td>
					<td><input type="number" name="ef"  min="0" required></td>
				</tr>
				<tr>
					<td>F - Grocery</td>
					<td><input type="number" name="fm"  min="0" required></td>
				</tr>
			</table>
			</div>
			<button type="submit" class="hidden" id="submit">Continue</button>
		</center>
	</form>
	
	<!-- Items -->
	<center>
		<img id="pizza" onmouseenter="pulse(id)" onclick="itemEvent(id)" class="hidden"
			src="image/items/pizza.png"> 
		<img id="banana" onmouseenter="pulse(id)" onclick="itemEvent(id)" class="hidden" src="image/items/banana.png">
		<img id="phone" onmouseenter="pulse(id)" onclick="itemEvent(id)" class="hidden" src="image/items/phone.png">
		<img id="waze" class="hidden" src="image/items/waze.png">
		<img id="waze2" style="display: none;" src="image/items/waze2.png">
	</center>
	<!-- Events after ItemClicked -->
	<img id="jeromePizza" src="image/jeromePizza.png"
		style="bottom: 0; position: fixed; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em; width: 15%;">
		<img id="jeromeBanana" src="image/jeromeBanana.png"
		style="bottom: 0; position: fixed; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em; width: 15%;">
		<img id="jeromePhone" src="image/jeromePhone.png"
		style="bottom: 0; position: fixed; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em; width: 15%;">
	<img id="bubble1" src="image/speechBubbleItems/1.gif"
		style="position: fixed; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
		<img id="bubble2" src="image/speechBubbleItems/2.gif"
		style="position: fixed; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
		<img id="bubble3" src="image/speechBubbleItems/3.gif"
		style="position: fixed; left: 15%; margin-top: 10%; display: none; float: left; margin-right: 1%; margin-bottom: 0.5em;">
	
	 <audio controls autoplay loop style="display: none; width: 1px;">
	<source
		src="audio/Paradise (Superbowl 50) (8 Bit Cover) [Tribute to Coldplay] - 8 Bit Universe.mp3"
		type="audio/mpeg"></audio>
		<audio id="ding" controls style="display: none; width: 1px;">
	<source
		src="audio/Ding Sound Effect.mp3"
		type="audio/mpeg"></audio>
 
	<script>
		var buttonClick = 0;
		function jerome1() {
			if (buttonClick == 0) {
				document.getElementById('jerome').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 1) {
				document.getElementById('callout1').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 2) {
				document.getElementById('callout1').style.display = 'none';
				document.getElementById('callout2').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 3) {
				document.getElementById('callout2').style.display = 'none';
				document.getElementById('callout3').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 4) {
				document.getElementById('callout3').style.display = 'none';
				document.getElementById('callout4').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 5) {
				document.getElementById('callout4').style.display = 'none';
				document.getElementById('callout5').style.display = 'block';
				buttonClick++;
			} else if (buttonClick == 6) {
				document.getElementById('callout5').style.display = 'none';
				document.getElementById('jerome').style.display = 'none';
				setTimeout(alertFunction, 1000);
				function alertFunction() {
					alert('Find the Fastest way to the Grocery!!');
					alert('Use your items');
				}
				buttonClick++;

			} else if (buttonClick == 7) {
				buttonClick++;
				document.getElementById('pizza').className = 'pizza animated bounceIn';
				setTimeout(
						function() {
							document.getElementById('banana').className = 'banana animated bounceIn'
						}, 1000);
				setTimeout(
						function() {
							document.getElementById('phone').className = 'phone animated bounceIn'
						}, 2000);
				document.getElementById('click').className = 'hidden';
			} else if (buttonClick == 8){
				document.getElementById('bubble3').style.display = 'none'
				document.getElementById('waze').className = 'animated zoomInDown';
				setTimeout(function(){document.getElementById('waze').className = 'hidden'}, 1300);
				setTimeout(function(){document.getElementById('waze2').style.display = 'block'}, 1300);
				setTimeout(function(){document.getElementById('ding').play()}, 1300);
				setTimeout(function(){document.getElementById('waze2').style.display = 'none'}, 1550);
				setTimeout(function(){document.getElementById('waze').className = 'notHidden'}, 1550);
				buttonClick++;
			}else if (buttonClick == 9){
				document.getElementById('waze').className = 'hidden';
				document.getElementById('pizza').className = 'hidden';
				document.getElementById('banana').className = 'hidden';
				document.getElementById('phone').className = 'hidden';
				document.getElementById('jeromePhone').style.display = 'none';
				document.getElementById('table').className = 'centerPosition';
				document.getElementById('div').className = 'box';
				
				document.getElementById('click').className = 'hidden';
				document.getElementById('submit').className = 'btn btn-1 btn-1a animated infinite pulse';
			}
			
		}
		function itemEvent(id) {
			var x = id;
			if (x == "pizza") {
				document.getElementById(x).className = 'pizza animated tada';
				setTimeout(function(){document.getElementById('jeromePhone').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble3').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromeBanana').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble2').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromePizza').style.display = 'block'}, 1500);
				setTimeout(function(){document.getElementById('bubble1').style.display = 'block'}, 2000);
				document.getElementById('click').className = 'hidden';
			} else if(x == "banana"){
				
				document.getElementById(x).className = 'banana animated tada';
				setTimeout(function(){document.getElementById('jeromePhone').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble3').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromePizza').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble1').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromeBanana').style.display = 'block'}, 1500);
				setTimeout(function(){document.getElementById('bubble2').style.display = 'block'}, 2000);
				document.getElementById('click').className = 'hidden';
			} else if(x == "phone"){
				document.getElementById(x).className = 'phone animated tada';
				setTimeout(function(){document.getElementById('jeromeBanana').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble2').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromePizza').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('bubble1').style.display = 'none'}, 1500);
				setTimeout(function(){document.getElementById('jeromePhone').style.display = 'block'}, 1500);
				setTimeout(function(){document.getElementById('bubble3').style.display = 'block'}, 2000);
				document.getElementById('click').className = 'btn btn-1 btn-1a animated infinite pulse';
			}
		}

		function pulse(id) {
			var x = id;
			if (x == "pizza") {
				document.getElementById(x).className = 'pizza animated infinite pulse';
				y++;
			} else if (x == "banana"){
				document.getElementById(x).className = 'banana animated infinite pulse';
			
			} else if (x == "phone"){
				document.getElementById(x).className = 'phone animated infinite pulse';
			}
		}
	</script>
</body>
</html>