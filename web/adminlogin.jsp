<%-- 
    Document   : adminlogin
    Created on : 2018-02-20, 12:38:57
    Author     : Kamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <h4 align="center">Panel Administratora</h4>
        <p align="center"></p>
        <form method="post" action="checkA.jsp">
            <table align="center">
                <tr><td> Nazwa użytkownika </td><td><input type="text" name="Username" size="20"></td></tr>
                <tr><td> Hasło </td><td><input type="password" name="Password" size="20"></td></tr>
                <td align="right" colspan="2"><input name="s" type="submit" id="s" value="Login">
                    
            </table> </font>
        </form>
        <jsp:include page="footer.jsp" />
    </body>
</html>
