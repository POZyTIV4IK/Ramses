/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.codejava.upload;


import java.io.IOException;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;




import java.sql.Connection;
import java.sql.DriverManager;




/**
 *
 * @author Tima
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
public class FileUploadDBServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

     
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
         
        InputStream inputStream1 = null; // input stream of the upload file
        
        InputStream inputStream2 = null;
        
        InputStream inputStream3 = null;
        
        InputStream inputStream4 = null;
        
        InputStream inputStream5 = null;
        
        InputStream inputStream6 = null;
        
        InputStream inputStream7 = null;
        
        InputStream inputStream8 = null;
        
        InputStream inputStream9 = null;
        
        // obtains the upload file part in this multipart request
        Part filePart1 = request.getPart("File1");
        if (filePart1 != null) {
            // prints out some information for debugging
            System.out.println(filePart1.getName());
            System.out.println(filePart1.getSize());
            System.out.println(filePart1.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = filePart1.getInputStream();
        }
        
        Part filePart2 = request.getPart("File2");
        if (filePart2 != null) {
            // prints out some information for debugging
            System.out.println(filePart2.getName());
            System.out.println(filePart2.getSize());
            System.out.println(filePart2.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = filePart2.getInputStream();
        }
        
        Part filePart3 = request.getPart("File3");
        if (filePart3 != null) {
            // prints out some information for debugging
            System.out.println(filePart3.getName());
            System.out.println(filePart3.getSize());
            System.out.println(filePart3.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = filePart3.getInputStream();
        }
        
        Part filePart4 = request.getPart("File4");
        if (filePart4 != null) {
            // prints out some information for debugging
            System.out.println(filePart4.getName());
            System.out.println(filePart4.getSize());
            System.out.println(filePart4.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = filePart4.getInputStream();
        }
        
        Part filePart5 = request.getPart("File5");
        if (filePart5 != null) {
            // prints out some information for debugging
            System.out.println(filePart5.getName());
            System.out.println(filePart5.getSize());
            System.out.println(filePart5.getContentType());
             
            // obtains input stream of the upload file
            inputStream5 = filePart5.getInputStream();
        }
        
        Part filePart6 = request.getPart("File6");
        if (filePart6 != null) {
            // prints out some information for debugging
            System.out.println(filePart6.getName());
            System.out.println(filePart6.getSize());
            System.out.println(filePart6.getContentType());
             
            // obtains input stream of the upload file
            inputStream6 = filePart6.getInputStream();
        }
        
        
        Part filePart7 = request.getPart("File7");
        if (filePart7 != null) {
            // prints out some information for debugging
            System.out.println(filePart7.getName());
            System.out.println(filePart7.getSize());
            System.out.println(filePart7.getContentType());
             
            // obtains input stream of the upload file
            inputStream7 = filePart7.getInputStream();
        }
        
        
        Part filePart8 = request.getPart("Disturbance");
        if (filePart8 != null) {
            // prints out some information for debugging
            System.out.println(filePart8.getName());
            System.out.println(filePart8.getSize());
            System.out.println(filePart8.getContentType());
             
            // obtains input stream of the upload file
            inputStream8 = filePart8.getInputStream();
        }
        
        
        Part filePart9 = request.getPart("Observation");
        if (filePart9 != null) {
            // prints out some information for debugging
            System.out.println(filePart9.getName());
            System.out.println(filePart9.getSize());
            System.out.println(filePart9.getContentType());
             
            // obtains input stream of the upload file
            inputStream9 = filePart9.getInputStream();
        } 
        
        
        String BUS = request.getParameter("BUS");
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         String Useruid = request.getParameter("Username");
         
         HttpSession Session = request.getSession(); 
         
        try {
            // connects to the database
            
        
            
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "12345");
 
            // constructs SQL statement
            
            
            String sql = "update register set File1=? , File2=? , File3=? , File4=? , File5=? , File6=? , File7=? , Disturbance=? , Observation=? where Username='" + Session.getAttribute("Useruid") + "'";
            PreparedStatement statement = conn.prepareStatement(sql);
             
             
            if (inputStream1 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(1, inputStream1, (int) filePart1.getSize());
            }
            
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(2, inputStream2, (int) filePart2.getSize());
            }
            
            if (inputStream3 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(3, inputStream3, (int) filePart3.getSize());
            }
            
            if (inputStream4 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(4, inputStream4, (int) filePart4.getSize());
            }
            
            if (inputStream5 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(5, inputStream5, (int) filePart5.getSize());
            }
            
            if (inputStream6 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(6, inputStream6, (int) filePart6.getSize());
            }
            
            
            if (inputStream7 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(7, inputStream7, (int) filePart7.getSize());
            }
            
            if (inputStream8 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(8, inputStream8, (int) filePart8.getSize());
            }
            
            if (inputStream9 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBinaryStream(9, inputStream9, (int) filePart9.getSize());
            }
 
            
            Session.setAttribute("BUS", BUS);
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/insertfile.jsp").forward(request, response);
        }
    }
}