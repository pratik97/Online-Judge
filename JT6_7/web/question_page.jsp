<%-- 
    Document   : question_page
    Created on : Mar 25, 2017, 12:14:55 AM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Page</title>
        <style>
            .iu
            {
                background-color: darkorchid;
                color:yellow;
                display: inline-block;
                margin: 10px;
                font-size: 30px;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);

            }
            body{
                background-color:rgb(107, 174, 216); 
            }
            a:visited{
                color:yellow;
            }
        </style>
    </head>
    <body>
        <div align="right">
            <font color="yellow" size="5"><a href="logout.jsp">Logout</a></font>
        </div>
        <form name="question_form" action="insert_question.jsp"  method="post">
            <table border="0">

                <tbody>
                    <tr>
                        <td><h2>Question-name: </h2></td>
                        <td><input type="text" name="question_name" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td> <h2>Question-description:</h2></td>
                        <td> <textarea name="question_desc" rows="8" cols="100">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td><h2>Question-Tags:</h2></td>
                        <td> <input type="text" name="question_tag" value="" size="30" /></td>
                    </tr>
                    
                </tbody>
            </table>
            <center>
                <div>
                    <input type="submit" value="Upload Testcases" name="qsubmit"  class="iu" />
                </div>
            </center>
        </form>  
    </body>

</html>
