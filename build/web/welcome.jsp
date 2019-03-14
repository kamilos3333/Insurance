<%-- 
    Document   : welcome
    Created on : 2018-02-13, 11:34:15
    Author     : Kamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubezpieczalnia</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <% 
        try
        {
            String username=session.getAttribute("susername").toString();
            out.print("Witaj " +username+ " ");
        }catch(Exception ex)
        {
            session.setAttribute("msg", "Please login first");
            response.sendRedirect("index.jsp");
        }
        %>
        <br>
         <a href="updateUser.jsp"> Moje dane</a> </div>
         <a href="formUser.jsp"> Moje formularze</a> </div>

<jsp:include page="footer.jsp" />
    </body>
</html>
