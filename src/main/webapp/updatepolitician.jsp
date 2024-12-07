<%@page import="com.klef.jfsd.springboot.model.Politician"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    Politician p = (Politician) session.getAttribute("politician"); 
    if(p == null) { 
        response.sendRedirect("politiciansessionexpiry"); 
        return; 
    } 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Politician</title>
</head>
<body>
  <%@include file="politiciannavbar.jsp" %>
  
  <h4 align="center" style="color:red">
  <c:out value="${message}"></c:out>
  </h4>
  
        <h3 style="text-align: center;">Update My Profile</h3>
    <div class="form-container">
        <form method="post" action="updatepoliticianprofile">
            <table>
                <tr>
                    <td><label for="pid">Politician ID</label></td>
                    <td><input type="number" id="pid" name="pid" readonly value="<%= p.getId() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="pname">Enter Name</label></td>
                    <td><input type="text" id="pname" name="pname" value="<%= p.getName() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="pdesignation">Enter Designation</label></td>
                    <td><input type="text" id="pdesignation" name="pdesignation"  value="<%= p.getId() %>" required /></td>
                </tr>
                  <tr>
                    <td><label for="pconstituency">Enter Constituency</label></td>
                    <td><input type="text" id="pconstituency" name="pconstituency"  value="<%= p.getId() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="ppassword">Enter Password</label></td>
                    <td><input type="password" id="ppassword" name="ppassword" value="<%= p.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="pcontactno">Enter Contact</label></td>
                    <td><input type="number" id="pcontactno" name="pcontactno" value="<%= p.getContactno() %>" required /></td>
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