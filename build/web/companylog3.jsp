<%-- 
    Document   : companylog3
    Created on : Jan 26, 2017, 5:50:49 PM
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
String id=request.getParameter("cid");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String add=request.getParameter("add");
String web=request.getParameter("web");
String cont=request.getParameter("cont");
String type=request.getParameter("type");
String job1=request.getParameter("job1");
  String job2=request.getParameter("job2");      
   String job3=request.getParameter("job3");     
String job4=request.getParameter("job4"); 
String job5=request.getParameter("job5");
String job6=request.getParameter("job6");
String area1=request.getParameter("area1");
String area2=request.getParameter("area2");
String area3=request.getParameter("area3");
String area4=request.getParameter("area4");
String area5=request.getParameter("area5");
String area6=request.getParameter("area6");

  try
{
    
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
     String s="update company1 set name='"+name+"',address='"+add+"',website='"+web+"',contact_num='"+cont+"',company_type='"+type+"',password='"+pass+"',job1='"+job1+"',job2='"+job2+"',job3='"+job3+"',job4='"+job4+"',job5='"+job5+"',job6='"+job6+"',area1='"+area1+"',area2='"+area2+"',area3='"+area3+"',area4='"+area4+"',area5='"+area5+"',area6='"+area6+"' where id='"+id+"'";
   PreparedStatement  ps=con.prepareStatement(s);
     ps.executeUpdate();
     out.println("<br><font color=levender size=5><center>Updated</center></font>");
}
        catch(Exception e)
        {}
        
    
        %>
    </body>
</html>
