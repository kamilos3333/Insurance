<%-- 
    Document   : processS
    Created on : 2018-02-24, 11:01:48
    Author     : Kamil
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
    String formT = request.getParameter("typ");    
    String tuser = request.getParameter("users");  
    String year = request.getParameter("rok");  
    String brands = request.getParameter("brands"); 
    String model = request.getParameter("model"); 
    String kierownica = request.getParameter("kierownica");    
    String trejestracja = request.getParameter("trej");  
    String przebieg = request.getParameter("przebieg");   
    String rprzebieg = request.getParameter("rprzebieg"); 
    String uzytkowanie = request.getParameter("uzyt");  
    String parkowanie = request.getParameter("park");  
    String kod = request.getParameter("kodt");   
    String sprowadzony = request.getParameter("sprow");    
    String ubz = request.getParameter("ubz");   

try
{
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
Statement st=conn.createStatement();

String sql = "INSERT INTO cli_car1 " +
"(typ,users,year,brands,model,kierownica,trej,przebieg,rprzebieg,uzyt,park,kody,sprow,ubz) " +"VALUES ('" + formT + "','" + tuser + "' ,'" + year + "','" + brands + "','" + model + "','" + kierownica + "','" + trejestracja + "','" + przebieg + "','" + rprzebieg + "','" + uzytkowanie + "','" + parkowanie + "','" + kod + "','" + sprowadzony + "','" + ubz + "') ";
st.execute(sql);

out.println("Record Inserted Successfully");
}

catch(Exception e)
{
out.println(e.getMessage());
e.printStackTrace();
}
 %>
