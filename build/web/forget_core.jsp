<%-- 
    Document   : forget_core
    Created on : Dec 2, 2021, 5:34:43 AM
    Author     : Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DKDN.DKDN" import="java.nio.charset.Charset" import="java.util.Random" import="java.sql.Connection" import="java.sql.DriverManager" import="java.sql.PreparedStatement" import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget</title>
    </head>
    <body><%       if (request.getParameter("Email") != null) {
                    String email = request.getParameter("Email");
                    String matkhau="matkhaumoicuaenail"+email;
                     
                    DKDN model = new DKDN();
                    ResultSet rs = model.taoma(email,matkhau);
                    
             }%>
    </body>
</html>
