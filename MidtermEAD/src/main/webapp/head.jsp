<%@ page import="com.example.MidtermEAD.Employee" %>
<%@ page import="com.example.MidtermEAD.Vacancy" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
<%
    Employee current = (Employee) request.getSession().getAttribute("CURRENT_USER");
    boolean ONLINE = false;
    if(current!=null){
        ONLINE = true;
    }
    Vacancy vacancy = (Vacancy) request.getSession().getAttribute("SEARCH");
    boolean anything = false;
    if(vacancy!=null){
        anything=true;
    }
%>
