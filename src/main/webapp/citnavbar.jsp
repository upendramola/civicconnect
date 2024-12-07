<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LOKSAMBANDH</title>
   
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
        color: #333;
    }

    /* Title Section */
    h2 {
        text-align: center;
        color: #007BFF;
        font-size: 28px;
        margin: 20px 0;
    }

    /* Navbar Section */
    .navbar {
        background-color: #007BFF;
        overflow: hidden;
        display: flex;
        justify-content: center;
        padding: 10px 0;
    }

    .navbar a {
        color: white;
        text-decoration: none;
        font-size: 16px;
        margin: 0 15px;
        padding: 10px 20px;
        transition: background-color 0.3s;
    }

    .navbar a:hover {
        background-color: #0056b3;
        border-radius: 5px;
    }

    .navbar a.active {
        background-color: #0056b3;
        border-radius: 5px;
        font-weight: bold;
    }
</style>

<body>

    <!-- Title Section -->
    <h2>LOKSAMBANDH</h2>

    <!-- Navbar Section -->
    <div class="navbar">
        <a href="cithome">Home</a>
        
        
        <a href="citprofile">My Profile</a>
        <a href="updatecit">Update Citizen Profile</a>
        <a href="citcontactus">Contact Us</a>
        <a href="citlogout">Logout</a>
    </div>

</body>
</html>
