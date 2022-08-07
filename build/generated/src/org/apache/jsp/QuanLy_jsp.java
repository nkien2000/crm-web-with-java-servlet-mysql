package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class QuanLy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://kit.fontawesome.com/b5aef14fab.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"topbar\">\n");
      out.write("            <nav class=\"navbar\">\n");
      out.write("                <ul class=\"navigation\">\n");
      out.write("                <li class=\"navbar-header\">\n");
      out.write("                    <a href=\"QuanLy.jsp\" style=\"color: #fff;\">Quản lý khách hàng CRM</a>\n");
      out.write("                </li>\n");
      out.write("                <li><p style=\"color: #1e88e5;\" >........................................................................................................................................................................................................................................................</p></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li >\n");
      out.write("                    <a href=\"#\">                    \n");
      out.write("                        <i class=\"fas fa-user-circle\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div>\n");
      out.write("                        ");

                            String userName = null;
                            Cookie[] cookies = request.getCookies();
                            if(cookies !=null){
                            for(Cookie cookie : cookies){
                                    if(cookie.getName().equals("user")) userName = cookie.getValue();
                            }
                            }
                            if(userName == null) response.sendRedirect("sig/dangnhap.jsp");
                            
      out.write("\n");
      out.write("                            <h1>Hi ");
      out.print(userName );
      out.write(", </h1>\n");
      out.write("                        <a href = \"logout.jsp\"> Thoát </a>  \n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"sidebar\">\n");
      out.write("                <ul class=\"\">\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"userJSP/ListUser.jsp\">Quản lý tài khoản</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"khachhangJSP/ListKhachhang.jsp\">Quản lý khách hàng</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"nhanvienJSP/ListNhanvien.jsp\">Quản lý nhân viên</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"phancongJSP/ListPC.jsp\">Danh sách phân công</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"home-content\">\n");
      out.write("                <div class=\"home-body\">\n");
      out.write("                    <h4 class=\"title-color\" style=\"color: #546264\">Chào mừng đến với hệ thống quản lý khách hàng CRM</h4>\n");
      out.write("                    <h1 style=\"color: #009efb\">CRM</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
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
