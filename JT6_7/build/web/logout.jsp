<%-- 
    Document   : logout
    Created on : Mar 24, 2017, 10:03:40 PM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Log Out Page</title> 
    </head> 
    <body> 
        <%
            session.setAttribute("handle",null);
            response.setHeader( "Pragma", "no-cache" );
   response.setHeader( "Cache-Control", "no-cache" );
        session.setAttribute("password",null);session.removeAttribute("handle");
        session.removeAttribute("password"); 
        session.invalidate(); 
        
          response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
        //System.out.println(session.getAttribute("handle").toString());
        %>
        <h1>Logout was done successfully.</h1> 
    </body> 
</html>


