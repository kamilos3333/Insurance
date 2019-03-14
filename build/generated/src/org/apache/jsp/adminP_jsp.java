package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminP_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("                margin:0px;\n");
      out.write("                padding:0px;\n");
      out.write("            }\n");
      out.write("            #panelA ul\n");
      out.write("            {\n");
      out.write("                list-style: none;\n");
      out.write("            }\n");
      out.write("            #panelA ul li\n");
      out.write("            {\n");
      out.write("                background-color: #3C3E94;\n");
      out.write("                width: 150px;\n");
      out.write("                border: 1px solid white;\n");
      out.write("                height: 50px;\n");
      out.write("                line-height: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("                float:left;\n");
      out.write("                color:white;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            #panelA ul li:hover\n");
      out.write("            {\n");
      out.write("                background-color: #388222;\n");
      out.write("            }\n");
      out.write("            #panelA ul ul{\n");
      out.write("                display:none;\n");
      out.write("            }\n");
      out.write("            #panelA ul li:hover > ul {\n");
      out.write("                display:block;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <title>Panel admina</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        Panel Administracyjny <br>\n");
      out.write("        <div id=\"panelA\">\n");
      out.write("            <ul>\n");
      out.write("                <li>Panel</li>\n");
      out.write("                <li>Użytkownicy</li>\n");
      out.write("                <li>Formularze\n");
      out.write("                    <ul>\n");
      out.write("                        <li>Posiadłość</li>\n");
      out.write("                        <li>Samochód</li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>  \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("<!--        <a href=\"retrieve.jsp\" >Lista Użytkowników </a> </div>\n");
      out.write("    \n");
      out.write("        <a href=\"formAdmin.jsp\">Ubezpieczenia posiadłości</a> \n");
      out.write("        <a href=\"formAdmin.jsp\">Ubezpieczenia samochodów</a> -->\n");
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
