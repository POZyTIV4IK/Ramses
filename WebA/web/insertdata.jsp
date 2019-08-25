<%-- 
    Document   : insertdata
    Created on : 12.11.2017, 20:26:09
    Author     : Tima
--%>
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
         String Firstname = request.getParameter("Firstname");
         String Lastname = request.getParameter("Lastname");
         String Email = request.getParameter("Email");
         String Username = request.getParameter("Username");
         String Password = request.getParameter("Password");
         
         
         
     try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "12345");
     Statement st = con.createStatement();
     ResultSet rs;
      rs = st.executeQuery("select * from register where Username='" + Username + "'");
     if (!(rs.next())) {    
     st.executeUpdate("insert into register (Firstname,Lastname,Email,Username,Password)values('"+Firstname+"','"+Lastname+"','"+Email+"','"+Username+"','"+Password+"')");
     
     out.println("<center> Registration is Successful. </center>"+"<center><a href='index.jsp'>Go to Login</a></center>");
    } else {
        out.println("<center> This Username is already exist </center> "+"<center><a href='reg.jsp'>Start again</a></center>");
    }
     
     }catch(Exception e){
     
     out.println(e); 
     }
     
     %>
    </body>
</html>


            