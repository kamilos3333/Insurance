<%-- 
    Document   : processD
    Created on : 2018-02-22, 21:56:20
    Author     : Kamil
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
    String tform = request.getParameter("tform");    
    String tusers = request.getParameter("tusers");  
    String nieruchomosc = request.getParameter("nieruchomosc");  
    String pietro = request.getParameter("pietro");   
    String material = request.getParameter("material");    
    String rok = request.getParameter("rok");  
    String kod = request.getParameter("kod");   
    String pow = request.getParameter("pow"); 

try
{
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
Statement st=conn.createStatement();

String sql = "INSERT INTO cli_house1 " +
"(typ,users,rodzaj,pietro,material,rok,kod,pow) " +"VALUES ('" + tform + "','" + tusers + "' " +",'" + nieruchomosc + "','" + pietro + "'" +",'" + material + "','" + rok + "','" + kod + "','" + pow + "') ";
st.execute(sql);

out.println("Record Inserted Successfully");
}

catch(Exception e)
{
out.println(e.getMessage());
e.printStackTrace();
}
 %>
   