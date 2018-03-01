<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full1">
<head>
<link rel="shortcut icon" type="image/x-icon" href="baloon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Design -->
<link href="css/index2-1.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<title>Jerome's Big Surprise</title>
</head>
<body onload="playMusic()">

	<div class="lvl2" id="shortestPath">
		<h1>Shortest Path</h1>
		<br> Shortest path is:
		<%=request.getAttribute("path")%></div>
		
		<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
		onclick="jerome1()">Continue</button>
	
		<img src="image/jerome.png" class="hidden" id="jerome">
		
		
		<img src="image/poof/1.png" class="hidden" id="1">
		<img src="image/poof/2.png" class="hidden" id="2">
		<img src="image/poof/3.png" class="hidden" id="3">
		<img src="image/poof/4.png" class="hidden" id="4">
		<img src="image/poof/5.png" class="hidden" id="5">
		<img src="image/poof/6.png" class="hidden" id="6">
		<img src="image/poof/7.png" class="hidden" id="7">
		<img src="image/poof/8.png" class="hidden" id="8">
		<img src="image/poof/9.png" class="hidden" id="9">
		<img src="image/poof/10.png" class="hidden" id="10">
		
		<form action="index3.jsp" method="post">
		<button type="submit" class="hidden" id="click2"
		>Continue</button>
		</form>
		<audio id="won" controls style="display: none; width: 1px;">
		<source src="audio/won.mp3"
		type="audio/mpeg"></audio>
		
		<audio id="poofsound" controls style="display: none; width: 1px;">
		<source src="audio/Cartoon Poof Sound Effect.mp3"
		type="audio/mpeg"></audio>
	<script>
	var buttonClick = 0;
		function jerome1(){
			
			if (buttonClick == 0){
				document.getElementById('click').className = 'hidden';
				document.getElementById('shortestPath').className = 'hidden';
				document.getElementById('jerome').className = 'bottomLeft';
				setTimeout(function(){document.getElementById('jerome').className='hidden'}, 1000);
				setTimeout(function(){document.getElementById('1').className='bottomLeft2'}, 1000);
				setTimeout(function(){document.getElementById('poofsound').play()}, 1000);
				setTimeout(function(){document.getElementById('1').className='hidden'}, 1100);
				setTimeout(function(){document.getElementById('2').className='bottomLeft2'}, 1100);
				setTimeout(function(){document.getElementById('2').className='hidden'}, 1200);
				setTimeout(function(){document.getElementById('3').className='bottomLeft2'}, 1200);
				setTimeout(function(){document.getElementById('3').className='hidden'}, 1300);
				setTimeout(function(){document.getElementById('4').className='bottomLeft2'}, 1300);
				setTimeout(function(){document.getElementById('4').className='hidden'}, 1400);
				setTimeout(function(){document.getElementById('5').className='bottomLeft2'}, 1400);
				setTimeout(function(){document.getElementById('5').className='hidden'}, 1500);
				setTimeout(function(){document.getElementById('6').className='bottomLeft2'}, 1500);
				setTimeout(function(){document.getElementById('6').className='hidden'}, 1600);
				setTimeout(function(){document.getElementById('7').className='bottomLeft2'}, 1600);
				setTimeout(function(){document.getElementById('7').className='hidden'}, 1700);
				setTimeout(function(){document.getElementById('8').className='bottomLeft2'}, 1700);
				setTimeout(function(){document.getElementById('8').className='hidden'}, 1800);
				setTimeout(function(){document.getElementById('9').className='bottomLeft2'}, 1800);
				setTimeout(function(){document.getElementById('9').className='hidden'}, 2000);
				setTimeout(function(){document.getElementById('10').className='bottomLeft2'}, 2000);
				setTimeout(function(){document.getElementById('10').className='hidden'}, 2100);
				
				setTimeout(function(){document.getElementById('jerome').className='final2'}, 2450);
				setTimeout(function(){document.getElementById('poofsound').play()}, 2450);
				setTimeout(function(){document.getElementById('1').className='final'}, 2500);
				setTimeout(function(){document.getElementById('1').className='hidden'}, 2600);
				setTimeout(function(){document.getElementById('2').className='final'}, 2600);
				setTimeout(function(){document.getElementById('2').className='hidden'}, 2700);
				setTimeout(function(){document.getElementById('3').className='final'}, 2700);
				setTimeout(function(){document.getElementById('3').className='hidden'}, 2800);
				setTimeout(function(){document.getElementById('4').className='final'}, 2800);
				setTimeout(function(){document.getElementById('4').className='hidden'}, 2900);
				setTimeout(function(){document.getElementById('5').className='final'}, 2900);
				setTimeout(function(){document.getElementById('5').className='hidden'}, 2900);
				setTimeout(function(){document.getElementById('6').className='final'}, 3000);
				setTimeout(function(){document.getElementById('6').className='hidden'}, 3000);
				setTimeout(function(){document.getElementById('7').className='final'}, 3100);
				setTimeout(function(){document.getElementById('7').className='hidden'}, 3100);
				setTimeout(function(){document.getElementById('8').className='final'}, 3200);
				setTimeout(function(){document.getElementById('8').className='hidden'}, 3200);
				setTimeout(function(){document.getElementById('9').className='final'}, 3300);
				setTimeout(function(){document.getElementById('9').className='hidden'}, 3300);
				setTimeout(function(){document.getElementById('9').className='final'}, 3400);
				setTimeout(function(){document.getElementById('9').className='hidden'}, 3400);
				setTimeout(function(){document.getElementById('10').className='final'}, 3500);
				setTimeout(function(){document.getElementById('10').className='hidden'}, 3500);
				
				setTimeout(function(){document.getElementById('click2').className='btn btn-1 btn-1a animated infinite pulse'}, 3600);
				
			}
		}
		function playMusic(){
			document.getElementById('won').play();
		}
	</script>
</body>
</html>