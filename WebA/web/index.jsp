<%-- 
    Document   : index
    Created on : 12.11.2017, 19:52:00
    Author     : Tima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="log.jsp">
            <center>
               

            <table border="5" width="20%" cellpadding="10">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="Username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="Password" name="Password" value="" /></td>
                    </tr>
                    <tr>
                        <th colspan="2"><input type="submit" value="Login"/></th>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered yet? <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>




