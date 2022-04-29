<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
<title>Success Stories</title>
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
		<div id="successTitle"> 	
			<p> Success Stories</p>
		</div>
		<div id="successStories">
			<div id="storyCol1">
				<a href="/stories/new">Create your own Story</a>
				<div id="mustBeLoggedIn">
					<p>(must be logged in)</p>
				</div>
			</div>
			<div id="storyCol2">
					<c:forEach var="story" items="${stories}">
					<div id="storyEdit">
						<div id="storyAuthor">
							<div>
			      			"<c:out value="${story.storyDescription}"/>" 
			      			<br>
			  				</div>
			  				<br>
			      			<div id="author">
			      			- <c:out value="${story.creator.firstName}"/>
			      			</div>
		      				<br> 
		      			</div>
		      			<div id="edit">
		      				<c:if test="${story.getCreator().getId()==loggedInUser.id}">
							<a href="/stories/${ story.getId() }/edit">edit/delete</a>
							</c:if>   
							<br>
						</div>	
					</div>
					</c:forEach>
					<br>
	  		</div>
	  	</div>
		
		
  
  
  	</div>
</body>
</html>