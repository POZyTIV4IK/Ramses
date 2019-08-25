<%-- 
    Document   : DownloadMain
    Created on : Feb 24, 2018, 1:51:33 AM
    Author     : Tima
--%>


<%@page import="java.util.Scanner"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.zip.ZipEntry"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.zip.ZipOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



<%

                File source = new File("C:/Users/Tima/Desktop/BAT/");
            File dest = new File("C:/Uploads/" + session.getAttribute("Useruid") + "");
                     FileUtils.copyDirectory(source, dest);

                     
 try {
     String line;
      ProcessBuilder pb = new ProcessBuilder("cmd", "/c", "ALL.bat");
            pb.directory(dest);
            Process p = pb.start();
      
            

        p.waitFor();
     }catch(Exception e){
     
     out.println(e); 
     }  
     

      
    String zipFile = "C://Uploads/" + session.getAttribute("Useruid") + "/archive.zip";
		
       File init = new File("C://Uploads/" + session.getAttribute("Useruid") + "/init.trace");
       File output = new File("C://Uploads/" + session.getAttribute("Useruid") + "/output.trj"); 
       File count = new File("C://Uploads/" + session.getAttribute("Useruid") + "/count.trace"); 
       File disc = new File("C://Uploads/" + session.getAttribute("Useruid") + "/disc.trace"); 
       File temp = new File("C://Uploads/" + session.getAttribute("Useruid") + "/temp_display.cur"); 
       File trace = new File("C://Uploads/" + session.getAttribute("Useruid") + "/output.trace"); 
       File png = new File("C://Uploads/" + session.getAttribute("Useruid") + "/temp.png"); 
       
       if (init.exists() && output.exists() && count.exists() && disc.exists() && temp.exists() && trace.exists() && png.exists()) { 
              String[] srcFiles = { "C://Uploads/" + session.getAttribute("Useruid") + "/init.trace", 
                    "C://Uploads/" + session.getAttribute("Useruid") + "/output.trj", 
                    "C://Uploads/" + session.getAttribute("Useruid") + "/count.trace",
                    "C://Uploads/" + session.getAttribute("Useruid") + "/disc.trace",
                    "C://Uploads/" + session.getAttribute("Useruid") + "/temp_display.cur",
                    "C://Uploads/" + session.getAttribute("Useruid") + "/output.trace", 
                    "C://Uploads/" + session.getAttribute("Useruid") + "/temp.png"};  
		
           
                    try {
			
			byte[] buffer = new byte[1024];

			FileOutputStream fos = new FileOutputStream(zipFile);

			ZipOutputStream zos = new ZipOutputStream(fos);
			
			for (int i=0; i < srcFiles.length; i++) {
				
				File srcFile = new File(srcFiles[i]);

				FileInputStream fis = new FileInputStream(srcFile);

				zos.putNextEntry(new ZipEntry(srcFile.getName()));
				
				int length;

				while ((length = fis.read(buffer)) > 0) {
					zos.write(buffer, 0, length);
				}

				zos.closeEntry();

				fis.close();
				
			}

			zos.close();
			response.sendRedirect("Download.jsp");
		}
		catch (IOException ioe) {
			out.println("Error creating zip file: " + ioe);
		} 
       } else {
       out.println("<center> Error creating zip file </center> " + "<center> <a href='Main.jsp'>Try again</a> </center>");
       }
%>

    </body>






