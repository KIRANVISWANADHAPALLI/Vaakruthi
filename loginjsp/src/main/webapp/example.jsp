<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>using implicit objects</title>
</head>
<body>
	Hello,<b><br><%=request.getParameter("name") %></br><br/>
Your Request Details are<br/><br/>
<table border="1">
<tr><th>Name</th><th>Value</th></tr>
<tr><td>request method</td>
<td><%=request.getMethod() %></td></tr>
<tr><td>request URI</td>
<td><%=request.getRequestURI() %></td></tr>
<tr><td>request Protocol</td>
<td><%= request.getProtocol()%></td></tr>



	</table>

</body>
</html>