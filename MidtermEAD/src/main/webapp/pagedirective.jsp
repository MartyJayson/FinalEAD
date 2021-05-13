<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 01.04.2021
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page directive</title>
</head>
<body><%@include file="navbar.jsp"%>
<h1>Page directive</h1>
<%@ page import="java.util.Date" %>
Today is: <%= new Date() %>

</body>
</html>
