<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<script>
function validateform1()
{
	var un=document.getElementById("un").value;
	var pwd=document.getElementById("pwd").value;
	if(un=="")
	{
		alert("Enter UserName");
		return false;
	}
	if(pwd=="")
	{
		alert("Enter Password");
		return false;
	}
	return true;
}
</script>

</head>
<body>

<form name="form1" onsubmit="return validateform1(this)" action="Login_Validation" method="post" id="f1">
<br>UserName:<br><input type="text" name="username" id="un"/>
<br>Password:<br><input type="password" name="password" id="pwd"/>
<br><br><input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>

</body>
</html>