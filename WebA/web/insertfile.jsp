<%-- 
    Document   : insertdata
    Created on : 12.11.2017, 20:26:09
    Author     : Tima
--%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.zip.ZipOutputStream"%>
<%@page import="java.util.zip.ZipEntry"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.io.File"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

     <%

            

         String Useruid = request.getParameter("Username");
         
 File check = new File("C:/Uploads/" + session.getAttribute("Useruid") + ""); 
       if (check.exists()) {
       FileUtils.cleanDirectory(check); }
          
 
     try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "12345");
     Statement st = con.createStatement();

      ResultSet RS;
     st.executeQuery("select File1 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/1.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File2 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/2.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File3 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/3.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File4 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/4.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File5 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/5.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File6 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/6.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select File7 from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/7.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select Disturbance from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/Disturbance.dst' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     st.executeQuery("select Observation from register where Username='" + session.getAttribute("Useruid") + "' into outfile 'C:/Uploads/" + session.getAttribute("Useruid") + "/Observation.dat' FIELDS ESCAPED BY '\' LINES TERMINATED BY '\r\n'");
     
     response.sendRedirect("DownloadMain.jsp");

      try {

FileOutputStream fos = new FileOutputStream("C:/Uploads/" + session.getAttribute("Useruid") + "/cmd.txt");

PrintWriter pw = new PrintWriter(fos);


pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/1.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/2.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/3.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/4.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/5.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/6.dat"); 

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/7.dat"); 

pw.println("");

pw.println("init.trace");

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/Disturbance.dst"); 

pw.println("output.trj");

pw.println("C://Uploads/" + session.getAttribute("Useruid") + "/Observation.dat"); 

pw.println("count.trace");

pw.println("disc.trace");

pw.println(session.getAttribute("BUS"));

pw.println("");


pw.close();

fos.close();

}

catch (Exception e) {

// Handle exceptions

}
      


     }catch (Exception e) {

// Handle exceptions

}


  
     
     %>
    
</html>
