<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.io.IOException, java.io.PrintWriter,java.sql.Connection, java.sql.DriverManager,java.sql.PreparedStatement,java.sql.SQLException, java.sql.Statement,javax.servlet.ServletException,java.sql.ResultSet,
javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Enter booking details</title>
</head>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
p {
    border: 5px solid powderblue;
    margin: 50px;
    padding: 35px;
    font-size: 250%;
    font-color: green;
}
input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<body>
<%

String u_n=request.getParameter("movies");
ResultSet rs=null;
//String pr = request.getParameter("price");
//int price = Integer.parseInt(pr);
//out.println("Hello "+u_n);

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieBooking?autoReconnect=true&useSSL=false","root","password");
	
	PreparedStatement stmt=con.prepareStatement("SELECT * FROM timing where name='"+u_n+"'");
    rs=stmt.executeQuery(); 
   
 
	
    
    
} catch (SQLException e) {
	// TODO Auto-generated catch block
	out.println("sql connection not done");
	e.printStackTrace();
} catch (ClassNotFoundException e) {
	out.println("class driver file");
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>
<p>
<%
    if (rs.next()) {
         out.println(rs.getString(1));
        out.println(rs.getString(2));
       // out.println(rs.getString(3));
    }
 %></p>
<h1> Confirm Booking</h1><br><br>
<form action = "final.jsp" method = "post">

Name:<input type = "text" name = "final_name">
Movie:<input type = "text" name = "final_movie">
Date:<input type = "text" name ="date">

Timing:<input type = "text" name = "time">
<select name = "Price">
    <option value="150">Standard(Rs150)</option>
    <option value="250">Platinum(Rs250)</option>
  </select>
  
  
  <select name = "Seats">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
  </select>
  <input type="submit" value="Submit">

</form>
</body>
</html>