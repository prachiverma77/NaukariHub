<%-- 
    Document   : companyshow
    Created on : Jan 19, 2017, 12:28:56 PM
    Author     : prachi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle.net.aso.g"%>
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
                         int flag=0;
String cname=request.getParameter("cname");            
        
String cadd=request.getParameter("cadd");
String cweb=request.getParameter("cweb");
String cnum=request.getParameter("cnum");
String c1=request.getParameter("c1");
String c2=request.getParameter("c2");
String c3=request.getParameter("c3");
String c4=request.getParameter("c4");
String c5=request.getParameter("c5");
String c6=request.getParameter("c6");
String ctype=request.getParameter("ctype");
String ch1=request.getParameter("ch1");
String ch2=request.getParameter("ch2");
String ch3=request.getParameter("ch3");
String ch4=request.getParameter("ch4");
String ch5=request.getParameter("ch5");
String ch6=request.getParameter("ch6");
String id=request.getParameter("cid");
String pass=request.getParameter("cpass");
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
String sr="select *from company1 where id='"+id+"'";

PreparedStatement  ps=con.prepareStatement(sr);
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
            
         flag=1;
         
      }
      
if(flag==1)
{
out.println("<br><Br><Br><br><font color=red><b><center>This id already exists</center></b></font>");

out.println("<br><br><a href=companyreg.jsp><center><u>Back</u></center></a>");
}
if(flag==0)
{
String s="insert into company1 values('"+cname+"','"+cadd+"','"+cweb+"','"+cnum+"','"+c1+"','"+c2+"','"+c3+"','"+c4+"','"+c5+"','"+c6+"','"+ctype+"','"+ch1+"','"+ch2+"','"+ch3+"','"+ch4+"','"+ch5+"','"+ch6+"','"+id+"','"+pass+"')";
 
PreparedStatement  pss=con.prepareStatement(s);

pss.executeUpdate();
 out.println("<br><Br><Br><br><font color=levender size=5>Registerd</font>");

}
}
catch(Exception e)
{}

             %>
 

    </body>
</html>
