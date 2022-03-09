<%-- 
    Document   : companylog1
    Created on : Jan 26, 2017, 4:52:55 PM
    Author     : prachi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Naukari Hub|Company Login</title>
    </head>
    <body>
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
                                                              <td><font face="Snap ITC" color="white"><h2> Company Login</h2></font></td>
                                </tr>
                            
                        </table>

        </td>
                    <td width="150px">
                        
                        
                        <font face="Trebuchet MS" size="4" color="#EF9A55">  <a href="index.jsp" >Back</a></font>
                </tr>
            
               
        </table>
        <table border="0" align="center">
                <tr>
                    <td width="1000" height="50px" bgcolor="#EF9A55"><marquee><h><font face="Snap ITC" color="white" size="4"> Company Details</font> </marquee></td>
                </tr>
            
        </table>
        <br>
        <br>
        <form action="companylog2.jsp" method="post">
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
