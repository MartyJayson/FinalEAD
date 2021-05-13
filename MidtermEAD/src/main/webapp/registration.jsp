<%--
  Created by IntelliJ IDEA.
  User: mrers
  Date: 08.02.2021
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="page">
    <h1>Job seeker registration</h1>
    <%
        String success = request.getParameter("success");
        if(success!=null){
    %>
    <div class="alert">
        User added successfully!
    </div>
    <%
        }
    %>
<form action="/toregister" method="post">
<label>
    Name:
</label>
<input type="text" name="username" placeholder="Obi Van"><br>
<label>
    Surname:
</label>
<input type="text" name="surname" placeholder="Kenobi"><br>
<label>
    Date of birth:
</label>
<input type="date" name="birthday"><br>
<input type="radio" id="male" name="gender" value="male">
<label for="male">Male</label><br>
<input type="radio" id="female" name="gender" value="female">
<label for="female">Female</label><br>
<label>
    Password:
</label>
<input type="password" name="password" placeholder="Password">
<input type="password" name="password2" placeholder="Verify you password">
<button>Sign Up</button>
</form>
    <label><a href="login.jsp">Already have an account?</a></label>
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
