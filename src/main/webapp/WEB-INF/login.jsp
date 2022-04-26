<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>


<body>
	<div class="container flex">
	session:
	${session}
		<p class="fs-1 text-warning bg-dark text-center">Welcome</p>
		<div style="display: flex">
			<form:form class="w-50 p-3 d-inline-block" method="POST"
				action="/register" modelAttribute="newUser">
				<p class="fs-3">Register</p>

				<div class="form-group ">
					<label for="username">User Name</label>
					<form:input path="username" type="text" class="form-control" />
					<form:errors class="text-danger" path="username" />
				</div>

				<div class="form-group ">
					<label for="email">Email address</label>
					<form:input path="email" type="email" class="form-control" />
					<form:errors class="text-danger" path="email" />
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<form:input type="password" path="password" class="form-control" />
					<form:errors class="text-danger" path="password" />
				</div>

				<div class="form-group">
					<label for="confirm">Confirm password</label>
					<form:input type="password" path="confirm" class="form-control" />
					<form:errors class="text-danger" path="confirm" />
				</div>

				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>

			<!-- add modelAttribute="login" -->
			<form:form class="w-50 p-3 inline-block" method="POST"
				action="/login" modelAttribute="newLogin">
				<p class="fs-3">Login</p>
				<div class="form-group ">
					<label for="email">Email address</label>
					<form:input path="email" type="email" class="form-control" />
					<form:errors class="text-danger" path="email" />
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<form:input type="password" path="password" class="form-control" />
					<form:errors class="text-danger" path="password" />
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>


	</div>
</body>
</html>