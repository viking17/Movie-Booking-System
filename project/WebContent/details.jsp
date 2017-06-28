<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,java.util.concurrent.ThreadLocalRandom , java.io.IOException, java.io.PrintWriter,java.sql.Connection, java.sql.DriverManager,java.sql.PreparedStatement,java.sql.SQLException, java.sql.Statement,javax.servlet.ServletException,java.sql.ResultSet,
javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your booking history</title>
</head>
<style> 
div {
    border: 2px solid;
    padding: 20px; 
    width: 300px;
    resize: both;
    overflow: auto;
}
</style>
<body>

<%

String u_n = request.getParameter("name");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieBooking?autoReconnect=true&useSSL=false","root","password");

PreparedStatement stmt=con.prepareStatement("SELECT * FROM details where name='"+u_n+"'");
ResultSet rs=stmt.executeQuery(); 

while (rs.next()) {
%>
<p><em><font color="#5b76a0"><strong><font color="#5b76a0" size="5" face="Georgia, Times New Roman, Times, serif">
<% 
    out.println(rs.getString(1));
    out.println(rs.getString(2));
    out.println(rs.getString(3));
    out.println(rs.getString(4));
}


%>
</font></strong></font></em>
</p>

</body>
</html>