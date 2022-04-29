<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
<title>Login</title>

<!-- change to match your file/naming structure -->
</head>
<body>
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
		<img class="backgroundImg" src="/primary_background_img.png" alt="primary_background_img">
		<div id="resourceRow">	
			<div id="firstSecondResource">	
				<div id="registerTitle">
					<div>
						<p>Register</p>
						<br>
							<form:form action="/register" method="post" modelAttribute="newUser">
								<div id="register">
									<div>
										First Name:
										<br>
										<br>
										Last Name:
										<br>
										<br>
										Email:
										<br>
										<br>
										Password:
										<br>
										<br>
										Confirm 
										<br>
										Password:
									</div>
									<div>
										<form:input path="firstName" placeholder="First Name" />
										<form:errors path="firstName" />
										<br>
										<br>
										<form:input path="lastName" placeholder="Last Name"/>
										<form:errors path="lastName" />
										<br>
										<br>
										<form:input path="email" placeholder="Email"/>
										<form:errors path="email" />
										<br>
										<br>
										<form:input type="password" path="password" placeholder="Password"/>
										<form:errors path="password" />
										<br>
										<br>
										<form:input type="password" path="confirm" placeholder="Confirm PW" />
										<form:errors path="confirm" />
									</div>
								</div>
							<button>Register</button>
						</form:form>
					</div>
				</div>
			</div>
			<div id="thirdResource">
				<div>
					<div id="loginTitle">
						<p>Login</p>
					</div>	
					<br>
					<form:form action="/login" method="post" modelAttribute="newLogin">
					<div id="login">	
						<div>
							Email:
							<br>
							<br>
							Password:
						</div>
						<div>
							<form:input path="email" placeholder="Email" />
							<form:errors path="email" />
							<br>
							<br>
							<form:input type="password" path="password" placeholder="Password"/>
							<form:errors path="password" />
						</div>
					</div>
						<button>Login</button>
					</form:form>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>