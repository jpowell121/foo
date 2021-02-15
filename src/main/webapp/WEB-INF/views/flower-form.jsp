<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Add Flower</h1>
	<form action="/submit-add-flower">
		<p>
			<label>Name</label> <input name="name" />
		</p>
		<p>
			<label>Color</label> <input name="color" />
		</p>
		<p>
			<button type="submit">Submit</button>
		</p>
	</form>

</body>
</html>