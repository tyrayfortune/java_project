<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/static/style.css" rel="stylesheet" type="text/css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
<title>dashboard</title>
</head>
<body>
	<div id="container">
		<div id="titleNavBar">	
			<div id="title">
				<h1><a href="/">Veterans Mental Health Resource</a></h1>
			</div>
			<div id="navBar">
				<div id="hotline">
					<h2>24/7 SUPPORT HOTLINE PHONE NUMBER 1-800-342-9647</h2>
					<a href="/login">Login / Register</a>
					<a href="/logout">Logout</a>
				</div>
				<div id="quickLinks">
					<a href="/resources">Family Resource</a>
					<a href="">PTSD Resources</a>
					<a href="/stories">Success Stories</a>
					<a href="">Chat Room</a>
					<a href="">Events Page</a>
				</div>
			</div>
		</div>
		<img class="backgroundImg" src="/primary_background_img.png" alt="primary_background_img">
		<div id="resourceRow">	
			<div id="firstSecondResource">	
				<div id="firstResource">
					<a href="/resources">Family Resource</a>
					<img id="familyPhoto" src="family_photo.jpeg" alt="family_photo">
					<p>The burden of life becomes much heavier when there is no one around to appreciate how heavy the burden is. Be proactive by accepting help.
				</div><!-- 
				<div id="secondResource">
					<a href="">PTSD Resource</a>
					<img id="ptsdPhoto" src="ptsd.jpeg" alt="ptsd_photo">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
					sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
					Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
					culpa qui officia deserunt mollit anim id est laborum.
				</div> -->
			</div>	
 			<div id="thirdResource">
				<!-- <p>Local Services</p> -->
				<a href="https://psychiatry.org/patients-families/ptsd" target="_blank">PTSD Resource</a>
				<br>
				<img id="ptsdPhoto" src="ptsd.jpeg" alt="ptsd_photo">
				<p>About 11 to 20% of veterans of the Iraq and Afghanistan wars (Operation Iraqi Freedom and Operation Enduring Freedom) have been diagnosed with PTSD. 20% of people who claim to experience a traumatic event will develop PTSD in their lifetime.
			</div>
		</div>		
	</div>
</body>
</html>