package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class vote_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html >\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>Login</title>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"css/party.css\">\n");
      out.write("      \n");
      out.write("      <style>\n");
      out.write("        #bjp{\n");
      out.write("            background: url(source/bjp.jpeg);\n");
      out.write("            height: 180px;\n");
      out.write("            width: 275px;\n");
      out.write("            border: none;\n");
      out.write("            color: rgba(0,0,0,0)\n");
      out.write("        }\n");
      out.write("        #cong{\n");
      out.write("            background: url(source/cong.png);\n");
      out.write("            height: 180px;\n");
      out.write("            width: 275px;\n");
      out.write("            border: none;\n");
      out.write("            color: rgba(0,0,0,0)\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("      </style>\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <body class=\"align\">\n");
      out.write("  <div class=\"grid\">\n");
      out.write("\n");
      out.write("      <form action=\"controler.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("      <header class=\"login__header\">\n");
      out.write("        <h3 class=\"login__title\">parties</h3>\n");
      out.write("      </header>\n");
      out.write("\n");
      out.write("      <div class=\"login__body\">\n");
      out.write("\n");
      out.write("        <div class=\"form__field\">\n");
      out.write("            <input type=\"submit\" value=\"bjp\" name=\"bjp\"id=\"bjp\">\n");
      out.write("        </div>\n");
      out.write("        <br><br><br>\n");
      out.write("        \n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("      ");

       String aadhar = (String)session.getAttribute("aadhar");
       //out.println(aadhar);
      session.setAttribute("aadhar",aadhar);
      
      String voterid = (String)session.getAttribute("voterid");
       //out.println(proofname);
      session.setAttribute("voterid",voterid);
      
      
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</body>\n");
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
