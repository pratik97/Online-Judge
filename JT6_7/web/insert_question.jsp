<%-- 
    Document   : insert_question
    Created on : Mar 24, 2017, 11:48:52 PM
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
        <title>Insert Question Page</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
<%!
Connection  conn;
    Statement st=null;
    ResultSet rs=null;
    String qname,qdesc,qtag,query,solve;
    int col=0,solved=0;
%>
<%
    qname=request.getParameter("question_name");
    qdesc=request.getParameter("question_desc");
    qtag=request.getParameter("question_tag");
    Class.forName("com.mysql.jdbc.Driver");
    conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
    System.out.println("Connection Established!");
    st=(Statement)conn.createStatement();
    query="select id from problemset";
    solve="500";
    System.out.println("ui "+qname);
    System.out.println(qdesc);
    System.out.println(qtag);
    System.out.println(solve);
    System.out.println(query);
    rs=st.executeQuery(query);
    
    while(rs.next())
    {
         col=rs.getInt(1);  
        System.out.println(col);
       
    }
    col++;
    System.out.println("where="+col);
    solved=1+(int)(Math.random()*100);
    solve=Integer.toString(solved);
    if(qname.length()!=0 && qtag.length()!=0 && solve.length()!=0 && qdesc.length()!=0)
    {
    query="insert into problemset values ('"+col+"','"+qname+"','"+qtag+"','"+solve+"','"+qdesc+"')";
    System.out.println("hi");
    st.executeUpdate(query);
    }
    response.sendRedirect("testcase.jsp");
%>