<%-- 
    Document   : formUser
    Created on : 2018-02-23, 16:33:43
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
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <table border="2" align="center">
            <tr><th>Typ formularza</th><th>Rodzaj nieruchomości</th><th>Piętro</th><th>Materiał budowlany</th><th>Rok budowy</th><th>Kod pocztowy</th><th>Powierzchnia użytkowa</th></tr>
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
         String query="select * from cli_house1 where users="+sid;
         ResultSet rs=stat.executeQuery(query);
         while(rs.next())
         {
             String getTyp=rs.getString("typ");
             String getRodzaj=rs.getString("rodzaj");
             String getPietro=rs.getString("pietro");
             String getMaterial=rs.getString("material");
             String getRok=rs.getString("rok");
             String getKod=rs.getString("kod");
             String getPow=rs.getString("pow");
        
        
        %>
         
             <br>
             <tr><td><%out.println(getTyp); %></td><td><%out.println(getRodzaj); %></td><td><%out.println(getPietro); %></td><td><%out.println(getMaterial); %></td>
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
        <jsp:include page="footer.jsp" />
    </body>
</html>
