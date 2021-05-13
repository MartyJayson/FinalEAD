<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 13.05.2021
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vacancies</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<%@include file="navbar.jsp"%>
<h1><%=(anything?vacancy.getvName():"NO VACANCY")%></h1>
<table border="1">
    <tr><td>Vacancy: </td><td> <%= (anything?vacancy.getvName():"NO DATA") %></td></tr>
    <tr><td>Description: </td><td> <%= (anything?vacancy.getvDecription():"NO DATA") %></td></tr>
    <tr><td>Data: </td><td> <%= (anything?vacancy.getvData():"NO DATA") %></td></tr>
    <tr><td>Company: </td><td> <%= (anything?vacancy.getvCompany():"NO DATA") %></td></tr>
</table>
</body>
</html>
