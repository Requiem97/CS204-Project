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
<link href="css/index5.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/set1.css" />
<title>Jerome's Big Surprise</title>
</head>
<body>

	<center>
		<img id="backpack" src="image/bagnijerome.png" style="display: none;">
		<img id="jerome" src="image/halfjerome.png" class="hidden"> <img
			id="1" src="image/speechbubble3/1.gif" class="hidden"> <img
			id="2" src="image/speechbubble3/2.gif" class="hidden"> <img
			id="3" src="image/speechbubble3/3.gif" class="hidden"> <img
			id="4" src="image/speechbubble3/4.gif" class="hidden"> <img
			id="5" src="image/speechbubble3/5.gif" class="hidden"> <img
			id="6" src="image/speechbubble3/6.gif" class="hidden">
			

		<div id="div" class="box2" id="div">
			<br>
			<br>
			<br>
			<br> Your Weight Capacity is W = ${weight}.
			<table id="table" border="1">
				<tr>
					<th>Name</th>
					<th>weight</th>
					<th>benefit</th>
					<th>value</th>
				</tr>
				<%
					int length = (Integer) session.getAttribute("items");
				%>

				<%
					for (int i = 0; i < length; i++) {
				%>
				<tr>
					<td><%=request.getAttribute("name" + i)%></td>
					<td><%=request.getAttribute("weight" + i)%></td>
					<td><%=request.getAttribute("benefit" + i)%></td>
					<td><%=request.getAttribute("value" + i)%></td>
				</tr>
				<%
					}
				%>

			</table>
			<br>
			Items in Knapsack: <br>
			<%
				for (int i = 0; i < length; i++) {
			%>

			<%=request.getAttribute("weightend" + i)%>kg of
			<%=request.getAttribute("namend" + i)%>
			<br>
			<%
				}
			%>
			<br>
			total benefit:
			<%=request.getAttribute("totalbenefit")%>
			<br>
			

		</div>
	</center>
	<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
				onclick="jerome1()">Continue</button>
				<form action="index6.jsp	" method="post">
				<button class="hidden" id="click2"
				type="submit" onclick="jerome1()">Continue</button>
				</form>
 
	
	<!-- Script -->
	<script>
	var buttonClick = 1;
	
		function jerome1(){
			if(buttonClick == 1){
				document.getElementById('div').className='hidden';
				document.getElementById('table').className='hidden';
			document.getElementById('jerome').className = 'bottom';
			
			document.getElementById('5').className='bubble';
			buttonClick++;
			} else if(buttonClick == 2){
				document.getElementById('5').className='hidden';
				document.getElementById('6').className='bubble';
				buttonClick++;
			} else if (buttonClick == 3){
				document.getElementById('click').className='hidden';
				document.getElementById('click2').className='btn btn-1 btn-1a animated infinite pulse';
			}
		}
	</script>
</body>
</html>