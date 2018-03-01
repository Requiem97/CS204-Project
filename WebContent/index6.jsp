<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full" id="html">
<head>
<link rel="shortcut icon" type="image/x-icon" href="baloon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Design -->
<link href="css/index6.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/set1.css" />
<title>Jerome's Big Surprise</title>
</head>
<body>
<button class="btn btn-1 btn-1a animated infinite pulse" id="click"
				onclick="turnTheLights()">Continue</button>
				<button class="hidden" id="click2"
				onclick="turnTheLights()">Continue</button>
<img src="image/bl2.jpg" id="bg" class="full2">
<img src="image/gf.png" id="gf" class="hidden">
<img src="image/speechbubble4/1.gif" id="1" class="hidden">
<img src="image/speechbubble4/2.gif" id="2" class="hidden">
<img src="image/gf2.png" id="gf2" class="hidden">
<img src="image/jeromeHeart.png" id="jeromeHeart" class="hidden">
<img src="image/bl2.jpg" id="bg2" class="hidden">
<audio id="audio" ontrols loop style="display: none; width: 1px;">
	<source
		src="audio/A Sky Full of Stars (8 Bit Remix Cover Version) [Tribute to Coldplay] - 8 Bit Universe.mp3"
		type="audio/mpeg"></audio>

<script>
var buttonClick = 0;
function turnTheLights(){
	if(buttonClick == 0){
		document.getElementById('gf').className='animated fadeIn pos';
		setTimeout(function(){document.getElementById('1').className='bubble'}, 1000);
		document.getElementById('click').className='hidden';
		document.getElementById('click2').className='btn btn-1 btn-1a animated infinite pulse';
		document.getElementById('audio').play()
		buttonClick++;
	}
	else if(buttonClick == 1){
		document.getElementById('click2').className='hidden';
		
		document.getElementById('bg').className='animated fadeOut';
		setTimeout(function(){document.getElementById('bg').className='hidden'}, 1000);
		setTimeout(function(){document.getElementById('1').className='hidden'}, 1000);
		setTimeout(function(){document.getElementById('gf').className='hidden'}, 1000);
		setTimeout(function(){document.getElementById('gf2').className='pos'}, 1000);
		setTimeout(function(){document.getElementById('jeromeHeart').className='bottom animated fadeInLeft'}, 2100);
		setTimeout(function(){document.getElementById('2').className='bubble2'}, 3000);

		
		
	}
	
}
</script>
</body>
</html>