<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>O Form</title>
</head>

<body>

	<h1>Send an O Form</h1>
	
	<form action="/send" method="post" >
		
		<div>
		<label> Pick from 9 to 29: </label>
		<input type="number" min="9" max="29" name="number" >
		</div>
		<div>
		<label> Enter a random city: </label>
		<input type="text" name="city"  >
		</div>
		<div>
		<label> Enter random person name: </label>
		<input  type="text" name="personName" >
		</div>
		<div>
		<label> Add a hobby or job: </label>
		<input  type="text" name="job" >
		</div>
		<div>
		<label> Add an animal or plant </label>
		<input  type="text" name="animal" >
		</div>
		<div>
		<label> Add a compliment </label>
		<input type="text" name="compliment" >
		</div>
		<div>
		<label> Send to a friend </label>
		<button> Submit </button>
		</div>
	
	
	</form>

</body>
</html>