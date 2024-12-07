<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }
    h2 {
        text-align: center;
        color: #333;
        padding: 20px 0;
        margin: 0;
        background-color: #f8f9fa;
        border-bottom: 2px solid #e9ecef;
    }
    .navbar {
        background-color: #333;
        padding: 15px;
        text-align: center;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 10px;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }
    .navbar a:hover {
        background-color: #555;
    }
</style>
</head>
<body>
<h2>Admin Dashboard</h2>
    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="politicianreg">Add Politician</a>
        <a href="viewpoliticians">View Politicians</a>
         <a href="deletepolitician">Delete Politician</a>
    </div>
</body>
</html>