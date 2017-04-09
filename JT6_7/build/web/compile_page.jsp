<%-- 
    Document   : compile_page
    Created on : Apr 2, 2017, 1:38:48 PM
    Author     : Pratik
--%>

<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compile Page</title>

    </head>
    <body>
        <%
            System.out.println("Hurray");

            String cfile = request.getParameter("myfile");
            if (cfile == null) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User or password incorrect');");
                out.println("location='submit_page.jsp';");
                out.println("</script>");
            }
            System.out.println(cfile);
            String compilec = "C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/" + cfile;
            String command = "C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/" + cfile.substring(0, cfile.length() - 4);
            //String location = "C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/";
            String icommand = "C:/Users/Pratik/Documents/NetBeansProjects/JT6_7/build/Input/" + cfile.substring(0, cfile.length() - 4);
            String select = "ls " + icommand + "i" + "?.txt", files = "";
            System.out.println(select);
            Process compile = Runtime.getRuntime().exec(select);
            BufferedReader op2 = new BufferedReader(new InputStreamReader(compile.getInputStream()));

            List<String> inputs = new ArrayList<String>();

            while ((files = op2.readLine()) != null) {
                //files = op2.readLine();
                //String files1=op2.readLine();
                System.out.println(files);
                //System.out.println(files1);
                inputs.add(files);

            }

            for (int j = 0; j < inputs.size(); j++) {
                System.out.println(inputs.get(j));
            }
            out.println("Compiling");
            System.out.println("compiling c++ file.");
            compile = Runtime.getRuntime().exec("g++ " + compilec + " -o " + command);
            BufferedReader erreader = new BufferedReader(new InputStreamReader(compile.getErrorStream()));

            String error = "", perror = "";

            int flag = 0;
            //compilation error
            while (erreader.readLine() != null) {
                //System.out.println("error");
                error = erreader.readLine();
                perror += error;
                out.println(error);
                flag = 1;
            }
            erreader.close();
            if (flag == 1) {
                //response.sendRedirect("compilation_error.jsp");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/compilation_error.jsp?msg=" + perror);
                rd.forward(request, response);
            }

            if (flag == 0) {
                out.println("ready to run");
                System.out.println(compile.isAlive());
                compile = Runtime.getRuntime().exec(command + ".exe");
                System.out.println("Running really");
                //for (int o = 0; o < inputs.size(); o++) {
                System.out.println("input" + inputs.get(0));
                File file = new File(inputs.get(0));
                DataInputStream dis = new DataInputStream(new FileInputStream(file));
                int total_length = dis.available();
                System.out.println("ts" + total_length);
                byte[] data = new byte[total_length];
                dis.readFully(data);
                compile.getOutputStream().write(data);
                compile.getOutputStream().flush();

                dis.close();
                String prun = "";
                BufferedReader err = new BufferedReader(new InputStreamReader(compile.getErrorStream()));
                while (err.readLine() != null) {
                    error = err.readLine();
                    prun += error;
                    System.out.println(error);
                    flag = 1;
                }

                err.close();

                InputStream ins = compile.getInputStream();

                String line = null;
                String outputfilename = "C:\\Users\\Pratik\\Documents\\NetBeansProjects\\JT6_7\\build\\output\\" + "abco" + 0 + ".txt";
                System.out.println("output" + outputfilename);
                compile.waitFor();
                BufferedReader in = new BufferedReader(new InputStreamReader(ins));
                BufferedReader correctOutputFile = new BufferedReader(new FileReader(outputfilename));
                System.out.println("upto this");
                try {
                    while ((line = in.readLine()) != null) {
                        System.out.println(line);
                        String answer = correctOutputFile.readLine();

                        if (answer == null || !answer.equals(line)) {
                            flag = 1;//break;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    flag = 1;
                }
                System.out.println("Complete");
                correctOutputFile.close();
                //}

                if (flag != 1) {
                    response.sendRedirect("Accepted_page.jsp");
                } else {

                    //RequestDispatcher rd = getServletContext().getRequestDispatcher("/RTE_page.jsp?msg="+prun);
                    //rd.forward(request, response); 
                    response.sendRedirect("RTE_page.jsp");
                }
                compile.getOutputStream().close();
                compile.destroy();

            }


        %>
    </body>
</html>
