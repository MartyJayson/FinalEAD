<%@include file="head.jsp"%>
<nav>
<div class="header-link">
    <a href="index.jsp">Home</a>
    <a href="session">Session Tracking</a><%--
    <a href="secured">Secured Page</a>--%>
    <div class="container">
    <img class="logo" src="images/HeadHunter_logo.png">
    </div>
<%
    if(ONLINE){
%>
    <a href="profile.jsp"><%=current.getFname()%></a>
    <a href="/logout">Logout</a>
<%
    }
    else{
%>
    <a class="login" href="login.jsp">Log In</a>
    <a class="registration" href="registration.jsp">Sign Up</a>
<%
    }
%>
</nav>