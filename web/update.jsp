<%-- 
    Document   : update
    Created on : 2018-02-14, 14:01:48
    Author     : Kamil
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String str1=request.getParameter("uid");
    try
    {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
        Statement stat = con.createStatement();
        String query="select * from cli_clients1 where cli_user_id="+str1;
        ResultSet rs = stat.executeQuery(query);
        if(rs.next())
        {
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubezpieczalnia</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <form method="post" action="updateInfo.jsp">
            <table border="2" align="center">
                <br>
                <input type="hidden" name="hId" value="<% out.println(rs.getInt("cli_user_id")); %>" ></td></tr>
                <tr><td>Identyfikator</td><td><input type="text" name="myId" value="<% out.println(rs.getInt("cli_user_id")); %>" disabled></td></tr>
                <tr><td>Nazwa użytkownika</td><td><input type="text" name="myUsername" value="<% out.println(rs.getString("cli_username")); %>" disabled ></td></tr>
                <tr><td>Email</td><td><input type="text" name="myEmail" value="<% out.println(rs.getString("cli_email")); %>"></td></tr>
                <tr><td>Adres zameldowania</td><td><input type="text" name="myAdress" value="<% out.println(rs.getString("cli_adress")); %>"></td></tr>
                <tr><td>Miasto</td><td><input type="text" name="myCity" value="<% out.println(rs.getString("cli_city")); %>"></td></tr>
                <tr><td>Województwo</td><td><input type="text" name="myVoivodeships" value="<% out.println(rs.getString("cli_voivodeships")); %>"></td></tr>
                <tr><td>Telefon</td><td><input type="text" name="myTelephone" value="<% out.println(rs.getString("cli_telephone")); %>"></td></tr>
                <tr><td>Hasło</td><td><input type="text" name="myPassword" value="<% out.println(rs.getString("cli_password")); %>" disabled ></td></tr>
                <tr><td>Kod pocztowy</td><td><input type="text" name="myZip" value="<% out.println(rs.getString("cli_zip")); %>"></td></tr>
                <tr><td>Imię i nazwisko</td><td><input type="text" name="myNameSurname" value="<% out.println(rs.getString("cli_name_surname")); %>"></td></tr>
                <tr><td>Typ</td><td><input type="text" name="myRole" value="<% out.println(rs.getString("cli_role")); %>"></td></tr>
                <td><input type='submit' name="submit" value="Zaktualizuj"></td>
                <td><input type="reset" name="reset"></td>
            </table>
        </form>
                <jsp:include page="footer.jsp" />
    </body>
</html>

<%
}
else{
out.println("Brak danych w tabeli");
}
}
catch(Exception e)
{
    out.println(e);
}

%>