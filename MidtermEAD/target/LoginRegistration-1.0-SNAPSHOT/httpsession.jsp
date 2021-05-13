<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 22.02.2021
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HttpSession Example</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<form action="httpsession">
    Name:<input type="text" name="userName"/><br/>
    <input type="submit" value="go"/>
</form>
</body>
</html>
