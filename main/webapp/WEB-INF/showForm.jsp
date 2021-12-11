<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>O Form Display</title>
</head>

<body class=""> 
    <h1>Here's Your Fortune</h1> 
    <div class=""> 

    	<h2>In <c:out value="${displayNumber}"/> years you will live in <c:out value="${displayCity}"/> with <c:out value="${displayPerson}"/> as your roommy, <c:out value="${displayHobby}"/> for a living. The next time you see a <c:out value="${displayAnimal}"/>, you will have good luck. <c:out value="${showCompliment}"/></h2>
    </div>
    <p class=""><a href="/form">Go Back</a></p>
</body>
</html> 