<%-- 
    Document   : formA
    Created on : 2018-02-24, 16:08:29
    Author     : Kamil
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel admina</title>
        <jsp:include page="header.jsp" />
        <link rel="stylesheet" href="panel.css">
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
           
        
      <table border="2" align="center">
            <tr><th>Typ formularza</th><th>Użytkownik</th><th>Rodzaj nieruchomości</th><th>Piętro</th><th>Materiał budowlany</th><th>Rok budowy</th><th>Kod pocztowy</th><th>Powierzchnia użytkowa</th></tr>
        <% 
        try
        {
            String username=session.getAttribute("susername").toString();
            String sid=session.getAttribute("sid").toString();
             try 
         {
         Class.forName("org.postgresql.Driver");
         Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
         Statement stat = con.createStatement();
         String query="select * from cli_house1 ";
         ResultSet rs=stat.executeQuery(query);
         while(rs.next())
         {
             String getUser=rs.getString("users");
             String getTyp=rs.getString("typ");
             String getRodzaj=rs.getString("rodzaj");
             String getPietro=rs.getString("pietro");
             String getMaterial=rs.getString("material");
             String getRok=rs.getString("rok");
             String getKod=rs.getString("kod");
             String getPow=rs.getString("pow");
        
        
        %>
         
             <br>
             <tr><td><%out.println(getTyp); %></td><td><%out.println(getUser); %></td><td><%out.println(getRodzaj); %></td><td><%out.println(getPietro); %></td><td><%out.println(getMaterial); %></td>
                 <th><%out.println(getRok); %></td><td><%out.println(getKod); %></td><td><%out.println(getPow); %>
                 
             </tr>
             
             <%    
         }
        }
          catch(Exception e) 
          {
              out.println(e);
          }
        

        }
        catch(Exception ex)
        {
            response.sendRedirect("index.jsp");
        }

        %>    
        </table>
         </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>