<%@page import="com.klef.jfsd.springboot.model.Citizen"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<% 
    Citizen cit = (Citizen) session.getAttribute("Citizen"); 
    if(cit == null) { 
        response.sendRedirect("citsessionexpiry"); 
        return; 
    } 
%> 
<!DOCTYPE html> 
<html>
<head>
    <title> Update Citizen Profile</title>
    <style>
        /* Base Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Navbar Styling */
        .navbar {
            width: 100%;
            text-align: center;
            padding: 15px 0;
            background-color: #333;
            color: white;
            font-size: 24px;
            font-weight: bold;
            position: fixed; /* Makes the navbar fixed at the top */
            top: 0;
            left: 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000; /* Ensures navbar is on top of other elements */
        }

        /* Form Container Styling */
        .form-container {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 450px;
            text-align: center;
            margin-top: 80px; /* Adds space so form is not hidden by navbar */
        }

        /* Heading Styling */
        .form-container h3 {
            color: #333;
            margin-bottom: 20px;
            font-size: 22px;
            text-decoration: underline;
        }

        /* Table Layout */
        .form-container table {
            width: 100%;
            margin: auto;
        }

        /* Table Cells */
        .form-container td {
            padding: 12px 10px;
            text-align: left;
        }

        /* Labels */
        .form-container label {
            font-weight: bold;
            color: #333;
        }

        /* Input Fields */
        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        /* Button Container */
        .button-container {
            text-align: center;
            padding-top: 15px;
        }

        /* Submit and Reset Buttons */
        .button-container input[type="submit"],
        .button-container input[type="reset"] {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        /* Reset Button Styling */
        .button-container input[type="reset"] {
            background-color: #f44336;
        }

        /* Button Hover Effects */
        .button-container input[type="submit"]:hover,
        .button-container input[type="reset"]:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>

<%@ include file="citnavbar.jsp" %>

    <!-- Form Container -->
    <div class="form-container">
        <h3>Update Citizen Profile</h3>
        
        <form method="post" action="updatecitprofile">
            <table>
                <tr>
                    <td><label for="cid">Citizen ID</label></td>
                    <td><input type="number" id="cid" name="cid" readonly value="<%= cit.getId() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cname">Enter Name</label></td>
                    <td><input type="text" id="cname" name="cname" value="<%= cit.getName() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" value="<%= cit.getPassword() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="ccontact">Enter Contact</label></td>
                    <td><input type="number" id="ccontact" name="ccontact" value="<%= cit.getContactno() %>" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
