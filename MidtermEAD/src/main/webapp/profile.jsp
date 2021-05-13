<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 14.03.2021
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>MidtermEAD - Abibulla Yershat(HeadHunter)</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<%@include file="navbar.jsp"%>
<h1>Hello, <%=(ONLINE?current.getFname():"NO USER")%></h1>
<table border="1">
    <tr><td>Username: </td><td> <%= (ONLINE?current.getFname():"NO DATA") %></td></tr>
    <tr><td>Surname: </td><td><%= (ONLINE?current.getSurname():"NO DATA") %></td></tr>
    <tr><td>Birthday: </td><td><%= (ONLINE?current.getBirthday():"NO DATA") %></td></tr>
    <tr><td>Gender: </td><td><%= (ONLINE?current.getGender():"NO DATA") %></td></tr>
</table>
</body>

</html>
