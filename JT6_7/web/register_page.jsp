<%@page import="java.util.Random"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <style>
            .fie
            {
                width: 250px;
                height:70px;
                background: #ADFF2F;
                border: 6px solid #008000;
                
            }
            .sey
            {
                width: 750px;
                height:400px;
                background: #ADFF2F;
                border: 6px solid #008000;
            }
            body
            {
                background-image: url("images.jpg");
            }
        </style>
    </head>
    <body >
        <%!
        
        int cnt=0;
        Connection  conn;
        Statement st=null;
        ResultSet rs=null;
        String query;
        %>
        <% 
            System.out.println(cnt);
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
            System.out.println("Connection Established!");
            st=(Statement)conn.createStatement();
            query="select count(count) from visitcount";
            rs=st.executeQuery(query);
            while(rs.next())
            {
                cnt=rs.getInt(1);
            }
            cnt++;
            query="insert into visitcount values ('"+cnt+"');";
            st.executeUpdate(query);
        %>
            <h1><center><div class="fie"><center>Register Page</center></div></center></h1>
    <h1 margin='50% 0% 0% 0%' align='right' >  <% 
        
         
         try
         {
             String h=request.getParameter("msg").toString();
             
             if(h!=null && h.length()!=0)
             out.print("<font color='yellow' size='10px' >"+h+"</font>");
         }
         catch(Exception e)
         {
          //out.print("<font color='purple' size='300px'>"+request.getParameter("msg")==null?"op":request.getParameter("msg"));   
         }
             
        
    %></h1>
           
    <center>
        
        <div class="sey">
            
            
            <form name="register_form" action="insert_user_data.jsp">
                <table border="0" cellspacing="1" cellpadding="1">
                    
                    <tbody>
                        <tr>
                            <td><h2>Handle</h2></td>
                            <td><input type="text" name="handle" value="" size="20" /></td>
                        </tr>
                        <tr>
                            <td><h2>Username</h2></td>
                            <td><input type="text" name="username" value="" size="20" /></td>
                        </tr>
                        <tr>
                            <td>  <h2>Password</h2></td>
                            <td><input type="password" name="password" value="" size="20" /></td>
                        </tr>
                        <tr>
                            <td><h2>Confirm Password</h2></td>
                            <td><input type="password" name="cpassword" value="" size="20" /></td>
                        </tr>
                        <tr>
                            <td> <h2>E-mail</h2></td>
                            <td><input type="text" name="email" value="" size="20" /></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" value="Register" name="register" />
            </form>
                
        </div>
        </center>
        <%
    response.setIntHeader("Refresh", 60);
    
%>
    <h2><font color="green">No. of visitors visiting this site RIGHT NOW:<%= cnt %></font></h2>
   
    </body>
</html>
