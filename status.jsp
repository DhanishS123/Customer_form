<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  #butt {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: flex;
            margin-left:36%;
            margin-top: 10px;
            
        }
        
          #butt:hover {
            background-color: #45a049;
        }
         .form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
                 h1 {
            color: #333;
            font-size:27px;
            text-align:center;
        }
</style>
</head>
<body>
<form class="form" action="customerForm.jsp"><%
	boolean status = (Boolean) session.getAttribute("status");
	

	if(status=true){%>
		<h1><%out.println("The record entered successfully ");%></h1>
	<% }else if(status=false){%>
		<h1><%out.println("The record was not entered"); %></h1>
	<%}
	
	%>
	<button type="submit" id="butt" value="submit">Enter new customer</button></form>
	
</body>
</html>



