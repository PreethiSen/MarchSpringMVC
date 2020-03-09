<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW PRODUCT</title>
</head>
<body>
<form:form action ="save" method="post" modelAttribute="product"> 
<table border="0" cellpadding="5" >
<tr>
<td>
Enter the product Name :</td>
<td>
 <form:input path="pname" />
</td>
</tr>


<tr>
<td>
Enter the product brand :</td>
<td>
 <form:input path="brand" />
</td>
</tr>



<tr>
<td>
Enter the product price :</td>
<td>
 <form:input path="price" />
</td>
</tr>

<tr>
<td>
Enter the product make :</td>
<td>
 <form:input path="madein" />
</td>
</tr>
</table>

<input type="submit" name ="SAVE"  value="save"/>
</form:form>


</body>
</html>