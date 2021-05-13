<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Secured Page</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<% if ( request.getAttribute( "successMessage" ) != null ) { %>
<span style="background-color: lightgreen"><%=request.getAttribute( "successMessage" )%></span>
<% } %>
<h2>Servlet Security Example</h2>
<div> Servlet Basic Authentication Annotation Configuration : <span>Secured Servlet</span></div>
<div>
    <ul>
        <li>User Name Is : <span><%=request.getUserPrincipal().getName()%> </span></li>
        <li>Authentication Type Is : <span><%=request.getAuthType()%></span></li>
    </ul>
</div>
</body><footer>
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
