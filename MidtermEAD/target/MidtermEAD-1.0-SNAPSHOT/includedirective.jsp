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
    <title>Title</title>
</head>
<body>
<%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %>
<%@include file="navbar.jsp"%>
<mytag:currentDate/>

<jsp:forward page="logout.jsp" />
</body>
</html>
