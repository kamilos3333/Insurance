<%-- 
    Document   : retrieve
    Created on : 2018-02-20, 14:48:07
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
        <title>Ubezpieczalnia</title>
        <link rel="stylesheet" href="panel.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
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
            <tr><th>Identyfikator</th><th>Nazwa użytkownika</th><th>Email</th><th>Adres</th><th>Miasto</th><th>Województwo</th><th>NrTelefonu</th><th>Hasło</th><th>KodPocztowy</th><th>Imie i nazwisko</th><th>Rola</th><th>Update</th></tr>
        
        <%
          try 
         {
         Class.forName("org.postgresql.Driver");
         Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
         Statement stat = con.createStatement();
         String query="select * from cli_clients1 order by cli_user_id";
         ResultSet rs=stat.executeQuery(query);
         while(rs.next())
         {
             String getUsername=rs.getString("cli_username");
             String getEmail=rs.getString("cli_email");
             String getAdress=rs.getString("cli_adress");
             String getCity=rs.getString("cli_city");
             String getVoivodeships=rs.getString("cli_voivodeships");
             String getTelephone=rs.getString("cli_telephone");
             String getPassword=rs.getString("cli_password");
             String getZip=rs.getString("cli_zip");
             String getNameSurname=rs.getString("cli_name_surname");
             String getRole=rs.getString("cli_role");
             
             
             int sid=rs.getInt("cli_user_id");
             %>
             <br>
             
             <tr><td><%out.println(sid); %></td><td><%out.println(getUsername); %></td><td><%out.println(getEmail); %></td><td><%out.println(getAdress); %></td><td><%out.println(getCity); %></td>
                 <th><%out.println(getVoivodeships); %></td><td><%out.println(getTelephone); %></td><td><%out.println(getPassword); %></td><td><%out.println(getZip); %></td><td><%out.println(getNameSurname); %></td>
                 <td><%out.println(getRole); %></td>
                 
                  <td><a href="update.jsp?uid=<% out.println(sid); %>">Update</a></td>
                 
             </tr>
             
             <%
         }
         }
          catch(Exception e) 
          {
              out.println(e);
          }
        %>    
        </table>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
