<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration page</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
String username = request.getParameter("name");
String password = request.getParameter("pword");
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "SYSTEM", "Kiran");
	PreparedStatement ps = con.prepareStatement("insert into REG4 values(?,?,?)");
	ps.setInt(1, id);
	ps.setString(2,username);
	ps.setString(3,password);
	int result = ps.executeUpdate();
	if (result > 0) {
		out.println("Data inserted successfully!");
		//response.sendRedirect("login.html");
	} else {
		out.println("Failed to insert data!");
	}
	con.close();
	
	
}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>