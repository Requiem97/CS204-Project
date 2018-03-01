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
	
	<center>
		<img id="backpack" src="image/bagnijerome.png" style="display: none;">
		<img id="jerome" src="image/halfjerome.png" class="hidden"> 
		<img id="1" src="image/speechbubble3/1.gif" class="hidden"> 
		<img id="2" src="image/speechbubble3/2.gif" class="hidden"> 
		<img id="3" src="image/speechbubble3/3.gif" class="hidden"> 
		<img id="4" src="image/speechbubble3/4.gif" class="hidden"> 
		
		<div class="box2" id="div">
		<br><br><br><br>
		<form action="logic2" method="POST">
		<input type="hidden" name="counter" value="1" /> Your Weight Capacity
		is ${weight} <br>	Number of items is ${items}.
		<table border="1">
			<tr>
				<th>Name</th>
				<th>weight(kg)</th>
				<th>benefit</th>
			</tr>
			<%
				int length = (Integer) session.getAttribute("items");
			%>

			<%
				for (int i = 0; i < length; i++) {
			%>
			<tr>
				<td><input type="text" name="name<%=i%>" required></td>
				<td><input type="number" name="weight<%=i%>" min="1" required></td>
				<td><input type="number" name="benefit<%=i%>" min="0" required></td>
			</tr>
			<%
				}
			%>
		</table>
		<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
		type="submit" >Continue</button>
		</form>
				</div>
	</center>
	<button class="hidden" id="click2"
		>Continue</button>

	<!-- Audio -->
	<audio id="audio" controls style="display: none; width: 1px;">
	<source src="audio/backpackEffect.mp3" type="audio/mpeg"></audio>
	<!-- Script -->
	<script>
		
	</script>
</body>
</html>