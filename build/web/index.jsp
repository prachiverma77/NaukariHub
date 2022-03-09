<%-- 
    Document   : index
    Created on : Jan 10, 2017, 11:22:43 AM
    Author     : prachi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script>
            
            function checkfield(form1)
{
	ok=true
	if(form1.iname.value=="")
	{
		alert("Please Enter Your Name.")
		form1.iname.focus()
		ok=false
	}
	
	
	else if (form1.imobile.value == "")
	{
		alert("Please Enter Your Contact Number .");
		form1.imobile.focus();
		ok=false
	}
		
	else if (form1.iemailid.value == "")
	{
		alert("Please enter a value for the email field.");
		form1.iemailid.focus();
		ok=false
	}
	else if (!isEmailAddr(form1.iemailid.value))
	{
		alert("Please enter a complete email address in the form");
		form1.iemailid.focus();
		ok=false
	}
	else if (form1.imessage.value == "")
	{
		alert("Please Enter Quary here.");
		form1.imessage.focus();
		ok=false
	}
	
	
	
	return ok
}
function isEmailAddr(femail)
{
  var result = false
  var theStr = new String(iemailid)
  var index = theStr.indexOf("@");
  if (index > 0)
  {
	var pindex = theStr.indexOf(".",index);
	if ((pindex > index+1) && (theStr.length > pindex+1))
	result = true;
  }
  return result;
}

            
            
            
            
            </script>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NaukariHub.com</title>
        
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
    <body bgcolor="#EDEEF5">
        <table border="0" height="20px" width="100%" align="center" bgcolor="#1D2275">
            
                <tr>
                    <td></td>
                </tr>
           
        </table>
        <table border="0" align="center" width="1000px" height="100px" bgcolor="#C1D5E0">
            
            <tr><td width="300px">
                   <font face="Maiandra GD" size="5" color="white"><h2> Naukari Hub</h2></font><hr>
    <font face="Maiandra GD" size="3" color="white">Beyond the Thinking</font>
                    </td>
     <td width="650px"><marquee><font face="Arial Rounded MT" size="5" color="white">Start Where you are and Move Toward Who you Want to be</font></marquee></td>
                    <td width="150px">
                        <table border="0" aligin="left" width="140px">
                            <tr><td><font face="Trebuchet MS" size="3" color="#104843"><a href="companylog1.jsp"> Company Login</a></font></td></tr>
                            <tr><td><font face="Trebuchet MS" size="3" color="#104843"><a href="studentlogin.jsp">Student Login</a></font></td></tr>
                           <tr><td><font face="Trebuchet MS" size="3" color="#104843"><a href="selection.jsp"> Selected</a></font></td>
                    
                            
                        </table>
                        
                        
                </tr>
            
               
        </table>

           <table border="0" width="800px" height="200" align="center">
               <tr><td><img src="img/img.jpg" width="800px" height="200" alt="img"/>

                </td></tr>
        </table>
        
        <table border="1" width="1000" align="center" height="40px" bgcolor="#EF9A55">
            
                <tr>
                                   
                    <td><font face="Arial Rounded MT" color="white"><a href="index.jsp"> HOME</a></font></td>
                    <td><font face="Arial Rounded MT" color="white"><a href="whyus.jsp">WHY US </a></font></td>
                    <td><font face="Arial Rounded MT" color="white"><a href="contact.jsp">CONTACT</a> </font></td>
                    <td><font face="Arial Rounded MT" color="white"><a href="companyreg.jsp">COMPANY REG. </a></font></td>
                    <td><font face="Arial Rounded MT" color="white"><a href="finderreg.jsp">FINDER REG.</a></font></td>
                    <td><font face="Arial Rounded MT" color="white">PORTFOLIO </font></td>
                    
                </tr>
            
        </table>
        <table border="0" width="1000" height="300px" bgcolor="#C1D5E0" align="center">
           
                <tr>
                    <td width="700px">
                        <table border="0">
                            
                                <tr>
                                    <td><font face="Berlin Sans FB" size="4" color="#104843"><p>The Naukari Hub is a website that deals specifically employment or careers. This employment website design to allow employers to post job requirement for a position to be filled and are commonly known as job boards, job search advice,career and describe different job description or employers. job hunters can locate and fill out a job application over the internet for the advertised positions.</p></td>
                                    
                                </tr>
                      
                          
                        </table>

                    </td>
                    <td width="300px">
                        <font face="Arial Rounded MT" size="5" color="#1D20AB"> <h3>Online Inquiry</h3></font>
                        <form method="POST" name="form1" action="inquary.jsp" onSubmit="return checkfield(form1)">
                            
                            <table border="0">
                                    <tr>
                                        <td><font face="Trebuchet MS" size="4" color="#2C6C6E">Name</td>
                                        <td><input type="text" name="iname" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Trebuchet MS" size="4" color="#2C6C6E">Mobile No.</td>
                                        <td><input type="text" name="imobile" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Trebuchet MS" size="4" color="#2C6C6E">Email-Id</td>
                                        <td><input type="text" name="iemailid" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><font face="Trebuchet MS" size="4" color="#2C6C6E">Message</td>
                                                                               <td><textarea name="imessage" rows="3" cols="20">
                                            </textarea></td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" value="Submit" name="subbtn" /></td>
                                        <td></td>
                                    </tr>
                                
                            </table>

                        </form>
                        
                        
                    </td>
            

                </tr>
           
        </table>

        
        <table border="0" width="1000" height="300px" align="center" bgcolor="#A1A5A6">
            
                
             
                <tr>
                    <td width="700"><table border="0">
                            
                                <tr width="200">
                                    <td><h><font face="Arial Rounded MT" color="white">Information:</h></td>
                    <td><font face="Calibri" color="#104843">About us</td>
                                    <td><font face="Calibri" color="#104843">T&C</td>
                                    <td><font face="Calibri" color="#104843">Privacy policy</td>
</tr>
                              <tr width="200">
                                    <td><font face="Arial Rounded MT" color="white">Employers:</td>
                                    <td><font face="Calibri" color="#104843">Post job</td>
                                    <td><font face="Calibri" color="#104843">Access Database</td>
                                    <td><font face="Calibri" color="#104843">Report a problem</td></tr>
                           
                                <tr width="200">
                                    <td><font face="Arial Rounded MT" color="white">Job Seeker:</td>
                                    <td><font face="Calibri" color="#104843">Search Job</td>
                                    <td><font face="Calibri" color="#104843">Login</td>
                                    <td><font face="Calibri" color="#104843">Report a problem</td>
                                </tr>
                       
                               
                           
                        </table>
                    </td>
                    <td width="300">
                        <font face="Arial Rounded MT" size="5" color="#1D20AB">  <h3>Contact Us On</h3></font>
                        <table border="0">
                            
                                <tr>
                                    <td><font face="Trebuchet MS" color="#2C6C6E"><b>Email:</b></font></td>
                                    <td><font face="Trebuchet MS" color="#BACDCE"><b>naukarihub@gmail.com</b></td>
                                   
                                </tr>
                                <tr>
                                    <td><font face="Trebuchet MS" color="#2C6C6E"><b>Phone num:</b></font></td>
                                    <td><font face="Trebuchet MS" color="#BACDCE"></b>999999998</b></td>
                                </tr>
                                <tr>
                                    <td><font face="Trebuchet MS" color="#2C6C6E"><b>Twitter:</b></font></td>
                                    <td><font face="Trebuchet MS" color="#BACDCE"><b>NaukariHub0011@</b></td>
                                </tr>
                                <tr>
                                    <td><font face="Trebuchet MS" color="#2C6C6E"><b>Facebook:</b></font></td>
                                    <td><font face="Trebuchet MS" color="#BACDCE"><b>facebook.com/naukarihub</b></td>
                                </tr>
                                </font>
                        </table>

                    </td>
                   
                </tr>
        </table>

                <table border="0" height="20px" width="100%" align="center" bgcolor="#1D2275">
            
                <tr>
                    <td align="left"><font color="white"><i>All Rights Reserved</i></font></td>
                    <td align="right"><font color="white">Powered By:<i>PrachiV</i></font></td>
                </tr>
           
        </table>
        
       
            

    
    </body></html>
