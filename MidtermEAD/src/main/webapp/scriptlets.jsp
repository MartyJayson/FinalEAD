<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 02.04.2021
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title> Examples of Scriptlets </title>
</head>
<body>
<h3>
    Hello World of Java
</h3>
<%@include file="navbar.jsp"%>
<%-- This is comment --%>
<%! int thisIsCounter = 0; boolean thisIsStatement = false; %>
<%
    if(thisIsCounter == 0) {
        thisIsStatement = true;
        out.println("thisIsStatement = true\n");
    }
%>
thisIsExpression = <%= thisIsCounter++ %>
//<jsp:forward page="pagedirective.jsp"><jsp:param name="name" value="javatpoint.com" /></jsp:forward>
<jsp:include page = "logout.jsp" flush = "true" />
</body>
</html>