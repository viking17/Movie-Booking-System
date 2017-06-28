<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


<title>Login</title>
  <script language="javascript" type="text/javascript">
  function fun_val()
  	{
  		var l=document.loginsell.username.value;
  		if(l=="")
  		{
  			alert("Please Enter User name");
  			document.loginsell.username.focus;
  			return false;
  		}

  		var p=document.loginsell.password.value;
  		if(p=="")
  		{
  			alert("Please Enter Password");
  			document.loginsell.password.focus;
  			return false;
  		}
  	}
  </script>
  
</head>
<style>
form {
    border: 3px solid #f1f1f1;
}
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
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



<form action="loginEnter" method = "post">

  <table font-family = "Georgia" class = "table" width="500" height="550"  align="center" cellpadding="1"cellspacing="1" border="5">
    <tr>
      <td height="41" colspan="2" align="center"><h2><b>Login Form</b></h2></td>
    </tr>
    <tr>
      <td width="170" height="40"  align="center"><b>User Name</b></td>
      <td width="213">
         <input type="text" name="username" style="background" />
      </font></td>
    </tr>
    <tr>
      <td height="38" align="center"><b>Password</b></td>
      <td>
        <input type="password" name="password" maxlength="8">
        </font></td>
    </tr>
    <br />
    <tr>
      <td height="48" colspan="2" align="center">
        <input type="submit"  value="Submit" name="ok" onClick="return fun_val();"/>

        <a href = "newUser.jsp">
        <br/><br />New User?</a></font></td>
    </tr>
  </table>
</form>
</body>
</html>