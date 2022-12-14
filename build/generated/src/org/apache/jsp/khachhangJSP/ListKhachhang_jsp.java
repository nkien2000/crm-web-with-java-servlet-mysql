package org.apache.jsp.khachhangJSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import QLKH.QLKH;

public final class ListKhachhang_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../assets/css/style.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://kit.fontawesome.com/b5aef14fab.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"topbar\">\n");
      out.write("            <nav class=\"navbar\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <a href=\"../QuanLy.jsp\" style=\"color: #fff;\">Qu???n l?? kh??ch h??ng CRM</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-account\">\n");
      out.write("                    <a href=\"\">                    \n");
      out.write("                        <i class=\"fas fa-user-circle\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"sidebar\">\n");
      out.write("                <ul class=\"\">\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../userJSP/ListUser.jsp\">Qu???n l?? t??i kho???n</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../khachhangJSP/ListKhachhang.jsp\">Qu???n l?? kh??ch h??ng</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../nhanvienJSP/ListNhanvien.jsp\">Qu???n l?? nh??n vi??n</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../phancongJSP/ListPC.jsp\">Danh s??ch ph??n c??ng</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h4 class=\"title-color\">Danh s??ch kh??ch h??ng</h4>\n");
      out.write("                    <div class=\"input-find\">\n");
      out.write("                        <form class=\"\" method=\"post\" action=\"search_KH.jsp\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"name\" placeholder=\"H??? t??n\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"diachi\" placeholder=\"?????a ch???\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"phone\" placeholder=\"S??? ??i???n tho???i\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"trangthai\" placeholder=\"Tr???ng th??i\">\n");
      out.write("                            <button type=\"submit\" onclick=\"\" class=\"btn btn-sm btn-search\">\n");
      out.write("                                <i class=\"fa fa-search\"></i>\n");
      out.write("                                T??m ki???m\n");
      out.write("                            </button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"Add_khachhang.jsp\">\n");
      out.write("                        <button class=\"btn btn-primary\" value=\"\">\n");
      out.write("                            <i class=\"fa fa-plus\"></i>\n");
      out.write("                            Th??m kh??ch h??ng\n");
      out.write("                        </button>\n");
      out.write("                    </a>\n");
      out.write("                    ");

                        QLKH model = new QLKH();
                        ResultSet rs = model.GetDSKhachhang();
                    
      out.write("\n");
      out.write("                    <table class=\"table table-striped table-bordered table-condensed table-hover table-data\">\n");
      out.write("                        <thead class=\"thead\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th>M?? kh??ch h??ng</th>\n");
      out.write("                                <th>H??? t??n</th>\n");
      out.write("                                <th>S??? ??i???n tho???i</th>\n");
      out.write("                                <th>AccountID</th>\n");
      out.write("                                <th>?????a ch???</th>\n");
      out.write("                                <th>Tr???ng th??i</th>\n");
      out.write("                                <th>Ng??y c???p nh???t</th>\n");
      out.write("                                <th colspan=\"2\" align=\"center\">Thao t??c</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

                            while (rs.next()) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
 out.print(rs.getString("id")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("name")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("phone")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("accountId")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("diachi")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("trangthai")); 
      out.write("</td>\n");
      out.write("                            <td>");
 out.print(rs.getString("created_at"));
      out.write("</td>\n");
      out.write("                            <td><a href=\"LayDLKhachhang.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\"><img src=\"../assets/img/edit.png\" style=\"width:30px; height:30px\"></a></td>\n");
      out.write("                            <td><a href=\"XoaKhachhang.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\" onclick=\"if (confirm('B???n c?? ch???c ch???n x??a kh??ng?'))\n");
      out.write("                                        return true;\n");
      out.write("                                    return false;\"><img src=\"../assets/img/delete.png\" style=\"width:30px; height:30px\"></a></td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
 }
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
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
