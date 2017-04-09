<%-- 
    Document   : problem_page
    Created on : Mar 25, 2017, 2:38:22 PM
    Author     : Pratik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Problem Page</title>
        <style>
            table {
    border-collapse: collapse;
}
        </style>
    </head>
    <body>
        <div align="left">
                <a href="submit_page.jsp"><font size="5">Submit</font></a>
            </div>
        <div align="right">
                <a href="logout.jsp"><font size="5">Logout</font></a>
            </div>
        <%!
           Connection  conn;
           Statement st=null;
           ResultSet rs=null; 
        int cnt=0,id;
           String query,c;
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
            System.out.println("Connection Established!");
            st=(Statement)conn.createStatement();
            c=request.getParameter("id");
            if(c!=null)
            {
                id=Integer.parseInt(c);//converting back into integer
            }
            query="select * from problemset where id='"+id+"';";
            rs=st.executeQuery(query);
            
            while(rs.next())
            {
        %>
    <center>
        <font size="30"><% out.println(rs.getString(2)); %></font>
        
    </center>
        <h2><u>Problem Tags</u>
        </h2>
        <h2><% out.println(rs.getString(3)); %></h2>
        <h2><u>Problem Description:</u>
        </h2>
        <h2><font size="5"><% out.println(rs.getString(5)); %></font></h2>
        <% cnt++;
            }
        %>
       
        
    </body>
</html>
