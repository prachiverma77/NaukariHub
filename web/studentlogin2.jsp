<%-- 
    Document   : studentlogin2
    Created on : Jan 20, 2017, 10:26:09 PM
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
int flag=0;

String fid=request.getParameter("lid");
String fpass=request.getParameter("lpass");
String name="",qual="",job="",g="",email="",mob="",stat="",exp="",reg="";
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
String sr="select *from finder where id='"+fid+"'and password='"+fpass+"'";
PreparedStatement  pss=con.prepareStatement(sr);
ResultSet rs=pss.executeQuery();

      while(rs.next())
      {
           name=rs.getString("name");
           qual=rs.getString("qualification");
          job=rs.getString("job_title");
          g=rs.getString("gender");
          email=rs.getString("email");
          mob=rs.getString("mob");
          stat=rs.getString("status");
          exp=rs.getString("experience");
          reg=rs.getString("region");
         
            
       flag=1;
         
      }
      
if(flag==1)
{
 out.println("<form  method=post action=studentlog3.jsp>");
      out.println("<br><Br><Br><br><font color=levender size=4><center>ID:<input type=text name=fid value='"+fid+"' readonly=readonly</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Name:<input type=text name=fname value='"+name+"' readonly=readonly</center></font>");
    out.println("<br>");
   out.println("<br><font color=levender size=4><center>Qualification:<input type=text name=fqual value='"+qual+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Job title:<input type=text name=fjob value='"+job+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Gender:<input type=text name=fg value='"+g+"' readonly=readonly</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Email:<input type=text name=femail value='"+email+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Contact:<input type=text name=fmob value='"+mob+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Status:<input type=text name=fstat value='"+stat+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Experience:<input type=text name=fexp value='"+exp+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Region:<input type=text name=freg value='"+reg+"'</center></font>");
    out.println("<br>");
    
    
    
    out.println("<br>");
    
      out.println("<input type=Submit  value=Update>");
    out.println("<br>");
    out.println("</form>");
       
}
}
catch (Exception e) 
{ }  
%>
    </body>
</html>
