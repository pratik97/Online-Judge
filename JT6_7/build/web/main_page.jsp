<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <a href="problemset.jsp"></a>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Main Page</title>
        <style>
            #list { background-color: lightgoldenrodyellow; }
            .first { display: inline; border-left: 2px solid; padding-left: 0.3em;
            font-size: 30px;}
            body{
                background-color: lightblue;
            }
            .hello
            {
                font-size: 25px;
                color: orange;
                
            }
        </style>
    </head>
    <body>
        <%!
            String username;
        %>
        
        <meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
        <div align="right">
                <a href="logout.jsp"><font size="5">Logout</font></a>
            </div>
        <div class="hello">
            <%
            username="";
            if(session.getAttribute("handle")!=null)
            username=session.getAttribute("handle").toString();
        %>
            <h2 >&nbsp;Hello <font color="green"><%= username %></font></h2></div>
        <ul id="list">
            <li class="first">&nbsp;<a href="problemset.jsp"><font size="5">Problemset</font>&nbsp;</a></li>
        <li class="first">&nbsp;<a href="status.jsp"><font size="5">Status</font></a>&nbsp;</li>
        <li class="first">&nbsp;<a href="submit_page.jsp"><font size="5">Submit</font></a>&nbsp;</li>
        <li class="first">&nbsp;<a href="question_page.jsp"><font size="5">Problem-Setting</font></a>&nbsp;</li> 
        
        </ul>
        <font color="white" size="5px">
            Codeforces is a Russian website dedicated to competitive programming.
            It was created and is maintained by a group of competitive programmers from Saratov
            State University led by Mikhail Mirzayanov.
            Codeforces provides the following main services to all users:

    participation in the short (2-hours) contests, so-called "Codeforces Rounds", held about once a week;
    participation in educational contests (2-2.5 hours), held 2-3 times per month challenge/hack other 
    contestants solutions; ability to solve problems from previous contests for training purposes;
    "polygon" for creating and testing problems; kind of social-networking through the use of internal public blogs.
    <br><br>
    Contestants are rated by a system similar to ELO. There are usually no prizes for winners, though 2-3
    times a year special contests are held, in which top performing contestants receive T-shirts.
    Some bigger contests (mostly local to a country) are hosted on Codeforces base, among them 
    "Yandex Algorithm 2011", provided by Yandex, one of Russia's largest IT-companies.
            
        
            
        </font>
    </body>
</html>
