<%-- 
    Document   : Main
    Created on : Jan 13, 2018, 4:11:18 PM
    Author     : Tima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
       
        <%
            if ((session.getAttribute("Useruid") == null) || (session.getAttribute("Useruid") == "")) {
         %>
         <center>You are not logged in</center>
         <a href="index.jsp"><center>Please Login</center></a>
        <%} else {
        %>
         <center>
         <table border="5" width="20%" cellpadding="10">
             <thead>
                    <tr>
                        <th colspan="2"><center>Welcome <%=session.getAttribute("Useruid")%></center></th>
                    </tr>
                </thead>
         <tbody>
         
          <form method="post" action="uploadServlet" enctype="multipart/form-data">
              <tr>
                        <td>Upload Data File 1</td>
                        <td><center><input type="File" name="File1" placeholder="File1" required /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 2</td>
                        <td><center><input type="File" name="File2" placeholder="File2" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 3</td>
                        <td><center><input type="File" name="File3" placeholder="File3" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 4</td>
                        <td><center><input type="File" name="File4" placeholder="File4" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 5</td>
                        <td><center><input type="File" name="File5" placeholder="File5" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 6</td>
                        <td><center><input type="File" name="File6" placeholder="File6" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Data File 7</td>
                        <td><center><input type="File" name="File7" placeholder="File7" /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Disturbance File</td>
                        <td><center><input type="File" name="Disturbance" placeholder="Disturbance" required /></center></td>
                    </tr>
                                  <tr>
                        <td>Upload Observation File</td>
                        <td><center><input type="File" name="Observation" placeholder="Observation" required /></center></td>
                    </tr>
                    <tr>
                        <td>BUS number</td>
                        <td><center><input type="text" name="BUS" placeholder="BUS" /></center></td>
                    </tr>
                    <tr>
                        <th colspan="2"><center><input type="submit" value="Upload" onClick="myFunction()"/><center></th>
                    </tr>
                             <script>
                                function myFunction() {
                                    var x = (screen.width)/2 - 700/2;
                                    var y = (screen.height)/2 - 600/2;
                                  imagewindow = window.open("image.jsp", "Graph", "width=700,height=600"); 
                                  imagewindow.moveTo(x, y);

                                 }
                                </script>
        </form>       

         
         <tr>
                        <th colspan="2"><center><a href='logout.jsp'>Log out</a></center></th>
                    </tr>
                    
        
        </tbody>
      </table>
                    </center>
       
<%
    }
%>