<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        .form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #butt {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #butt:hover {
            background-color: #45a049;
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
<form class="form" action="CustomerSearchServlet">
	<h1>ENTER A NAME TO SEARCH</h1>
	<label>NAME</label>
	<input type="text" placeholder="Customer Name" name="customerName" required><br><br>
	<button type="submit" id="butt" value="submit">SEARCH</button>
	<a class="button" href="customerForm.jsp">Enter new customer</a>
	</form>
</body>
</html>