<%-- 
    Document   : log
    Created on : Jan 13, 2018, 2:23:11 PM
    Author     : Tima
--%>

<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.io.File"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         String Useruid = request.getParameter("Username");
         String Password = request.getParameter("Password");
         
             
     
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "12345");
     Statement st = con.createStatement();
     ResultSet RS;
     RS = st.executeQuery("select * from register where Username='" + Useruid + "' and Password='" + Password + "'");
     if (RS.next()) {
        session.setAttribute("Useruid", Useruid);
        response.sendRedirect("Main.jsp");
        



        
        
       File check = new File("C:/Uploads/" + session.getAttribute("Useruid") + ""); 
       if (check.exists()) {
       FileUtils.cleanDirectory(check); }
           
       File root = new File("C:/Uploads"); 
     File newfolder = new File(root, "/" + session.getAttribute("Useruid") + "");
    newfolder.mkdir(); 

    } else {
        out.println("<center> Invalid password </center> " + "<center> <a href='index.jsp'>Try again</a> </center>");
    }
     
     %>
    </body>
</html>
