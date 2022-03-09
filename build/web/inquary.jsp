<%-- 
    Document   : inquary
    Created on : Feb 4, 2017, 10:27:52 AM
    Author     : prachi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
String name=request.getParameter("iname");            
String mob=request.getParameter("imobile");
String email=request.getParameter("iemailid");
String msg=request.getParameter("imessage");
       
 try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
     String s="insert into inquiry values('"+name+"','"+mob+"','"+email+"','"+msg+"')";
   PreparedStatement  ps=con.prepareStatement(s);
      ps.executeUpdate();
      out.println("<br>");
out.println("<br><br><center><font face=Arial size=5 color=levender>Respone will come ... soon as possible</font>");
out.println("<br><br><center><a href=index.jsp>Back</a>");
}
catch(Exception e)
{}
 %>
    </body>
</html>
