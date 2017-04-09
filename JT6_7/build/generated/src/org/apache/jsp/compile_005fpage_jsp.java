package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Scanner;
import java.io.OutputStreamWriter;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.InputStream;
import java.io.IOException;
import java.io.File;
import javax.servlet.annotation.MultipartConfig;
import java.io.InputStreamReader;
import java.io.BufferedReader;

public final class compile_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Compile Page</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            System.out.println("Hurray");
            
          
           String cfile=request.getParameter("myfile");
           System.out.println(cfile);
           String compilec="C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/"+cfile;
           String res="";//str.substring(0, str.length() - 2);
           String command="g++ C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/"+cfile.substring(0, cfile.length() - 4)+".out";
           String location="C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/";
           
           
               System.out.println("compiling c++ file.");
 //              ProcessBuilder  pb=new ProcessBuilder(cmd1);
               Process compile=Runtime.getRuntime().exec("g++ "+compilec+" -o "+compilec);
               //OutputStream stdin = compile.getOutputStream ();
              // InputStream stderr = compile.getErrorStream ();
              // InputStream stdout = compile.getInputStream ();
               BufferedReader erreader = new BufferedReader (new InputStreamReader(compile.getErrorStream ()));
               BufferedReader op = new BufferedReader(new InputStreamReader(compile.getInputStream ()));
               BufferedWriter writer=new BufferedWriter(new OutputStreamWriter(compile.getOutputStream()));
               
               String error=erreader.readLine();
               while(erreader.readLine()!=null)
               {
                   error=erreader.readLine();
                   out.println(error);
               }
               System.out.println("ready to run");
               /*String output=op.readLine();
               while(op.readLine()!=null)
               {
               
                   output=op.readLine();
                   System.out.println(output);
               }  
               */
               Process run=Runtime.getRuntime().exec(compilec+".out");
               BufferedReader er = new BufferedReader (new InputStreamReader(run.getErrorStream ()));
               BufferedReader op1 = new BufferedReader(new InputStreamReader(compile.getInputStream ()));
               
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
