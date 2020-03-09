<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Home Page</title>
</head>
<body>
<center>
Hello

${msg}
</center>

<a href ="${pageContext.request.contextPath}/login"> LOGIN HERE  </a>


</body>
</html>