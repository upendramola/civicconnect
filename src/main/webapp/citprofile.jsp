<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen cit = (Citizen) session.getAttribute("Citizen");
if(cit==null)
{
	response.sendRedirect("citsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citizen Home</title>
<!-- Internal CSS starts here -->

</head>
<style>
    /* General body styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
        color: #333;
    }

    /* Centered Heading */
    h3.centered {
        text-align: center;
        color: #007BFF;
        margin: 20px 0;
    }

    /* Profile details styling */
    .profile-details {
        margin: 0 auto;
        width: 50%;
        padding: 20px;
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    .profile-details b {
        color: #555;
        font-size: 16px;
    }

    .profile-details {
        font-size: 14px;
        line-height: 1.8;
    }

    /* Navbar styling from citnavbar.jsp */
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
</style>

<body>
<%@include file="citnavbar.jsp" %>

  <h3 class="centered"><u>My Profile</u></h3>

<div class="profile-details centered">
            <b>ID:</b> <%= cit.getId()%><br><br>
            <b>NAME:</b> <%= cit.getName() %><br><br>
            <b>GENDER:</b> <%= cit.getGender()%><br><br>
            <b>DATE OF BIRTH:</b> <%= cit.getDob() %><br><br>
            <b>EMAIL:</b> <%= cit.getEmail() %><br><br>
            <b>PASSWORD:</b> <%= cit.getPassword()%><br><br>
            <b>CONTACT:</b> <%= cit.getContactno()%><br><br>
            <b>AADHAR NUMBER:</b> <%= cit.getAadharnumber()%><br><br>
           
           
</div>

</body>
</html>
