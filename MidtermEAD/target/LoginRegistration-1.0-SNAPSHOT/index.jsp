<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MidtermEAD - Abibulla Yershat(HeadHunter)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<div class="header-link">
    <a href="session">Session Tracking</a>
</div>

    <div class="main">
        <div class = "container">
            <img src="images/HeadHunter_logo.png">
        </div>
        <div class="log-reg">
            <a class="login" href="login.jsp">Log In</a>
            <a class="registration" href="registration.jsp">Sign Up</a>

        </div>

        <h1>Find your dream job</h1>
        <div class="search-group">
            <input type="text" autocomplete="off" placeholder="Profession, position or company" data-qa="search-input" class="search">
            <button type="submit" data-qa="search-button" class="search-button">
                <span class="submit-text">Find job</span>
            </button>
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
</html>