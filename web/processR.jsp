<%-- 
    Document   : processR
    Created on : 2018-02-21, 15:14:22
    Author     : Kamil
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String username=request.getParameter("username");
String email=request.getParameter("email");
String adress=request.getParameter("adress");
String city=request.getParameter("city");
String voivodeships=request.getParameter("voivodeships");
String telephone=request.getParameter("telephone");
String password=request.getParameter("password");
String zip=request.getParameter("zip");
String name_surname=request.getParameter("name_surname");
String user=request.getParameter("role");

try
{
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into cli_clients1(cli_username,cli_email,cli_adress,cli_city,cli_voivodeships,cli_telephone,cli_password,cli_zip,cli_name_surname,cli_role) values('"+username+"','"+email+"','"+adress+"','"+city+"','"+voivodeships+"','"+telephone+"','"+password+"','"+zip+"','"+name_surname+"','"+user+"')");

request.getRequestDispatcher("index.jsp").forward(request, response);
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
