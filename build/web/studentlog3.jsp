<%-- 
    Document   : studentlog3
    Created on : Jan 20, 2017, 10:59:36 PM
    Author     : prachi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("fid");
         String qual=request.getParameter("fqual");
         String job=request.getParameter("fjob");
         String email=request.getParameter("femail");
         String mob=request.getParameter("fmob");
         String stat=request.getParameter("fstat");
         String exp=request.getParameter("fexp");
         String reg=request.getParameter("freg");
          String name=request.getParameter("fname");
          String g=request.getParameter("fg");
         
        try
{
    
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
     String s="update finder set qualification='"+qual+"',job_title='"+job+"',email='"+email+"',mob='"+mob+"',status='"+stat+"',experience='"+exp+"',region='"+reg+"' where id='"+id+"'";
   PreparedStatement  ps=con.prepareStatement(s);
     ps.executeUpdate();
     out.println("<br><font color=levender size=5><center>Updated</center></font>");
}
        catch(Exception e)
        {}
        
    
%>
    </body>
</html>
