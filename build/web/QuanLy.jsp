<%-- 
    Document   : QuanLy
    Created on : Nov 28, 2021, 11:07:21 PM
    Author     : Admin
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DKDN.DKDN" import="java.sql.Connection" import="javax.servlet.http.Cookie" import="java.sql.DriverManager" import="java.sql.PreparedStatement" import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <script src="https://kit.fontawesome.com/b5aef14fab.js" crossorigin="anonymous"></script>
    </head>
    <body>
         
        <header class="topbar">
            <nav class="navbar">
                <ul class="navigation">
                <li class="navbar-header">
                    <a href="QuanLy.jsp" style="color: #fff;">Quản lý khách hàng CRM</a>
                </li>
                <li ><p class="hide" style="color: #1e88e5;"  realonly >...............................................................................................................................................................................................</p></li>
                <li></li>
                <li></li>
               
                <li><%
                            String userName = null;
                            Cookie[] cookies = request.getCookies();
                            if(cookies !=null){
                            for(Cookie cookie : cookies){
                                    if(cookie.getName().equals("user")) userName = cookie.getValue();
                            }
                            }
                            if(userName == null) response.sendRedirect("dangnhap.jsp");
                            DKDN model = new DKDN();
                            ResultSet rs = model.quenmatkhau(userName);
                            while(rs.next()) {
                             String name = rs.getString("ten");
                     
                            %>
                            <p>Hi <%= name %> </p></li><%}%>
                <li >
                    <a href="#">                    
                        <i class="fas fa-user-circle"></i>
                    </a>
                    <div>
                       
                        <a href = "logout.jsp"> Thoát </a>  
                    </div>
                </li>
                </ul>
            </nav>
        </header>
        <div class="container">
            <div class="sidebar">
                <ul class="">
                    <li class="sidebar-option"><a href="userJSP/ListUser.jsp">Quản lý tài khoản</a></li>
                    <li class="sidebar-option"><a href="khachhangJSP/ListKhachhang.jsp">Quản lý khách hàng</a></li>
                    <li class="sidebar-option"><a href="nhanvienJSP/ListNhanvien.jsp">Quản lý nhân viên</a></li>
                    <li class="sidebar-option"><a href="phancongJSP/ListPC.jsp">Danh sách phân công</a></li>
                </ul>
            </div>
            <div class="home-content">
                <div class="home-body">
                    <h4 class="title-color" style="color: #546264">Chào mừng đến với hệ thống quản lý khách hàng CRM</h4>
                    <h1 style="color: #009efb">CRM</h1>
                </div>
            </div>
    </body>
</html>
