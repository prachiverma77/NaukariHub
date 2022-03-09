<%-- 
    Document   : finderreg
    Created on : Jan 13, 2017, 11:25:51 AM
    Author     : prachi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <script>
            
            function checkfield(freg)
{
	ok=true
	if(freg.fname.value=="")
	{
		alert("Please Enter Your Name!")
		freg.fname.focus()
		ok=false
	}
	
	else if (freg.fquali.value == "")
	{
		alert("Please Enter Your Qualificatin Details!");
		freg.fquali.focus();
		ok=false
	}
        
	else if (freg.fjob.value == "")
	{
		alert("Please Enter The Requird job.");
		freg.fjob.focus();
		ok=false
	}
	
	else if (freg.g.value == "")
	{
		alert("Please Enter Your Gender.");
		freg.g.focus();
		ok=false
	}
        else if (freg.fid.value == "")
	{
		alert("Please Genrated your ID or Enter your emailID");
		freg.faddress.focus();
		ok=false
	}
	
		
	else if (freg.fmail.value == "")
	{
		alert("Please enter a value for the email field.");
		freg.fmail.focus();
		ok=false
	}
	else if (!isEmailAddr(freg.fmail.value))
	{
		alert("Please enter a complete email address in the form");
		freg.fmail.focus();
		ok=false
	}
	
	else if (freg.fpass.value == "")
	{
		alert("Please Genrate Password for Profile.");
		freg.fpass.focus();
		ok=false
	}
	else if (freg.fmob.value == "")
	{
		alert("Please Enter Your Contact Number.");
		freg.fmob.focus();
		ok=false
	}
	else if (freg.fstat.value == "")
	{
		alert("Please Enter Your Status.");
		freg.fstat.focus();
		ok=false
	}
	
	else if (freg.fregion.value == "")
	{
		alert("Please Enter The Region you Want.");
		freg.fregion.focus();
		ok=false
	}
	
	return ok
}
function isEmailAddr(fmail)
{
  var result = false
  var theStr = new String(fmail)
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
        <title>Naukari Hub| Finder Registration</title>
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
                                                              <td><font face="Snap ITC" color="white"><h2>Finder Registration</h2></font></td>
                                </tr>
                            
                        </table>

        </td>
                    <td width="150px">
                        
                        
                        <font face="Trebuchet MS" size="4" color="#EF9A55">  <a href="index.jsp" >Back</a></font>
                </tr>
            
               
        </table>
        <table border="0" align="center">
                <tr>
                    <td width="1000" height="50px" bgcolor="#EF9A55"><marquee><h><font face="Snap ITC" color="white" size="4"> Create your Account Here</font> </marquee></td>
                </tr>
            
        </table>
        <br>
        <br>

        <table border="0" align="center"><form name="freg" method="POST" action="findershow.jsp" onSubmit="return checkfield(freg)">
            
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Finder Name :</td>
                    <td><input type="text" name="fname" value="" /></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Qualification :</td>
                    <td><select name="fquali">
                            <option value="BBA">BBA</option>
                            <option value="BCA">BCA</option>
                            <option value="BCom">B.COM</option>
                            <option value="BSc">B.SC</option>
                            <option value="BA">B.A</option>
                            <option value="BTech">B.TECH</option>
                            <option value="Other">Other</option>
                        </select></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Job Title :</td>
                    <td><select name="fjob">
                            <option value="IT Software">IT SOFTWARE</option>
                            <option value="BPO">BPO</option>
                            <option value="Sales">SALES</option>
                            <option value="Finance">FINANCE</option>
                            <option value="Marketing">MARKETING</option>
                            <option value="Telecom">TELECOM</option>
                            <option value="Web Developer">WEB DEVELOPER</option>
                        </select></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Gender :</td>
                    <td><input type="radio" name="g" value="Male" />Male</td><td><input type="radio" name="g" value="Female" />Female</td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">ID :</td>
                    <td><input type="text" name="fid"/></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Email :</td>
                    <td><input type="text" name="fmail" value="" /></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Password :</td>
                    <td><input type="password" name="fpass" value="" /></td></tr>
                <tr> <td><font face="Berlin Sans FB" color="104843">Mob :</td>
                    <td><input type="text" name="fmob" value="" /></td>
                </tr>
                <tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Current Status</td>
                    <td><input type="radio" name="fstat" value="Fresher" />fresher<input type="radio" name="fstat" value="Working" />working<input type="radio" name="fstat" value="Non working" />non working</td>
                </tr>
                    <td><font face="Berlin Sans FB" color="104843">Experience :</td>
                    <td><select name="fexp">
                            
                            <option value="1">0-1</option>
                            <option value="5">3-5</option>
                            <option value="7">5-7</option>
                            <option value="10">7-10</option>
                            <option value="11">10+</option>
                        </select></td>
                </tr>
                <tr>
                    <td><font face="Berlin Sans FB" color="104843">Region :</td>
                    <td><select name="fregion">
                            <option value="UP">UP</option>
                            <option value="Delhi">DELHI</option>
                            <option value="MP">MP</option>
                            <option value="Hariyana">HARIYANA</option>
                            <option value="Rajisthan">RAGISTHAN</option>
                            <option value="Gujarat">GUJRAT</option>
                            <option value="Maharashtra">MAHARASHTH</option>
                        </select></td>
                </tr>
                <tr><td><input type="submit" value="Register now" /></td>
                    <td><input type="reset" value="Cancel" /></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td><input type="checkbox" name="fterm" value="Agree" /><font face="Cooper" color="#C10909"> I agree the T&C.</td> </tr>
            </form>
        </table>

 <table border="0" height="20px" width="100%" align="center" bgcolor="#1D2275">
            
                <tr>
                    <td></td>
                </tr>
           
        </table>
        
    </body>
</html>
