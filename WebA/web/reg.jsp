<%-- 
    Document   : reg
    Created on : Jan 13, 2018, 11:32:31 AM
    Author     : Tima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Registration</title>
    </head>
    <body>
        <form method="post" action="insertdata.jsp">
            <center>
            <table border="5" width="20%" cellpadding="10">
                <thead>
                    <tr>
                        <th colspan="2">Please enter registration data</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="Firstname" placeholder="Firstname" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="Lastname" placeholder="Lastname" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="Email" placeholder="Email"/></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="Username" placeholder="Username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="Password" placeholder="Password" /></td>
                    </tr>
                    <tr>
                        <th colspan="2"><input type="submit" value="Register" /></th>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered?  <a href="index.jsp">Login Here</a></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
