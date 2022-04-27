<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Success Stories</title>
</head>
<body>
  <h1> Success Stories</h1>
  	<div>
  		<a href="/stories/new">Create your own Story</a>
  		<p>(must be logged in)</p>
  	</div>
  	<div>
  	<a href="/logout">Logout</a>
  	</div>
  
  	<table>
  	  <tbody>
  	  	<c:forEach var="story" items="${stories}">
    		<tr>
      			<td>Commented by: <c:out value="${story.creator.firstName}"/> <textarea rows = "6"  cols ="100"><c:out value="${story.storyDescription}"/></textarea></td>
    		</tr>
		</c:forEach>
  	</tbody>
  	
  	</table>
  		
		
		
  
  
  
</body>
</html>