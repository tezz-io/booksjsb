<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book v1</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<h2>Update Book</h2>

<c:url var="updateBookUrl" value="/v1/book/updateBook"/>
<form:form action="${updateBookUrl}" method="post" modelAttribute="book">
<form:input type="hidden" path="isbn" value="${book.isbn}"/>
<table>
<tr>
<td><form:label path="isbn">ISBN: </form:label></td>
<td><form:label path="isbn">${book.isbn}</form:label></td>
</tr>
<tr>	
<td><form:label path="name">Name: </form:label></td>
<td><form:input type="text" path="name"/></td>
</tr>
<tr>
<td><form:label path="author">Author: </form:label></td>
<td><form:input type="text" path="author"/></td>
</tr>
</table>
<input type="submit" value="update"/>
</form:form>

</body>
</html>