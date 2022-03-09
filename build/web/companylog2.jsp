<%-- 
    Document   : companylog2
    Created on : Jan 26, 2017, 5:24:15 PM
    Author     : prachi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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

String cid=request.getParameter("lid");
String cpass=request.getParameter("lpass");
String name="",add="",web="",cont="",type="",job1="",job2="",job3="",job4="",job5="",job6="",area1="",area2="",area3="",area4="",area5="",area6="";
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  
String sr="select *from company1 where id='"+cid+"'and password='"+cpass+"'";
PreparedStatement  pss=con.prepareStatement(sr);
ResultSet rs=pss.executeQuery();

      while(rs.next())
      {
           name=rs.getString("name");
           add=rs.getString("address");
          web=rs.getString("website");
          cont=rs.getString("contact_num");
          job1=rs.getString("job1");
          job2=rs.getString("job2");
          job3=rs.getString("job3");
          job4=rs.getString("job4");
          job5=rs.getString("job5");
          job6=rs.getString("job6");
          type=rs.getString("company_type");
          area1=rs.getString("area1");
          area2=rs.getString("area2");
          area3=rs.getString("area3");
          area4=rs.getString("area4");
          area5=rs.getString("area5");
          area6=rs.getString("area6");
         
            
       flag=1;
         
      }
      
if(flag==1)
{
 out.println("<form  method=post action=companylog3.jsp>");
      out.println("<br><Br><Br><br><font color=levender size=4><center>ID:<input type=text name=cid value='"+cid+"' readonly=readonly</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Name:<input type=text name=name value='"+name+"'</center></font>");
    out.println("<br>");
   out.println("<br><font color=levender size=4><center>Address:<input type=text name=add value='"+add+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Contact num.:<input type=text name=cont value='"+cont+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Company Type<input type=text name=type value='"+type+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Password:<input type=text name=pass value='"+cpass+"'</center></font>");
    out.println("<br>");
        out.println("<br><font color=levender size=4><center>Website:<input type=text name=web value='"+web+"'</center></font>");
    out.println("<br>");
 
     out.println("<br><font color=levender size=4><center>Area1:<input type=text name=area1 value='"+area1+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Area2:<input type=text name=area2 value='"+area2+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Area3:<input type=text name=area3 value='"+area3+"'</center></font>");
 out.println("<br>");
     out.println("<br><font color=levender size=4><center>Area4:<input type=text name=area4 value='"+area4+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Area5:<input type=text name=area5 value='"+area5+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Area6:<input type=text name=area6 value='"+area6+"'</center></font>");
    out.println("<br>");
     out.println("<br><font color=levender size=4><center>Job1:<input type=text name=job1 value='"+job1+"'</center></font>");
    out.println("<br>");
    out.println("<br><font color=levender size=4><center>Job2:<input type=text name=job2 value='"+job2+"'</center></font>");
    out.println("<br>");
    out.println("<br><font color=levender size=4><center>Job3:<input type=text name=job3 value='"+job3+"'</center></font>");
    out.println("<br>");
    out.println("<br><font color=levender size=4><center>Job4:<input type=text name=job4 value='"+job4+"'</center></font>");
    out.println("<br>");
    out.println("<br><font color=levender size=4><center>Job5:<input type=text name=job5 value='"+job5+"'</center></font>");
    out.println("<br>");
    out.println("<br><font color=levender size=4><center>Job6:<input type=text name=job6 value='"+job6+"'</center></font>");
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
