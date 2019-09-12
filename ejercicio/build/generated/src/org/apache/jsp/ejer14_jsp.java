package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ejer14_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <script>\n");
      out.write("        let cursos = []\n");
      out.write("        \n");
      out.write("        function seleccionados(){\n");
      out.write("            seleccionarBasedeDatos();\n");
      out.write("            seleccionarDiseñodeSistemas()\n");
      out.write("            seleccionarHtml()\n");
      out.write("            seleccionarJava()\n");
      out.write("            seleccionarJavaScript()\n");
      out.write("            document.getElementById('textArea').value = cursos\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function seleccionarJava(){\n");
      out.write("            if(document.getElementById(\"Java\").checked)\n");
      out.write("                cursos.push(\"Java\")\n");
      out.write("            else\n");
      out.write("                cursos.forEach( (item, indice) => {\n");
      out.write("                    if(item == \"Java\")\n");
      out.write("                        cursos.splice(indice, 1)\n");
      out.write("                })\n");
      out.write("        }\n");
      out.write("        function seleccionarHtml(){\n");
      out.write("            if(document.getElementById(\"Html\").checked)\n");
      out.write("                cursos.push(\"Html\")\n");
      out.write("            else\n");
      out.write("                cursos.forEach( (item, indice) => \n");
      out.write("                    {\n");
      out.write("                    if(item == \"Html\")\n");
      out.write("                        cursos.splice(indice, 1)\n");
      out.write("                })\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        function seleccionarJavaScript(){\n");
      out.write("            if(document.getElementById(\"Java Script\").checked)\n");
      out.write("                cursos.push(\"Java Script\")\n");
      out.write("            else\n");
      out.write("                cursos.forEach( (item, indice) => \n");
      out.write("                    {\n");
      out.write("                    if(item == \"Java Script\")\n");
      out.write("                        cursos.splice(indice, 1)\n");
      out.write("                })\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        function seleccionarBasedeDatos(){\n");
      out.write("            if(document.getElementById(\"Base de Datos\").checked)\n");
      out.write("                cursos.push(\"Base de Datos\")\n");
      out.write("            else\n");
      out.write("                cursos.forEach( (item, indice) => \n");
      out.write("                    {\n");
      out.write("                    if(item == \"Base de Datos\")\n");
      out.write("                        cursos.splice(indice, 1)\n");
      out.write("                })\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        function seleccionarDiseñodeSistemas(){\n");
      out.write("            if(document.getElementById(\"Diseño de Sistemas\").checked)\n");
      out.write("                cursos.push(\"Diseño de Sistemas\")\n");
      out.write("            else\n");
      out.write("                cursos.forEach( (item, indice) => \n");
      out.write("                    {\n");
      out.write("                    if(item == \"Diseño de Sistemas\")\n");
      out.write("                        cursos.splice(indice, 1)\n");
      out.write("                })\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <body>\n");
      out.write("        <input type=\"checkbox\" id=\"Java\"> Java\n");
      out.write("        <br>\n");
      out.write("        <input type=\"checkbox\" id=\"Html\"> Html\n");
      out.write("        <br>\n");
      out.write("        <input type=\"checkbox\" id=\"Java Script\"> JavaScript\n");
      out.write("        <br>\n");
      out.write("        <input type=\"checkbox\" id=\"Base de Datos\"> Base de Datos\n");
      out.write("        <br>\n");
      out.write("        <input type=\"checkbox\" id=\"Diseño de Sistemas\"> Diseño de Sistemas\n");
      out.write("        <br>\n");
      out.write("        <input type=\"button\" onclick=\"seleccionados()\" value=\"Procesar\"> Java\n");
      out.write("        <br>\n");
      out.write("        <textarea cols=\"20\" rows=\"5\" wrap=\"hard\" disabled=\"yes\" id=\"textArea\"></textarea>\n");
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
