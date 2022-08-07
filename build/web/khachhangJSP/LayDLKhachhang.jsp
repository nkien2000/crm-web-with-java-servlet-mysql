<%-- 
    Document   : LayDLKhachhang
    Created on : Nov 28, 2021, 11:15:05 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="QLKH.QLKH"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/css/style.css">

        <script src="https://kit.fontawesome.com/b5aef14fab.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header class="topbar">
            <nav class="navbar">
                <div class="navbar-header">
                    <a href="../QuanLy.jsp" style="color: #fff;">Quản lý khách hàng CRM</a>
                </div>
                <div class="navbar-account">
                    <a href="">                    
                        <i class="fas fa-user-circle"></i>
                    </a>
                </div>
            </nav>
        </header>
        <%
            String idKhachhang = request.getParameter("id");
            QLKH model = new QLKH();
            ResultSet rs = model.getKhachhangById(idKhachhang);
        %>
        <div class="container">
            <div class="sidebar">
                <ul class="">
                    <li class="sidebar-option"><a href="../userJSP/ListUser.jsp">Quản lý tài khoản</a></li>
                    <li class="sidebar-option"><a href="../khachhangJSP/ListKhachhang.jsp">Quản lý khách hàng</a></li>
                    <li class="sidebar-option"><a href="../nhanvienJSP/ListNhanvien.jsp">Quản lý nhân viên</a></li>
                    <li class="sidebar-option"><a href="../phancongJSP/ListPC.jsp">Danh sách phân công</a></li>
                </ul>
            </div>
            <div class="card">
                <div class="card-body">
                    <h4 class="title-color">Sửa thông tin khách hàng</h4>
                    <form action="SuaKhachhang.jsp" method="POST" class="form-update">
                        <%
                            while (rs.next()) {
                        %>
                        <div class="form-group">
                            <label for="id">Mã khách hàng: </label>
                            <input required="true" type="hiden" name="txt_maKhachhang" id="id" class="form-control" value="<% out.println(rs.getString("id"));%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="hoten">Họ tên: </label>
                            <input required="true" type="text" name="txt_tenKhachhang" id="hoten" class="form-control" value="<% out.println(rs.getString("name"));%>">
                        </div>
                        <div class="form-group">
                            <label for="sdt">Số điện thoại: </label>
                            <input required="true" type="text" name="txt_phoneKhachhang" id="sdt" class="form-control" value="<% out.println(rs.getString("phone"));%>">
                        </div>
                        <div class="form-group">
                            <label for="ac_id">AccountId: </label>
                            <input required="true" type="text" name="txt_accountidKhachhang" id="ac_id" class="form-control" value="<% out.println(rs.getString("accountId"));%>">
                        </div>
                        <div class="form-group">
                            <label for="diachi">Địa chỉ: </label>
                            <input required="true" type="text" name="txt_diachiKhachhang" id="diachi" class="form-control" value="<% out.println(rs.getString("diachi"));%>">
                        </div>
                        <div class="form-group">
                            <label for="trangthai">Trạng thái: </label>
                            <input required="true" type="text" name="txt_trangthaiKhachhang" id="trangthai" class="form-control" value="<% out.println(rs.getString("trangthai"));%>">
                        </div>
                        <div class="form-group">
                            <label for="created_at">Ngày cập nhật: </label>
                            <input required="true" type="text" name="txt_catKhachhang" id="created_at" class="form-control" value="<% out.println(rs.getString("created_at"));%>" readonly="">
                        </div>
                        <div class="form-buttons">
                            <input type="submit" name="btn_sua" class="btn btn-modify" value="Cập nhật">
                            <input type="reset" name="btn_reset" class="btn btn-reset" value="Reset">
                        </div>
                        <% }%>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
