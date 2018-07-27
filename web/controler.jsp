<%-- 
    Document   : controler
    Created on : 28 Sep, 2017, 7:58:52 AM
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
        <title>redirect</title>
    </head>
    <body>

        <%
           String bjp = request.getParameter("bjp");
           //out.println("you voted for "+bjp);
           
           String cong = request.getParameter("cong");
           //out.println("you voted for "+cong);
            
           String aadhar = (String)session.getAttribute("aadhar");
           //out.println(aadhar);
          
           String voterid = (String)session.getAttribute("voterid");
           //out.println(proofvalue); 
           
           if(!(aadhar==null)){
               
           
           if(!(bjp ==null)) {
            try{
                session.setAttribute("voted", bjp);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "insert into bjp select * from nonvoted where aadhar='"+aadhar+"'";
                    out.println(printQuery);
                   
                    state.execute(printQuery);
                    String deleteQuery = "delete from nonvoted where aadhar='"+aadhar+"'";        
                    state.execute(deleteQuery);
                    response.sendRedirect("final.jsp");                    
                }
            }catch(Exception e){
                out.println(e);
                }
            }
if(!(cong==null)){
    try{        
                session.setAttribute("voted", cong);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "insert into cong select * from nonvoted where aadhar='"+aadhar+"'";
                    out.println(printQuery);
                   
                    state.execute(printQuery);
                    String deleteQuery = "delete from nonvoted where aadhar='"+aadhar+"'";        
                    state.execute(deleteQuery);
                    response.sendRedirect("final.jsp");                    
                }
            }catch(Exception e){
                out.println(e);
                }
}
          if(!(bjp ==null)) {
            try{
                session.setAttribute("voted", bjp);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "insert into bjp select * from nonvoted where voterid='"+voterid+"'";
                    out.println(printQuery);
                   
                    state.execute(printQuery);
                    String deleteQuery = "delete from nonvoted where voterid='"+voterid+"'";        
                    state.execute(deleteQuery);
                    response.sendRedirect("final.jsp");                    
                }
            }catch(Exception e){
                out.println(e);
                }
            }
if(!(cong==null)){
    try{        
                session.setAttribute("voted", cong);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/svote", "root", "");
                Statement state = connect.createStatement();
                if (!connect.isClosed()) {
                    String printQuery = "insert into cong select * from nonvoted where voterid='"+voterid+"'";
                    out.println(printQuery);
                   
                    state.execute(printQuery);
                    String deleteQuery = "delete from nonvoted where voterid='"+voterid+"'";        
                    state.execute(deleteQuery);
                    response.sendRedirect("final.jsp");                    
                }
            }catch(Exception e){
                out.println(e);
                }
}
           }
       
        %>
    </body>
</html>
