<%-- 
    Document   : validate
    Created on : 28 Sep, 2017, 4:06:23 AM
    Author     : pizzaboy
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*" %>
<%@page import = "java.sql.*" %>
<%@page import = "java.sql.Connection"%> 
<%@page import = "com.mysql.jdbc.Driver"%> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>oops your aadhar is not eligible for voting</h1>
        <%
            String aadhar = request.getParameter("aadhar");
            String voterid = request.getParameter("voterid");
                        
            if(!(aadhar ==null)){
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "select * from nonvoted where aadhar='"+aadhar+"'";
                    ResultSet viewContent = state.executeQuery(printQuery);
                    if(viewContent.next()){
                        aadhar = viewContent.getString("aadhar");
                        response.sendRedirect("vote.jsp");
                        session.setAttribute("aadhar",aadhar);
                    }
                }
            }catch(Exception e){
                out.println(e);
            }
            }
            else if(!(voterid == null)){
                try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "select * from nonvoted where voterid='"+voterid+"'";
                    ResultSet viewContent = state.executeQuery(printQuery);
                    if(viewContent.next()){
                        voterid = viewContent.getString("voterid");
                        response.sendRedirect("vote.jsp");
                        session.setAttribute("voterid",voterid);
                    }
                }
            }catch(Exception e){
                out.println(e);
            }
             }

        %>
    </body>
</html>
