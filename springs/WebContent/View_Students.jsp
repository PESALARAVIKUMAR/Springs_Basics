<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Students</title>
</head>
<body>

<h1>View Students</h1>
<table>
<tr><th>Name</th><th>Email</th><th>Contact</th><th>Edit</th><th>Delete</th></tr>
<c:forEach var="s" items="${ list }">
<tr>
<td>${ s.name }</td>
<td>${ s.email }</td>
<td>${ s.contact }</td>
<td><a href="Edit_Student/${ s.email }">Edit</a></td>
<td><a href="Delete_Student/${ s.email }">Delete</a></td>
</c:forEach>
</table>
<br>
<a href="Add_Student"><button>Add New Student</button></a>

</body>
</html>