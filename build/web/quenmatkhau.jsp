<%-- 
    Document   : quenmatkhau
    Created on : Dec 2, 2021, 5:29:24 AM
    Author     : Kien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DKDN.DKDN" import="java.sql.Connection" import="java.sql.DriverManager" import="java.sql.PreparedStatement" import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
   <head>

<style>
    .form-tt {
width: 400px;
border-radius: 10px;
overflow: hidden;
padding: 100px 100px 82px;
background: #9152f8;
background: -webkit-linear-gradient(top,#7579ff,#b224ef);
background: -o-linear-gradient(top,#7579ff,#b224ef);
background: -moz-linear-gradient(top,#7579ff,#b224ef);
background: linear-gradient(top,#7579ff,#b224ef);
text-align: center;
max-width: 600px;
margin: 0 auto;
display: block;
margin-top: 50px;
}
.form-tt h2 {
font-size: 30px;
color: #fff;
line-height: 1.2;
text-align: center;
text-transform: uppercase;
display: block;
margin-bottom: 30px;
}

.form-tt input[type=text], .form-tt input[type=password] {
font-family: Poppins-Regular;
font-size: 16px;
color: #fff;
line-height: 1.2;
display: block;
width: calc(100% - 10px);
height: 45px;
background: 0 0;
padding: 10px 0;
border-bottom: 2px solid rgba(255,255,255,.24)!important;
border: 0;
outline: 0;
}
.form-tt input[type=text]::focus, .form-tt input[type=password]::focus {
color: red;
}
.form-tt input[type=password] {
margin-bottom: 20px;
}
.form-tt input::placeholder {
color: #fff;
}
.checkbox {
display: block;
}

#id{font-size: 16px;
color: #555;
line-height: 1.2;
padding: 0 20px;
min-width: 120px;
height: 50px;
border-radius: 25px;
background: #fff;
position: relative;
z-index: 1;
border: 0;
outline: 0;
display: block;
margin: 30px auto;}
.form-tt input[type=submit] {
font-size: 16px;
color: #555;
line-height: 1.2;
padding: 0 20px;
min-width: 120px;
height: 50px;
border-radius: 25px;
background: #fff;
position: relative;
z-index: 1;
border: 0;
outline: 0;
display: block;
margin: 30px auto;
}
* {
margin: 0;
padding: 0;
}
body {
background: #ddd
}

#checkbox {
display: inline-block;
margin-right: 10px;
}
.checkbox-text {
color: #fff;
}
.psw-text {
color: #fff;
}
#adm{padding: 10px;
color: orange;
border: 0;
outline: 0;}
#am{padding: 10px;
color: black;
border: 0;
outline: 0;}

</style>
</head>
<body >
    <div class="form-tt" >
        <form method="post" action="quenmatkhau.jsp">
            <table align="center">
                <div id="container">
                <h2 align="center">Qu??n m????t kh????u</h2>
                <input type="text" name="Email" placeholder="Email"/> 
                
                <input id="login" type="submit" value="Xac Nhan" name="sbm"  />
               
                <a id="am" href="dangnhap.jsp">Nho lai roi ? </a>
                 
                </div>
            </table>
            <p><%
                 String email = request.getParameter("Email");
                 String a="";
                 DKDN model = new DKDN();
                 ResultSet rs = model.quenmatkhau(email);
                 rs.last();
                 int count = rs.getRow();
                 try{
                    if(count == 1){
                        response.sendRedirect("forget_core.jsp?Email="+email);
                    }
                    
                    else{
                        a=" Email khong chinh xac ";

                    }}
                    catch (Exception e){
                        e.printStackTrace();
                    }
                   if(email != null){
                    out.println(a);
                   }
                  
                %></p>
        </form>
    </div>

</body>

</html>
