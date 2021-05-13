<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MidtermEAD - Abibulla Yershat(HeadHunter)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="main">
        <h1>Find your dream job</h1>
        <div class="search-group">
            <%
                String vacError = request.getParameter("vacancyError");
                if(vacError!=null){
            %>
            <div class="Error" style="color:red">
                <h3>Incorrect vacancy name!</h3>
            </div>
            <%
                }
            %>
            <form name="search-form" action="/find" method="post">
            <input name = "search" type="text" autocomplete="off" placeholder="Profession, position or company" data-qa="search-input" class="search">
            <button type="submit" data-qa="search-button" class="search-button">
                <span class="submit-text">Find job</span>
            </button>
            </form>
        </div>
        <div class="dashboard-footer">
            <div class="dashboard-stats">
                <div class="dashboard-value">2 968 690</div>
                <div class="dashboard-text">resume</div>
            </div>
            <div class="dashboard-stats">
                <div class="dashboard-value">25 828</div>
                <div class="dashboard-text">vacations</div>
            </div>

            <div class="dashboard-stats">
                <div class="dashboard-value">67 001</div>
                <div class="dashboard-text">company</div>
            </div>
        </div>
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