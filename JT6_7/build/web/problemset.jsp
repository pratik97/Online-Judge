<%-- 
    Document   : problemset
    Created on : Mar 24, 2017, 11:17:57 PM
    Author     : Pratik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Problemset Page</title>
        <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    width: 1000px;
    height: 100px;
}
table
{
    table-layout: auto;
    
}
th
{
    background-color:#008B8B;
}
td,th
{
    font-size: 23px;
}
tr:hover {background-color: #f5f5f5}

            </style>
    </head>
    <body>
        <div align="right">
                <a href="logout.jsp"><font size="5">Logout</font></a>
            </div>
        <div align="center">
            <br><br>
            <h1><b>Problemset</b></h1>
            <br><br><br>
       <table>
            <tbody>
                <tr class="ty">
                    <th>&nbsp;Id</th>
                    <th>&nbsp;Problemset</th>
                    <th>&nbsp;tags</th>
                    <th>&nbsp;xSolved</th>
                </tr>
                <%! Connection  conn;
    Statement st=null;
    ResultSet rs=null;
    String qname,qdesc,qtag,query,solve;
                int cnt=1;%>
                <%
                    query="select * from problemset";
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
                    System.out.println("Connection Established!");
                    st=(Statement)conn.createStatement();
                    rs=st.executeQuery(query);
                    while(rs.next())
                    {
                        cnt=rs.getInt("id");
                %>
                <tr>
                    <td>&nbsp;<% out.println(cnt);     %></td>
                    <td>&nbsp;<a href="problem_page.jsp?id=<%=cnt %>"><% out.println(rs.getString(2));    %></td>
                    <td>&nbsp;<% out.println(rs.getString(3));    %></td>
                    <td>&nbsp;<% out.println(rs.getString(4));    %></td>
                </tr>
                <% }    %>
            </tbody>
        </table>
        </div>
        <%!
            
        %>
        <%
            
        %>
    </body>
</html>
