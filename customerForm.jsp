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

        input[type="text"],
        input[type="email"],
        input[type="number"],
        select {
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
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #butt:hover {
            background-color: #45a049;
        }
        
          a {
            text-decoration: none;
            color: inherit;
        }

        /* Styling the anchor tag to look like a button */
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
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

<div class=form>
	<form action="CustomerServlet">
	<h1>ENTER YOUR DETAILS</h1>
	<label>NAME</label>
	<input type="text" placeholder="Name" name="name" required><br><br>
	<label>ADDRESS</label>
	<input type="text" placeholder="Address" name="address" required><br><br>
	<label>EMAIL</label>
	<input type="email" placeholder="Email" name="email" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required><br><br>
	<label>MOBILE NO.</label>
	<input type="number" placeholder="Please enter 10 digit Mobile number" name="mobile" pattern="[0-9]{10}" required><br><br>
	<button id="butt" type="submit" value="submit">SUBMIT</button>
	<a class="button" href="CustomerSearch.jsp">Search Customers</a>
	</form>
	</div>
</body>
</html>