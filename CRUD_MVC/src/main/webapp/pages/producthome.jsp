<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Products Home Page</title>
</head>
<body>
<h1> The Products Available </h1>


<center><a href="${pageContext.request.contextPath}/new "> ADD NEW PRODUCT IN LIST </a></center>
<table border="1" cellpadding="5">

<thead>
<tr>

<th> Product ID </th>
<th> Name </th>
<th>  Brand</th>

<th>  Price</th>
<th> MadeIn </th>

</tr>

</thead>

<tbody>

 <c:forEach var="product" items="${productList}"   >
 <tr>
 
 <td>${product.pid}</td>
 <td>${product.pname}</td>
 <td>${product.brand}</td>
 <td>${product.price}</td>
  <td>${product.madein}</td>
  <td> <a href="${pageContext.request.contextPath}/edit?id=${product.pid}"> EDIT</a> </td>
  <td><a href="${pageContext.request.contextPath}/delete?id=${product.pid}"> DELETE</a> </td>
  
</tr>

 </c:forEach>

</tbody>
</table>


</body>
</html>