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
<%@include file="navbar.jsp"%>
<form action="httpsession">
    Name:<input type="text" name="userName"/><br/>
    <input type="submit" value="go"/>
</form>
</body>
<footer>
    <div class="footer-color">
        <ul>
            <li><b>HeadHunter</b></li>
            <li>Our vacancies</li>
            <li>Advertising on the website</li>
            <li>Software Requirements</li>
            <li>Personal Data Protection</li>
            <li>Investors</li>
        </ul>
        <ul>
            <li><b>Services for applicants</b></li>
            <li>Promote the resume</li>
            <li>Automatically moving up in search results</li>
            <li>I would like to work at your company</li>
        </ul>
        <ul>
            <li>Help</li>
            <li>Catalogue of companies</li>
            <li>Jobs by professions</li>
        </ul>
    </div>
</footer>
</html>
