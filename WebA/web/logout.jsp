<%-- 
    Document   : logout
    Created on : Jan 13, 2018, 4:22:08 PM
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
        <%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("Main.jsp");
%>
    </body>
</html>
