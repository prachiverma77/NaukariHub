<%-- 
    Document   : studentlogin
    Created on : Jan 20, 2017, 11:38:16 AM
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
        <style>
            
            a:link
            {
                
                text-decoration: none;
                color:white;
            }
              a:visited
            {
                
                text-decoration: none;
                color:white;
            }
              a:active
            {
                
                text-decoration: none;
                color:white;
            }
              a:hover
            {
                
                text-decoration:underline;
                color:white;
            }
            </style>
    
    </head>
    <body>
       <table border="0" height="20px" width="100%" align="center" bgcolor="#1D2275">
            
                <tr>
                    <td></td>
                </tr>
           
        </table>
        
        <table border="0" align="center" width="1000px" height="100px" bgcolor="#C1D5E0">
            
                <tr>
                    <td width="300px">
                        <font face="Snap ITC" size="5" color="white"><h2> Naukari Hub</h2></font><hr>
                        <font face="Trebuchet MS" size="3" color="#EF9A55"><p>Beyond the Thinking</p></font>
                    </td>
                    <td width="650px"><table border="0" align="center" size="5">
                                                          <tr>
                                                              <td><font face="Snap ITC" color="white"><h2> Finder Log in</h2></font></td>
                                </tr>
                            
                        </table>

        </td>
                    <td width="150px">
                        
                        
                        <font face="Trebuchet MS" size="4" color="#EF9A55">  <a href="index.jsp" >Back</a></font>
                </tr>
            
               
        </table>
        <table border="0" align="center">
                <tr>
                    <td width="1000" height="50px" bgcolor="#EF9A55"><marquee><h><font face="Snap ITC" color="white" size="4"> Finder Details</font> </marquee></td>
                </tr>
            
        </table>
        <br>
        <br>
        <form action="studentlogin2.jsp" method="post">
        <table border="0" align="center">
            
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="lid" value="" /></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><input type="password" name="lpass" value="" /></td>
                </tr>
             <tr>
                 <td><input type="submit" value="Search" /></td>
                 <td><input type="submit" value="Cancel" /></td>
                </tr>
        </table>
        </form>
        
       
    </body>
</html>
