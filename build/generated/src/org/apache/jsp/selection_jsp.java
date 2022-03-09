package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class selection_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>selected</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
out.println("<center><font color=levender size=4>Finder NAme="+fname);
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
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
