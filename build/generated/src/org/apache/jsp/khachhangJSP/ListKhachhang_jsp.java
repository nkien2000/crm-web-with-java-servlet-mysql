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
      out.write("                    <a href=\"../QuanLy.jsp\" style=\"color: #fff;\">Quản lý khách hàng CRM</a>\n");
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
      out.write("                    <li class=\"sidebar-option\"><a href=\"../userJSP/ListUser.jsp\">Quản lý tài khoản</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../khachhangJSP/ListKhachhang.jsp\">Quản lý khách hàng</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../nhanvienJSP/ListNhanvien.jsp\">Quản lý nhân viên</a></li>\n");
      out.write("                    <li class=\"sidebar-option\"><a href=\"../phancongJSP/ListPC.jsp\">Danh sách phân công</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h4 class=\"title-color\">Danh sách khách hàng</h4>\n");
      out.write("                    <div class=\"input-find\">\n");
      out.write("                        <form class=\"\" method=\"post\" action=\"search_KH.jsp\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"name\" placeholder=\"Họ tên\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"diachi\" placeholder=\"Địa chỉ\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"phone\" placeholder=\"Số điện thoại\">\n");
      out.write("                            <input type=\"text\" class=\"searchbox\" name=\"trangthai\" placeholder=\"Trạng thái\">\n");
      out.write("                            <button type=\"submit\" onclick=\"\" class=\"btn btn-sm btn-search\">\n");
      out.write("                                <i class=\"fa fa-search\"></i>\n");
      out.write("                                Tìm kiếm\n");
      out.write("                            </button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"Add_khachhang.jsp\">\n");
      out.write("                        <button class=\"btn btn-primary\" value=\"\">\n");
      out.write("                            <i class=\"fa fa-plus\"></i>\n");
      out.write("                            Thêm khách hàng\n");
      out.write("                        </button>\n");
      out.write("                    </a>\n");
      out.write("                    ");

                        QLKH model = new QLKH();
                        ResultSet rs = model.GetDSKhachhang();
                    
      out.write("\n");
      out.write("                    <table class=\"table table-striped table-bordered table-condensed table-hover table-data\">\n");
      out.write("                        <thead class=\"thead\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Mã khách hàng</th>\n");
      out.write("                                <th>Họ tên</th>\n");
      out.write("                                <th>Số điện thoại</th>\n");
      out.write("                                <th>AccountID</th>\n");
      out.write("                                <th>Địa chỉ</th>\n");
      out.write("                                <th>Trạng thái</th>\n");
      out.write("                                <th>Ngày cập nhật</th>\n");
      out.write("                                <th colspan=\"2\" align=\"center\">Thao tác</th>\n");
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
      out.write("\" onclick=\"if (confirm('Bạn có chắc chắn xóa không?'))\n");
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
