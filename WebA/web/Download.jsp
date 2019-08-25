<%-- 
    Document   : Download
    Created on : Apr 29, 2018, 6:31:31 PM
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
                <form method="get" action="downloadServlet" enctype="multipart/form-data">
            <center>
            <table border="5" width="20%" cellpadding="10">
                     <tr>
                        <th colspan="2"><img src="ImageServlet?path=C:\\Uploads\ <%=session.getAttribute("Useruid")%> \temp.png" width="640" height="480" alt="Graph is generating"/></th>
                    </tr>
                     <tr>
                        <td><center>Congratulations! </center>
                            <center>Your result has been generated successfully! </center>
                            <center>Download by the button below. </center></td>
                    </tr>
                    <tr>
                        <th colspan="2"><input type="submit" value="Download" /></th>
                    </tr>
                </tbody>
            </table>
            </center>


        </form>
    </body>
</html>
