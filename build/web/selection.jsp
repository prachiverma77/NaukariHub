<%-- 
    Document   : selection
    Created on : Jan 24, 2017, 11:53:58 AM
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
        <title>selected</title>
    </head>
    <body>
        <%
            String fname="",femail="",fqual="",fjob="",freg="",creg1="",cweb="",cname="",cjob1="",cjob2="",cjob3="",cjob4="",cjob5="",cjob6="",creg2="",creg3="",creg4="",creg5="",creg6="";
       try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","naukarihub","123456");  

String fs="select *from finder";

        String cs="select *from company1";
        PreparedStatement  fss=con.prepareStatement(fs);
ResultSet frs=fss.executeQuery();
PreparedStatement  css=con.prepareStatement(cs);

ResultSet crs=css.executeQuery();
while(frs.next())
{
    
fname=frs.getString("name");
femail=frs.getString("email");
fqual=frs.getString("qualification");
fjob=frs.getString("job_title");
freg=frs.getString("region");

while(crs.next())
{
    
    cname=crs.getString("name");
cweb=crs.getString("website");
cjob1=crs.getString("job1");
cjob2=crs.getString("job2");
cjob3=crs.getString("job3");
cjob4=crs.getString("job4");
cjob5=crs.getString("job5");
cjob6=crs.getString("job6");
creg1=crs.getString("area1");
creg2=crs.getString("area2");
creg3=crs.getString("area3");
creg4=crs.getString("area4");
creg5=crs.getString("area5");
creg6=crs.getString("area6");


if((fjob.equals(cjob1)||fjob.equals(cjob2)||fjob.equals(cjob3)||fjob.equals(cjob4)||fjob.equals(cjob5)||fjob.equals(cjob6)) && (freg.equals(creg1)||freg.equals(creg2)||freg.equals(creg3)||freg.equals(creg4)||freg.equals(creg5)||freg.equals(creg6)))
{
    out.println("<br>");
    out.println("<br>");
out.println("<center><font color=levender size=4>Finder Name="+fname);
out.println("<br>");
out.println("<center><font color=levender size=4>Comapny Name="+cname);
out.println("<center><font color=levender size=4>Job="+fjob);
out.println("<center><font color=levender size=4>Region="+freg);
}
}
}

}
        catch(Exception e)
                {}
        %>
        
    </body>
</html>
