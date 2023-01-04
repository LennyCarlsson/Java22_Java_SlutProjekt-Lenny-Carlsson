<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@page import="model.WeatherBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show the current weather</title>
</head>
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

.weather-report {
	font-size: 1.6em;
	font-weight: bold;
	color: black;
	text-align: left;
	
}
</style>
<body>

	<div class="wrapper">


		<div>

			<%
			WeatherBean wBean = (WeatherBean) request.getAttribute("wBean");
			out.println("<div class='weather-report'>The current weather in " + wBean.getCityStr() + " is now as follows: </div>");
			%>
			<br><br>
			<%
			out.println("The Last weather update is from: " + wBean.getLastDateUpdate());
			%>

			<br><br>
			<%
			out.println("The Clouds are " + wBean.getCloudsStr());
			%>
			<br><br>
			
			<%
			out.println("The temperature in celsius is " + wBean.getLastCelciusTemp()+", ");
			%>
			<br><br>
			<%
			out.println("and the the temperature in Kelvin is " + wBean.getLastTemp());
			%>

		</div>

		<div style="vertical-align: top; text-align: left;">
			<br /> <br /> <a href="index.jsp" style="text-decoration: none;">Search the weather in another city</a> <br /> <br />
		</div>
	
	</div>
</body>
</html>