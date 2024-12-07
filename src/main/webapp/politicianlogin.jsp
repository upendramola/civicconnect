<!DOCTYPE html>
<html>
<head>
    <title>Politician Login</title>
</head>
<style>
    /* General body styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f8ff;
        color: #333;
    }

    /* Heading styling */
    h3 {
        font-size: 24px;
        color: #007BFF;
        margin: 20px 0;
    }

    /* Form container styling */
    .form-container {
        background-color: white;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        display: inline-block;
    }

    /* Table styling */
    table {
        width: 100%;
        border-spacing: 10px;
    }

    table td {
        font-size: 14px;
        color: #555;
    }

    table label {
        font-weight: bold;
    }

    table input[type="email"],
    table input[type="password"] {
        width: 200px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    /* Button styling */
    .button-container input[type="submit"],
    .button-container input[type="reset"] {
        padding: 8px 16px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
        margin: 5px;
    }

    .button-container input[type="submit"]:hover,
    .button-container input[type="reset"]:hover {
        background-color: #0056b3;
    }
</style>

<body>
  
    <h3 style="text-align: center;"><u>Politician Login</u></h3>
    <div class="form-container" align="center">
        <form method="post" action="checkpoliticianlogin">
            <table>
                <tr>
                    <td><label for="pemail">Enter Email ID</label></td>
                    <td><input type="email" id="pemail" name="pemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="ppassword">Enter Password</label></td>
                    <td><input type="password" id="ppassword" name="ppassword" required/></td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
 