<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Story</title>
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
		<img id="backgroundImg" src="primary_background_img.png" alt="primary_background_img">

	</div>
<h2>Add Story</h2>
	<div><p>however you overcame your struggles can help lift another person out of their own!</p></div>
	<div>
		<form:form action="/stories/new" method="post" modelAttribute="story">
				<form:input type="hidden" path="creator" value="${user_id}" />
					<div>My success story:</div>
				<p>
					
					<form:textarea path="storyDescription" placeholder="Enter text here!" rows = "5"  cols ="50"/>
					<form:errors path="storyDescription" />
				</p>

				<button>Create</button>
			</form:form>
	 </div>

</body>
</html>