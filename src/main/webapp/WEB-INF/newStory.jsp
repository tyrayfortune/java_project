<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Add Story</title>
</head>
<body>
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