<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>feedback submitted</title>
</head>
<style>
#heading h1{
  margin-top: 20px;
  margin-bottom: 60px;
  font-size: 36px;
  font-weight: 700;
  margin-left: 60px;
  margin-right: 60px;
  text-align: center;
}

#imgright{
  float: right;
  height: 300px;
  width: 350px;
  margin-left: 60px;
  margin-right: 60px;
  margin-bottom: 20px;

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
	        <li><a href=home1.jsp>Home</a></li>
	        <li><a href=search.jsp>Showing Now</a></li>
					<li><a href=aboutus.jsp>About Us</a></li>
					
	      </ul>
				<ul class="nav navbar-nav navbar-right">
		<li><a href="feedback.jsp">Feedback</a></li>        
		<li><a href="login.jsp">Login</a></li>
	      </ul>


      </ul>
	    </div>
	  </div>
	</nav>
	<br>
	<br>
	<br>
	<br>
<h1><% out.println("Feedback submitted!"); %></h1><br>
<h1><% out.println("Thankyou for your interest."); %></h1><br>
<img id="img" src="ty1.jpg" width=50% height=30% />
</body>
</html>