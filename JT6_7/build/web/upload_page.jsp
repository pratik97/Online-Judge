<%-- 
    Document   : upload_page
    Created on : Apr 1, 2017, 8:36:36 PM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.io.*"%>
<%
      String saveFile = "";String res="";
      String contentType = request.getContentType();
      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
                  byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                  totalBytesRead += byteRead;
            }
            String file = new String(dataBytes);
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            saveFile = "C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/input/" + saveFile;
            File ff = new File(saveFile);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();
      
            
            //response.setHeader(name, value);
%><Br>

<table border="2">
      <tr>
            <td><b>You have successfully upload the file by the name of:</b>
            <%
                  out.println(saveFile);
                  }
            %>
            </td>
            
            
      </tr>
      <br><br>
      <form action="main_page.jsp"> <input type="submit" value="Go To Main Menu" name="mm" /></form>
      
</table>
           
