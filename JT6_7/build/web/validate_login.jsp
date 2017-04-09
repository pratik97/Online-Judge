<%-- 
    Document   : validate_login
    Created on : Mar 24, 2017, 10:26:16 AM
    Author     : Pratik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valid Login</title>
    </head>
    <body>
        <h1>login successful</h1>   
<%!

    String handle="";   
    Connection  conn;
    Statement st;
    ResultSet rs;
    String password="",x;
    int f=0;
%>
<%
    handle=request.getParameter("handle");
    password=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
    System.out.println("Connection Established!");
    st=(Statement)conn.createStatement();
    String query="select password from codeforces where handle= '"+handle+"';";
    rs=st.executeQuery(query);
    if(handle.length()==0 || password.length()==0)
        f=1;
    while(rs.next())
    {
        x=rs.getString(1);
        if(x.matches(password))
            f=1;
    }
    if(f==0)
    {
        response.sendRedirect("login_page.jsp");
    }
    else
    {
        
        session.setAttribute("handle",handle);
        response.sendRedirect("main_page.jsp");
    }
%>

 </body>
</html>
