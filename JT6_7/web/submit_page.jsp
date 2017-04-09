 <HTML>
<HEAD>
<TITLE>Display file upload form to the user</TITLE>
<script>
    
</script>
</HEAD>
<BODY>
<FORM  ACTION="compile_page.jsp" METHOD=POST>
<br>
<br>
<br>
<center>
<table border="0" bgcolor=#ccFDDEE>
      <tr>
            <center>
            <td colspan="2" align="center"><B>Submit THE FILE</B>
            <center>
            </td>
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr>
            <td><b>Choose the file To Submit:</b></td>
            <td><INPUT NAME="myfile" TYPE="file" id="file"></td>
            
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr><SCRIPT>
          if(document.getElementsById("file")==null)
          {
              alert('Must Select file for upload!');
          }
      </script>
            <td colspan="2" align="center"><input type="submit"
                  value="Submit"></td>
      </tr>
      <table>
          
            </center>
            </FORM>
</BODY>
</HTML>
