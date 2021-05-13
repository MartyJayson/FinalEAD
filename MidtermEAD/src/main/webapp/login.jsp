<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 08.02.2021
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="login">
<h1>Login to personal account</h1>
    <%
        String passError = request.getParameter("passwordError");
        if(passError!=null){
    %>
        <div class="Error">
            Incorrect password
        </div>
    <%
        }
    %>
    <%
    String nameError = request.getParameter("usernameError");
    if(nameError!=null){
    %>
    <div class="Error">
        Incorrect username
    </div>
    <%
        }
    %>
    <form action="/auth" method="post">
    Name:<input type="text" required name="username"/><br/>
    Password:<input type="password" required name="password"/><br/>
        <button>Login to personal account</button>
    <input type="checkbox"> Remember
</form>
</div>
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
