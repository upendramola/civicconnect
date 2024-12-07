<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Politicians</title>

</head>
<body>
   
    <h3 style="text-align: center;"><u>View All Politicians</u></h3>
  <%--   Total Employees=<c:out value="${count}"></c:out> --%>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Status</th>
            <th>Designation</th>
            <th>Constituency</th>
            <th>Email</th>
            <th>Contact No</th>
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
            </tr>
        </c:forEach>
    </table>
</body>
</html>