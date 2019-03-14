<%-- 
    Document   : logowanie
    Created on : 2018-01-29, 21:35:00
    Author     : Kamil
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>

    .blank
    {
        background-color: #F0F8FF;
        width: 350px;
        padding: 50px;
        margin-left: auto;
        margin-right: auto;
        -webkit-box-shadow: 6px 6px 28px -8px rgba(0,0,0,0.41);
        -moz-box-shadow: 6px 6px 28px -8px rgba(0,0,0,0.41);
        box-shadow: 6px 6px 28px -8px rgba(0,0,0,0.41);
    }
    
    

    </style>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubezpieczalnia</title>

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="containerFORM">
            <div class="formContainer" > 
                <div class="blank" >
                        <table border="1">
                            <form name="frm" action="login-process.jsp" method="post"> 
                                <tr>
                                    <td>Nazwa użytkownika</td>
                                    <td><input type="text" name="t1" required></td>
                                </tr>
                                <tr>
                                    <td>Hasło</td>
                                    <td><input type="text" name="t2" required></td>
                                </tr>
                                <tr> 

                                    <td colspan="2" align="center">
                                        <input type="submit" value="Zaloguj" >   
                                    </td>
                                </tr>
                            
                        </table>

                        <br>
                        <%
                            try {
                                String msg = session.getAttribute("msg").toString();
                                out.print(msg);
                                session.removeAttribute("msg");
                            } catch (Exception ex) {

                            }
                        %>

                        <br>
                        <a href="rejestracja.jsp" >Rejestracja</a>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
