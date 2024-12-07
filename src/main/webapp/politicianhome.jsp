<%@page import="com.klef.jfsd.springboot.model.Politician"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<%
Politician pin =(Politician) session.getAttribute("politician");
if(pin==null)
{
	response.sendRedirect("politiciansessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Politician Dashboard</title>

</head>
<style>
    /* General Page Styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
        color: #333;
    }

    /* Welcome Message Styling */
    h1, h2 {
        text-align: center;
        color: #007BFF;
        margin-top: 20px;
    }

    p {
        font-size: 16px;
        text-align: center;
    }

    /* Navbar Styling */
    nav {
        background-color: #007BFF;
        padding: 10px;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        font-size: 16px;
        margin: 0 15px;
    }

    nav a:hover {
        text-decoration: underline;
    }

    /* Dashboard Details */
    .dashboard {
        width: 50%;
        margin: 30px auto;
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        text-align: center;
    }

    .dashboard b {
        color: #333;
        font-size: 18px;
    }

    .dashboard .count {
        font-size: 24px;
        font-weight: bold;
        color: #FF5733;
        margin-top: 10px;
    }
</style>

<body>
<%@include file="politiciannavbar.jsp" %>
Welcome  <%=pin.getName() %>
<br>
Total Problems Count = <c:out value='${count}'></c:out>
</body>
</html>





