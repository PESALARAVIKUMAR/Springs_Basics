<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>

<script>
function validateform1()
{
	var name=document.getElementById("name").value;
	var email=document.getElementById("email").value;
	var contact=document.getElementById("contact").value;
	if(name=="")
	{
		alert("Enter Name");
		return false;
	}
	if(email=="")
	{
		alert("Enter Email");
		return false;
	}
	if(contact=="")
	{
		alert("Enter Contact");
		return false;
	}
	return true;
}
</script>

</head>
<body>
<br>
<br>
<a href="Home_Page.jsp"><button>H0ME</button></a>
<a href="View_Students.jsp"><button>View Students</button></a>

<h2>Add Student</h2>
<form name="addstudent" onsubmit="return validateform1(this)" action="Save_Student" method="post">
<br>Name:<br><input type="text" name="name" id="name"><br>
<br>Email:<br><input type="email" name="email" id="email"><br>
<br>Contact:<br><input type="text" name="contact" id="contact"><br>
<br><br><input type="submit" value="Submit"><input type="reset" value="Reset">
</form>

</body>
</html>