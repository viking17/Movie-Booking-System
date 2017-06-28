<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,java.util.concurrent.ThreadLocalRandom , java.io.IOException, java.io.PrintWriter,java.sql.Connection, java.sql.DriverManager,java.sql.PreparedStatement,java.sql.SQLException, java.sql.Statement,javax.servlet.ServletException,java.sql.ResultSet,
javax.servlet.annotation.WebServlet,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirm booking</title>

	<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<style>
h1 {
    color: blue;
    font-family: verdana;
    font-size: 150%;
}
h2 {
    color: green;
    font-family: verdana;
    font-size: 100%;
}
</style>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="home.jsp">BookYourTicket</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href=home.jsp>Home</a></li>
	        <li><a href=search.jsp>Showing Now</a></li>
					<li><a href=aboutus.jsp>About Us</a></li>
					
	      </ul>
				<ul class="nav navbar-nav navbar-right">
		<li><a href="feedback.jsp">Feedback</a></li>        
		<li><a href="details.jsp?name=<%= request.getParameter("final_name") %>">Booking History</a></li>
	      </ul>


      </ul>
	    </div>
	  </div>
	</nav>
<h1><%

String time=request.getParameter("time");

String pr = request.getParameter("Price");
int price = Integer.parseInt(pr);

String seat = request.getParameter("Seats");
int seats = Integer.parseInt(seat);

out.println("Ticket Details :");%></h1>
<br>
<h2>
<% 
out.print("seat number : ");
%></h2>
<% 
HashSet hset = new HashSet();
for(int i = seats ; i >0 ; i--)
{
	int randomNum = ThreadLocalRandom.current().nextInt(1, 80);
	
	
	if(!hset.contains(randomNum))
	{
%>
<h2><%
		out.print(randomNum+" ");
		hset.add(randomNum);
	}
	else
	{
		i++;
	}
}
%></h2>
<br>
<h2>
<%

out.println("Timing : "+time);
%>
</h2>
<%
int cost = 0;
cost = price * seats;
%>
<br>
<h2>
<%

out.println("Total Cost = "+cost);

%>
</h2>
<%

String u_n=request.getParameter("final_movie");
String name=request.getParameter("final_name");
String date=request.getParameter("date");
String seats1 =request.getParameter("Seats");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieBooking?autoReconnect=true&useSSL=false","root","password");

PreparedStatement st = con.prepareStatement("insert into details (movie,date,name,cost) values (?,?,?,?);");
//now you bind the data to your parameters
st.setString(1,u_n );
st.setString(2,date );
st.setString(3,name );
st.setString(4,seats1 );

//and then you can execute it
st.executeUpdate();

%>


</body>
</html>