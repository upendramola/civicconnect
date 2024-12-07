<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        padding: 50px;
        background-color: #f5f5f5;
    }
    .error-message {
        color: #f44336;
        font-size: 18px;
        margin-bottom: 20px;
    }
    a {
        text-decoration: none;
        color: #2196F3;
        padding: 10px 20px;
        border: 1px solid #2196F3;
        border-radius: 4px;
        transition: all 0.3s ease;
    }
    a:hover {
        background-color: #2196F3;
        color: white;
    }
</style>
</head>
<body>
<div class="error-message">
    <c:out value="${message}"></c:out>
</div>
<br><br>
<a href="adminlogin">Try Again</a>
</body>
</html>