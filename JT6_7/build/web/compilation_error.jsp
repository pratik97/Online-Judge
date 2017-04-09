<%-- 
    Document   : compilation_error
    Created on : Apr 9, 2017, 4:44:44 PM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CE Page</title>
    </head>
    <body>
         <img src="CE.jpg" alt="image" /> 
             <h1 style="color:red">Compilation Error!</h1>
             <hr>
             <%
                 String h=request.getParameter("msg").toString();
                 out.println(h);
             %>
        
    </body>
</html>
