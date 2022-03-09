<%-- 
    Document   : findershow
    Created on : Jan 19, 2017, 11:04:26 AM
    Author     : prachi
--%>

<%@page import="java.sql.ResultSet"%>
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
String fname=request.getParameter("fname");            
        
String fquali=request.getParameter("fquali");
String fjob=request.getParameter("fjob");
String g=request.getParameter("g");
String fid=request.getParameter("fid");
String fmail=request.getParameter("fmail");
String fpass=request.getParameter("fpass");
String fmob=request.getParameter("fmob");
String fstat=request.getParameter("fstat");
String fexp=request.getParameter("fexp");
String fregion=request.getParameter("fregion");

int flag=0;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  

String sr="select *from finder where id='"+fid+"'";
PreparedStatement  pss=con.prepareStatement(sr);
ResultSet rs=pss.executeQuery();
      while(rs.next())
      {
            
         flag=1;
         
      }
      
if(flag==1)
{
out.println("<br><Br><Br><br><font color=red><b><center>This id already exists</center></b></font>");

out.println("<br><br><a href=finderreg.jsp><center><u>Back</u></center></a>");
}
if(flag==0)
{

String s="insert into finder values('"+fname+"','"+fquali+"','"+fjob+"','"+g+"','"+fid+"','"+fmail+"','"+fpass+"','"+fmob+"','"+fstat+"','"+fexp+"','"+fregion+"')";
 
PreparedStatement  ps=con.prepareStatement(s);
      
ps.executeUpdate();

 out.println("<font color=levender size=5>registerd</font>");

}
}
catch(Exception e)
{}

             %>
 
    </body>
</html>
