<%-- 
    Document   : testcase
    Created on : Apr 2, 2017, 11:21:27 AM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TestCase  Page</title>
    </head>
    <body>
        <form name="test_form" action="upload_page.jsp" ENCTYPE="multipart/form-data" method="post"> 
            <table border="0">

                <tbody>
                    <tr>
                        <td><b>Choose the Test Case File:</b></td>
                        <td><INPUT NAME="file" TYPE="file"></td>
                    </tr>
                </tbody>
                
            </table>
        
        <br><br><br>
        <input type="submit" value="Upload Test Case File" name="tsubmit"   />
        </form>
    </body>
</html>
