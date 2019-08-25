<%-- 
    Document   : image
    Created on : Apr 13, 2018, 7:10:10 PM
    Author     : Tima
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
                    <% response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);  
%>
<body>
<img src="ImageServlet?path=C:\\Uploads\ <%=session.getAttribute("Useruid")%> \temp.png" width="640" height="480" alt="Graph is generating"/>               
<script language="JavaScript" type="text/javascript">
function refreshImage(){
  image = "C:/Uploads/" + session.getAttribute("Useruid") + "/temp.png";
  document.images["track"].src = image;
  System.out.println("Cycle\n");
  setTimeout("refreshImage()", 1000);
}
refreshImage();
</script> 
</body>   
</html>
<% response.addHeader("Refresh","3"); %> 