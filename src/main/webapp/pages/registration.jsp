<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.html" %>
</head>
<body>

<%@include file="menu.jsp" %>

<form action="/adduser">
    Imie: <input type="text" name="firstName" placeholder="Imie" value="${user.firstName}">
    <input type="text" name="lastName" value="${user.lastName}">
    <input type="text" name="email" value="${user.email}">
    <input type="submit" value="Submit">
</form>


<c:forEach items="${errors}" var="error">
    ${error.getPropertyPath()} : ${error.getMessage()}
    <br>
    <fmt:message key="${fn:substring(error.getMessageTemplate(),1 ,error.getMessageTemplate().length()-1 )}"/>
    <br>
</c:forEach>

</body>
</html>
