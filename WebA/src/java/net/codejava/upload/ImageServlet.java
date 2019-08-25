/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.codejava.upload;



import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Tima
 */
@WebServlet(name = "ImageServlet", urlPatterns = {"/ImageServlet"})
public class ImageServlet extends HttpServlet {
    

    static final long serialVersionUID = 1L;
String image_name = "";
ResourceBundle props = null;
String filePath = "";
private static final int BUFSIZE = 100;
private ServletContext servletContext;
public ImageServlet() {
super();
}
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
System.out.println("FROM SERVLET");
sendImage(getServletContext(), request, response);
}
public void sendImage(ServletContext servletContext,
HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
this.servletContext = servletContext;
String reqUrl = request.getRequestURL().toString();
StringTokenizer tokens = new StringTokenizer(reqUrl, "/");
int noOfTokens = tokens.countTokens();
String tokensString[] = new String[noOfTokens];
int count = 0;
while (tokens.hasMoreElements()) {
tokensString[count++] = (String) tokens.nextToken();
}
String folderName = tokensString[noOfTokens - 2];
image_name = tokensString[noOfTokens - 1];
HttpSession Session = request.getSession();
String fullFilePath = "C://Uploads/" + Session.getAttribute("Useruid") + "/temp.png";
System.out.println("FULL PATH :: "+fullFilePath);
// doShowImageOnPage(fullFilePath, request, response);
doDownload(fullFilePath, request, response);
}
private void doShowImageOnPage(String fullFilePath,
HttpServletRequest request, HttpServletResponse response)
throws IOException {
response.reset();
response.setHeader("Content-Disposition", "inline");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Expires", "0");
response.setContentType("image/tiff");
byte[] image = getImage(fullFilePath);
OutputStream outputStream = response.getOutputStream();
outputStream.write(image);
outputStream.close();
}
private void doDownload(String filePath, HttpServletRequest request,
HttpServletResponse response) throws IOException {
File fileName = new File(filePath);
int length = 0;
ServletOutputStream outputStream = response.getOutputStream();
// ServletContext context = getServletConfig().getServletContext();
ServletContext context = servletContext;
String mimetype = context.getMimeType(filePath);
response.setContentType((mimetype != null) ? mimetype
: "application/octet-stream");
response.setContentLength((int) fileName.length());
response.setHeader("Content-Disposition", "attachment; filename=\""
+ image_name + "\"");
byte[] bbuf = new byte[BUFSIZE];
DataInputStream in = new DataInputStream(new FileInputStream(fileName));
while ((in != null) && ((length = in.read(bbuf)) != -1)) {
outputStream.write(bbuf, 0, length);
}
in.close();
outputStream.flush();
outputStream.close();
}
private byte[] getImage(String filename) {
byte[] result = null;
String fileLocation = filename;
File f = new File(fileLocation);
result = new byte[(int)f.length()];
try {
FileInputStream in = new FileInputStream(fileLocation);
in.read(result);
}
catch(Exception ex) {
System.out.println("GET IMAGE PROBLEM :: "+ex);
ex.printStackTrace();
}
return result;
}
}