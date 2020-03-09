<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit the PRODUCT DETAILS</title>
</head>
<body>
<h1> EDIT PRODUCT DETAILS</h1>

<form:form action="save" method="post" modelAttribute="product">
<table>

<tr>
<td>
Product ID :
</td>
<td>${product.pid}  <form:hidden path="pid"/> </td>
</tr>
<tr>
<td>
Product Name :
</td>
<td><form:input path="pname" /></td></td>
</tr>

<tr>
<td>
Product Brand :
</td>
<td><form:input path="brand" /></td></td>
</tr>

<tr>
<td>
Product price :
</td>
<td><form:input path="price" /></td></td>
</tr>
<tr>
<td>
Product Make :
</td>
<td><form:input path="madein" /></td></td>
</tr>
</table>


<input type="submit" value="save" name="save"/>
 </form:form>

</body>
</html>