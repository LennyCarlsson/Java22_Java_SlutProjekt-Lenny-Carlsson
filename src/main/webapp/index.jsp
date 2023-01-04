<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>See the Weather in any city</title>

<style>
.wrapper {
	display: grid;
	grid-template-columns: 70% 30%;
	grid-column-gap: 1em;
}

.wrapper>div {
	background: #eee;
	padding: 1em;
}

.wrapper>div :nth-child(odd) {
	background: #ddd;
	padding: 1em;
}

form {
	font-size: 20px;
	width: 500px;
	margin: 0 auto;
	text-align: center;
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
}

input[type="text"] {
	width: 60%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-weight: bold;
}

input[type="submit"] {
	width: 20%;
	background-color: #4CAF50;
	color: black;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-family: Arial, sans-serif;
	font-weight: bold;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.centered {
	text-align: center;
	font-family: Arial, sans-serif;
}

.left {
	text-align: left;
	font-family: Arial, sans-serif;
}

.cookie {
	font-family: Arial, sans-serif;
	font-size: 18px;
	width: 500px;
	margin: 0 auto;
}
</style>

</head>
<body>

	<div class="wrapper">

		<div>

			<h4 class="centered">Search for the current weather in a city:</h4>


			<form action="WaetherServlet" method="get">
				City:<input type="text" name="city" /><br /> Country:<input
					type="text" name="country" /><br /> <input type="submit"
					value="Search" />
			</form>
			<br /> <br />

		</div>

		<div>

			<%
			Cookie cookie = null;
			Cookie[] cookies = null;

			// Get an array of Cookies associated with the this domain
			cookies = request.getCookies();

			if (cookies != null) {

				out.println("<h4 class=\"left\">Previously searched city: </h4>");

				out.println("<div class=\"cookie\">");

				for (int i = 1; i < cookies.length; i++) {
					cookie = cookies[i];

					out.print(cookie.getName() + ":  ");
					out.print(cookie.getValue() + " <br/>");

				}
				out.println("</div>");
			} else {
				out.println("No cookies founds");
			}
			%>

		</div>

	</div>




</body>

</html>