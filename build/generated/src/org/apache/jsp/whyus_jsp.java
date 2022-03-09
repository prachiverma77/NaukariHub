package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class whyus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Why Us</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <table border=\"0\" height=\"20px\" width=\"100%\" align=\"center\" bgcolor=\"#1D2275\">\n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                </tr>\n");
      out.write("           \n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("        <table border=\"0\" align=\"center\" width=\"1000px\" height=\"100px\" bgcolor=\"#C1D5E0\">\n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"300px\">\n");
      out.write("                        <font face=\"Snap ITC\" size=\"5\" color=\"white\"><h2> Naukari Hub</h2></font><hr>\n");
      out.write("                        <font face=\"Trebuchet MS\" size=\"3\" color=\"#EF9A55\"><p>Beyond the Thinking</p></font>\n");
      out.write("                    </td>\n");
      out.write("                    <td width=\"650px\"><table border=\"0\" align=\"center\" size=\"5\">\n");
      out.write("                                                          <tr>\n");
      out.write("                                                              <td><font face=\"Snap ITC\" color=\"white\"><h2>Finder Registration</h2></font></td>\n");
      out.write("                                </tr>\n");
      out.write("                            \n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("        </td>\n");
      out.write("                    <td width=\"150px\">\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <font face=\"Trebuchet MS\" size=\"4\" color=\"#EF9A55\">  <a href=\"index.jsp\" >Back</a></font>\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("               \n");
      out.write("        </table>\n");
      out.write("        <table border=\"0\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"1000\" height=\"50px\" bgcolor=\"#EF9A55\"><marquee><h><font face=\"Snap ITC\" color=\"white\" size=\"4\">Why You Prefer Us</font> </marquee></td>\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("            <table border=\"0\" width=\"1000\" height=\"300px\" bgcolor=\"#9CF7BC\" align=\"center\">\n");
      out.write("           \n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"700px\">\n");
      out.write("                        <table border=\"0\">\n");
      out.write("                            \n");
      out.write("                                <tr>\n");
      out.write("                                    <td><font face=\"Berlin Sans FB\" size=\"4\" color=\"104843\"><p>The Naukari Hub is a website that deals specifically employment or careers. This employment website design to allow employers to post job requirement for a position to be filled and are commonly known as job boards, job search advice,career and describe different job description or employers. job hunters can locate and fill out a job application over the internet for the advertised positions.</p><br><p>Naukari Hub is one of the top website in India and has more than thousands of job listings covering various sectors and job profile. So it is indeed a very good website for searching jobs in India.</p></td>\n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                      \n");
      out.write("                          \n");
      out.write("                       </table>\n");
      out.write("\n");
      out.write(" </td>\n");
      out.write("                    <td width=\"300px\">\n");
      out.write("                        <img src=\"img/dream.jpg\" width=\"470\" height=\"313\" alt=\"dream\"/>\n");
      out.write("\n");
      out.write("                        </body>\n");
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
