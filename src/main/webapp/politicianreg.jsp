<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Politician Registration</title> 
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    h3 {
        text-align: center;
        color: #333;
    }

    .form-container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 10px;
        vertical-align: middle;
    }

    label {
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="date"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    .button-container {
        text-align: center;
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 14px;
        cursor: pointer;
        border-radius: 5px;
        margin: 5px;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #0056b3;
    }
</style>

<body>
    <h3>Politician Registration</h3>
    <div class="form-container">
        <form method="post" action="insertpolitician">
            <table>
                <tr>
                    <td><label for="pname">Enter Name</label></td>
                    <td><input type="text" id="pname" name="pname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="pgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="pgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="pgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="pdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="pdob" name="pdob" required/></td>
                </tr>
				   <tr>
                    <tr>
					    <td><label>Select Status</label></td>
					    <td>
					        <input type="radio" id="married" name="pstatus" value="MARRIED" required/>
					        <label for="married">Married</label>
					        <input type="radio" id="unmarried" name="pstatus" value="UNMARRIED" required/>
					        <label for="unmarried">Unmarried</label>
					    </td>
					</tr>
                </tr>
				   
                <tr>
                    <td><label for="pdesignation">Enter Designation</label></td>
                    <td><input type="text" id="pdesignation" name="pdesignation" required/></td>
                </tr>
                <tr>
                    <td><label for="pconstituency">Enter Constituency</label></td>
                    <td><input type="text" id="pconstituency" name="pconstituency" required/></td>
                </tr>
                <tr>
                    <td><label for="pemail">Enter Email ID</label></td>
                    <td><input type="email" id="pemail" name="pemail" required/></td>
                </tr>
                <tr>
                    <td><label for="ppassword">Enter Password</label></td>
                    <td><input type="password" id="ppassword" name="ppassword" required/></td>
                </tr>
                <tr>
                    <td><label for="pcontactno">Enter Contact Number</label></td>
                    <td><input type="text" id="pcontactno" name="pcontactno" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>