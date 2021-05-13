<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>MidtermEAD - Abibulla Yershat(HeadHunter)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<div class="header-link">
    <a href="session">Session Tracking</a>
    <a href="secured">Secured Page</a>
</div>
    <h3>Sorry an exception occured!</h3>

    Exception is: <%= exception %>
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
