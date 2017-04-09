
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
        <h1>Data insertion</h1>
     <script>
            function doof()
            {var ask = window.alert("This handle is already Taken! Try Another....");
                if(alert(ask))   
            {
                document.location="C:\Users\Pratik\Documents\NetBeansProjects\JT6_7\build\web\register_page.jsp";
            }
            else
            {
       document.location="C:\Users\Pratik\Documents\NetBeansProjects\JT6_7\build\web\register_page.jsp";
                
            }
        }</script>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jt6", "root","");
        System.out.println("Connection Established!");
        st=(Statement)conn.createStatement();
        String handle=request.getParameter("handle");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        String email=request.getParameter("email");
        System.out.println(handle);
        
        if(handle.length()!=0 || username.length()!=0 || cpassword.length()!=0 || password.length()!=0 || email.length()!=0)
        {
            if(password.matches(cpassword))
            {System.out.println("flag1="+flag);
                 if((email.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")))
                 {
       
                     String query="select handle from codeforces where handle='"+handle+"';";
                    
                     rs=st.executeQuery(query);
                     if(rs.next())
                     {  
                         System.out.println("Already");
                         
                        
                         flag=2;
                     }
                     else
                     {
                        String query1="insert into codeforces values ('"+handle+"','"+username+"','"+password+"','"+email+"')";
                        st.executeUpdate(query1);
                        response.sendRedirect("login_page.jsp"); 
                        flag=1;
                     }
                 }       
            }
        }
        System.out.println("flag="+flag);
        if(flag==0 )
        {
            
           response.sendRedirect("register_page.jsp");
              //response.sendRedirect("register_page");
        }
        if(flag==2)
        {
            out.println("<h1 style='color:yellow'>Already Exists</h1>");
            String x="Handle Already Exists";
           
                String name=x;
                //request.setAttribute("Name",name);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/register_page.jsp?msg="+name);
                rd.forward(request, response); 
            //response.sendRedirect("register_page.jsp");
            
            
            System.out.println("Already2");
        }
        
%>

        
       
        
    </body>
</html>
<%!
    String handle="";
    String username="";
    String password="";
    String cpassword="";
    String email="";
    Connection conn;
    Statement st;
    ResultSet rs;
    int flag=0;
    
%>
