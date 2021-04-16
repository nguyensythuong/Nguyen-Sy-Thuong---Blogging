package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyBlog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"left\">\n");
      out.write("                    <div class=\"page\"><h6>My blog</h6></div>\n");
      out.write("                    <div class=\"top3\">\n");
      out.write("                        <div class=\"perblog\">\n");
      out.write("                            <div class=\"per_icon\">\n");
      out.write("                                <img src=\"images/pencil.png\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"per_right\">\n");
      out.write("                                <div class=\"per_name\">\n");
      out.write("                                    <a href=\"BlogDetail.jsp\">Essential skills for a happy life!</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_date\">\n");
      out.write("                                    16-11-2015\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_picture\">\n");
      out.write("                                    <img src=\"images/happy.jpg\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_content\">\n");
      out.write("                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<br>\n");
      out.write("                                    At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.<br>\n");
      out.write("                                    Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_italic\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_bigpic\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"perblog\">\n");
      out.write("                            <div class=\"per_icon\">\n");
      out.write("                                <img src=\"images/dot.png\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"per_right\">\n");
      out.write("                                <div class=\"per_name\">\n");
      out.write("                                    <a href=\"#\">You've gotta dance</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_date\">\n");
      out.write("                                    16-11-2015\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_picture\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_content\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_italic\">\n");
      out.write("                                    <p>\"“You've gotta dance like there's nobody watching,<br>\n");
      out.write("                                        Love like you'll never be hurt,<br>\n");
      out.write("                                        Sing like there's nobody listening,<br>\n");
      out.write("                                        And live like it's heaven on earth.” </p>\n");
      out.write("                                    <p>William W. Purkey</p>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_bigpic\">\n");
      out.write("\n");
      out.write("                                </div> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"perblog\">\n");
      out.write("                            <div class=\"per_icon\">\n");
      out.write("                                <img src=\"images/camera.png\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"per_right\">\n");
      out.write("                                <div class=\"per_name\">\n");
      out.write("                                    <a href=\"#\">Photo</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_date\">\n");
      out.write("                                    16-11-2015\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_picture\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_content\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"per_bigpic\">\n");
      out.write("                                    <img src=\"images/photo.jpg\" alt=\"\"/>\n");
      out.write("                                </div>   \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"overview\">\n");
      out.write("                        <a href=\"Overview.jsp\">Overview</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Right.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
