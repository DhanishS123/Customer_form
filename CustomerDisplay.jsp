<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 20px;
}

h1 {
	color: #333; /* Text color */
	text-align: center;
	font-size: 2em; /* Font size */
	margin-bottom: 20px; /* Bottom margin */
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
	border: 1px solid #ddd;
}

/* Style for table headers */
th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

/* Style for alternating row colors */
tr:nth-child(even) {
	background-color: #f9f9f9;
}
/* Styling the anchor tag to look like a button */
.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
}

/* Hover effect */
.button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<h1>CUSTOMER DETAILS</h1>

	<%
	ResultSet resultSet = (ResultSet) session.getAttribute("resultSet");
	%>

	<table>
		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Email</th>
			<th>Mobile</th>
		</tr>

		<%
		while (resultSet.next()) {
		%>
		<tr>
			<td>
				<%
				out.println(resultSet.getString("name"));
				%>
			</td>
			<td>
				<%
				out.println(resultSet.getString("address"));
				%>
			</td>
			<td>
				<%
				out.println(resultSet.getString("email"));
				%>
			</td>
			<td>
				<%
				out.println(resultSet.getString("mobile"));
				%>
			</td>

		</tr>
		<%
		}
		%>
	</table>
	<a class="button" href="CustomerSearch.jsp">Search Customer</a>

</body>
</html>