<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Politician</title>
    
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Politician</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>STATUS</th>
            <th>DESIGNATION</th>
            <th>CONSTITUENCY</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${plist}" var="p">
            <tr>
                <td><c:out value="${p.id}"/></td>
                <td><c:out value="${p.name}"/></td>
                <td><c:out value="${p.gender}"/></td>
                <td><c:out value="${p.dob}"/></td>
                <td><c:out value="${p.status}"/></td>
                <td><c:out value="${p.designation}"/></td>
                <td><c:out value="${p.constituency}"/></td>
                <td><c:out value="${p.email}"/></td>
                <td><c:out value="${p.contactno}"/></td>
                <td>
                    <a href='<c:url value="delete?id=${p.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>