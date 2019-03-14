<%-- 
    Document   : formAdminSam
    Created on : 2018-02-24, 18:58:34
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
        <title>JSP Page</title>
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
            <tr><th>Typ formularza</th><th>Użytkownik</th><th>Rok produkcji </th><th>Marka</th><th>Model</th><th>Kierownica</th><th>Data pierwszej rejestracji</th><th>Aktualny przebieg</th><th>Zakładany roczny przebieg</th>
            <th>Sposób użytkowania pojazdu</th><th>Miejsce parkowania</th><th>Parkowanie w godzinach nocnych</th><th>Sprowadzany?</th><th>Od kiedy?</th></tr>
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
         String query="select * from cli_car1 ";
         ResultSet rs=stat.executeQuery(query);
         while(rs.next())
         {
             String getTyp=rs.getString("typ");
             String getUsers=rs.getString("users");
             String getYear=rs.getString("year");
             String getBrands=rs.getString("brands");
             String getModel=rs.getString("model");
             String getKierownica=rs.getString("kierownica");
             String getTrej=rs.getString("trej");
             String getPrzebieg=rs.getString("przebieg");
             String getRprzebieg=rs.getString("rprzebieg");
             String getUzyt=rs.getString("uzyt");
             String getPark=rs.getString("park");
             String getKody=rs.getString("kody");
             String getSprow=rs.getString("sprow");
             String getUbz=rs.getString("ubz");
        
        
        %>
         
             <br>
             <tr><td><%out.println(getTyp); %></td><td><%out.println(getUsers); %></td><td><%out.println(getYear); %></td><td><%out.println(getBrands); %></td><td><%out.println(getModel); %></td>
                 <th><%out.println(getKierownica); %></td><td><%out.println(getTrej); %></td><td><%out.println(getPrzebieg); %> </td><td><%out.println(getRprzebieg); %> </td><td><%out.println(getUzyt); %> </td>
                 </td><td><%out.println(getPark); %> </td> <td><%out.println(getKody); %> </td>  <td><%out.println(getSprow); %> </td> <td><%out.println(getUbz); %> </td>
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
