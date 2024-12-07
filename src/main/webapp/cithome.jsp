<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen cit = (Citizen) session.getAttribute("Citizen"); // Use the correct attribute name from the controller
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citizen Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    p {
        font-size: 18px;
        margin: 20px 0;
    }

    p.welcome-message {
        color: green;
        text-align: center;
        font-weight: bold;
    }

    p.session-expired {
        color: red;
        text-align: center;
        font-weight: bold;
    }

    /* Navbar Styles (if citnavbar.jsp has a navbar) */
    nav {
        background-color: #007bff;
        padding: 10px;
        color: white;
        text-align: center;
        font-size: 16px;
    }

    nav a {
        color: white;
        text-decoration: none;
        margin: 0 10px;
    }

    nav a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
<%@include file="citnavbar.jsp" %>

<% if (cit != null) { %>
    <p style="color: black; text-align: center;">Welcome <%= cit.getName() %></p> <!-- Display citizen's name -->
<% 
}
else 
{ 
%>
   <p style="color: red; text-align: center;">Session expired. Please log in again.</p> <!-- Prompt to log in -->
<% 
}
%>

</body>
</html>
