<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Sign up</title>

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



<form action = "enterUser" method = "post">
 <label for="fname">Name</label>
    <input type="text" id="fname" name="name" placeholder="Your name..">

 <label for="fage">Your age</label>
    <input type="text" id="fage" name="age" placeholder="Your age..">


 <label for="femail">Your email</label>
    <input type="text" id="femail" name="email" placeholder="Your email..">

 <label for="fnum">Mobile Number</label>
    <input type="text" id="fnum" name="mobile" placeholder="Your phone number..">

 <label for="funame">Username</label>
    <input type="text" id="funame" name="username" placeholder="Your username..">

 <label for="fpass">Password</label>
    <input type="text" id="fpass" name="password" placeholder="choose your password..">


<input type = "submit" value = "Submit"><br>



</form>



</body>

</html>