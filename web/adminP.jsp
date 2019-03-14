<%-- 
    Document   : adminP
    Created on : 2018-02-20, 11:39:37
    Author     : Kamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel admina</title>
        <link rel="stylesheet" href="panel.css">
        <jsp:include page="header.jsp" />
    </head>
    <body>

        <div class="adminFORM">
            <div class="formAdmin" > 
                <div class="AdminMenu">
                    <ol>
                        <la><a href="adminP.jsp">Panel</a></la>
                        <la><a href="retrieve.jsp">Uzytkownicy</a>
                        </la>
                        <la>Formularze</a>
                            <ul>
                                <li><a href="formAdmin.jsp">Posiadłość</a></li>
                                <li><a href="formAdminSam.jsp">Samochód</a></li>
                            </ul>
                        </la>

                    </ol>

                </div>
                
                <center><h1> Witaj  </h1> </center>
                    
                
            </div>
        </div>
<jsp:include page="footer.jsp" />
    </body>
</html>
