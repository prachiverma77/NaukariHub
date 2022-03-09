<%-- 
    Document   : companyreg
    Created on : Jan 13, 2017, 9:57:40 PM
    Author     : prachi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            
            function checkfield(cregis)
{
	ok=true
	if(cregis.cname.value=="")
	{
		alert("Please Enter Name of The Company!!")
		cregis.cname.focus()
		ok=false
	}
	
	
	else if (cregis.cadd.value == "")
	{
		alert("Please Enter location of Company");
		cregis.cadd.focus();
		ok=false
	}
		
	else if (cregis.cweb.value == "")
	{
		alert("Please enter a value for the Website field.");
		cregis.cweb.focus();
		ok=false
	}
	
	else if (cregis.cnum.value == "")
	{
		alert("Please Enter Contact here.");
		cregis.cnum.focus();
		ok=false
	}
	else if (cregis.ctype.value == "")
	{
		alert("Please Enter Type of Company here.");
		cregis.ctype.focus();
		ok=false
	}
        else if (cregis.cid.value == "")
	{
		alert("Please Enter id here.");
		cregis.cid.focus();
		ok=false
	}
	
	
	else if (cregis.cpass.value == "")
	{
		alert("Please Genrate any Password here.");
		cregis.cpass.focus();
		ok=false
	}
	
	
	return ok
}


            
            
            
            
            </script>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Naukari Hub/Company Registration</title>
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
 
                            <font face="Snap ITC" size="5" color="white"><h2>Company Registrion</h2></font>
                        </table>
                    </td>
                    <td width="150px">
                         <font face="Trebuchet MS" size="4" color="#EF9A55">  <a href="index.jsp" >Back</a></font>
                
                    </td>
                        
                        
                </tr>
            
               
        </table><table border="0" align="center">
                <tr>
                    <td width="1000" height="50px" bgcolor="#EF9A55"><marquee><h><font face="Snap ITC" color="white" size="4">Create your Account Details</font> </marquee></td>
                </tr>
            
        </table>
        <br>
        <br>

        <br>
        <br>
                        
                        <table border="0" align="center">
                        <form name="cregis" method="POST" action="companyshow.jsp" onSubmit="return checkfield(cregis)">
                           
                                                                 <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Company Name :</td>
                                        <td><input type="text" name="cname" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Address :</td>
                                        <td><input type="text" name="cadd" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Company Website :</td>
                                        <td><input type="text" name="cweb" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Contact Num. :</td>
                                        <td><input type="text" name="cnum" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Job Title :</td>
                                        <td>IT Software<input type="checkbox" name="c1" value="IT Software" />BPO<input type="checkbox" name="c2" value="BPO" />Finance<input type="checkbox" name="c3" value="Finance" />Marketing<input type="checkbox" name="c4" value="Marketing" />Telecom<input type="checkbox" name="c5" value="Telecom" />Web Developer<input type="checkbox" name="c6" value="Web Developer" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Berlin Sans FB" color="104843">Company type :</td>
                                        <td><input type="text" name="ctype" value="" /></td>
                                    </tr>
                                    <tr>
                                       <td><font face="Berlin Sans FB" color="104843">Job providing area :</td>
                                       <td><input type="checkbox" name="ch1" value="Delhi" />Delhi<input type="checkbox" name="ch2" value="UP" />UP<input type="checkbox" name="ch3" value="MP" />MP<input type="checkbox" name="ch4" value="Hariyana" />Hariyana<input type="checkbox" name="ch5" value="Maharasht" />Maharasht<input type="checkbox" name="ch6" value="Gujrat" />Gujrat</td>                                    </tr>
                                    <tr><td><font face="Berlin Sans FB" color="104843">Id</td>
                                        <td><input type="text" name="cid" value="" /></td></tr>
                                    <tr><td><font face="Berlin Sans FB" color="104843">Password</td>
                                        <td><input type="password" name="cpass" value="" /></td></tr>
                                    <tr><td><input type="submit" value="Register Now" /></td>
                                        <td><input type="reset" value="Cancel" /></td></tr>
                                     <tr><td></td></tr>
                                       <tr><td></td></tr>
                   <tr><td></td></tr>
                 <tr><td></td></tr>
                   <tr><td></td></tr>
                <tr><td></td></tr>
                                    <tr><td><input type="checkbox" name="cterm" value="ON" /><font face="Cooper" color="#C10909"> I agree the T&C.</td> </tr>
                        </form>
                        </table>
        <br>
        <br>

                        
       <table border="0" height="20px" width="100%" align="center" bgcolor="#1D2275">
            
                <tr>
                    <td></td>
                </tr>
           
        </table>
                  
                        
                        
                        
                        

    </body>
</html>
