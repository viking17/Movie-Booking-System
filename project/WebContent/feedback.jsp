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
<title>feedback form</title>
<script language="javascript">
function validate()
{

	if(signup.name.value=='')
	{
		alert("Please enter your name");
		signup.name.focus();
		return false;
	}
	if(signup.mno.value=='')
	{
		alert("Please enter your address");
		signup.mno.focus();
		return false;
	}
	if(signup.email.value=='')
	{
		alert("Please enter your email");
		signup.email.focus();
		return false;
	}
	if(signup.date.value=='')
	{
		alert("Please enter your city");
		signup.date.focus();
		return false;
	}

	if(signup.ymsg.value=='')
	{
		alert("Please enter your password");
		signup.ymsg.focus();
		return false;
	}
}
function checkemail(obj)
{
	var emailAddressEntered = obj.value;
	if ((emailAddressEntered.indexOf('@') < 1) || (emailAddressEntered.lastIndexOf('.') < (emailAddressEntered.indexOf('@') + 2)) || (emailAddressEntered.indexOf('\'') > -1) || (emailAddressEntered.indexOf('"') > -1) ) {

		var msg;
		msg = "enter the valid email address..!"
		alert(msg);
		obj.value = ""
		}
}
</script>
<style type="text/css">
<!--
.style3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
}
.style4 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-style: italic;
	color: #C60063;
}
.style6 {font-family: Georgia, "Times New Roman", Times, serif; font-style: italic; color: #99FF66; }
.style10 {font-size: 5}
-->
</style>
<?php
 include "index6.php";
?>
<style>
body{ background-image : url("feedback.jpg");
      background-size : cover;
}
.table{
  width: 25%;
}
input[type=text],
        input[type=password] ,input[type=time],textarea{
            color: #777;
            padding-left: 10px;
            margin: 10px;
            margin-top: 12px;
            margin-left: 18px;
            width: 290px;
            height: 35px;
            border: 1px solid #c7d0d2;
            border-radius: 2px;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            transition: all .4s ease;
            }
        input[type=text]:hover,
        input[type=password]:hover,input[type=time]:hover {
            border: 1px solid #b6bfc0;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
        }
        input[type=text]:focus,
        input[type=password]:focus,input[type=time]:focus {
            border: 1px solid #a8c9e4;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
        }
input[type=submit],input[type=reset],input[type=button]{
            float:center;
            margin-rightinput[type=text],
        input[type=password] ,input[type=time]{
            color: #777;
            padding-left: 10px;
            margin: 10px;
            margin-top: 12px;
            margin-left: 18px;
            width: 290px;
            height: 35px;
            border: 1px solid #c7d0d2;
            border-radius: 2px;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            transition: all .4s ease;
            }
        input[type=text]:hover,
        input[type=password]:hover,input[type=time]:hover {
            border: 1px solid #b6bfc0;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
        }
        input[type=text]:focus,
        input[type=password]:focus,input[type=time]:focus {
            border: 1px solid #a8c9e4;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
        }: 20px;
            margin-top: 20px;
            width: 80px;
            height: 30px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #acd6ef; /*IE fallback*/
            background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
            background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
            background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
            border-radius: 30px;
            border: 1px solid #66add6;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
            cursor: pointer;
        }
        input[type=submit]:hover,input[type=reset]:hover {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
            background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
            background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
        }
        input[type=submit]:active,input[type=reset]:hover {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8), to(#b6e2ff));
            background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
            background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
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
</head>
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
		<li><a href="login.jsp">Login</a></li>
	      </ul>


      </ul>
	    </div>
	  </div>
	</nav>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<TR></tr>
<form action="feedback_insert.jsp" method="post" name="feedback"><TR></tr>
<br />

<table  class = "table" align="center" width="500" height="400" border="5" cellspacing="1" cellpadding="1">

	<tr>
		<th align=left>Full Name   </th>
		<td colspan=4><input type=text name=txtname size=50></td>
	</tr>
	<tr>
		<th align=left>Telephone   </th>
		<td colspan=4><input type="text" name="txtnumber" size=15 ></td>
	</tr>
	<tr>
		<th align=left>Email   </th>
		<td colspan=4><input type="text" name="txtemail" size=50></td>
	</tr>
	
	<tr>
		<th align=left valign=top>Feedback   </th>
		<td colspan=4><textarea name=txtfeedback rows=5 cols=40></textarea></td>
	</tr>
</table>
<br />

	<div align="center"><input class="button" type="submit" value="Submit" name="ok" align="right" />
	<input name="reset" type="reset" value="Cancel"/>
</div>
</form>
</body>
</html>