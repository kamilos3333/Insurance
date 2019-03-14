<%-- 
    Document   : updateINFO
    Created on : 2018-02-18, 14:35:25
    Author     : Kamil
--%>

<%@page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String st1 = request.getParameter("myUsername");
    String st2 = request.getParameter("myEmail");
    String st3 = request.getParameter("myAdress");
    String st4 = request.getParameter("myCity");
    String st5 = request.getParameter("myVoivodeships");
    String st6 = request.getParameter("myTelephone");
    String st7 = request.getParameter("myZip");
    String st8 = request.getParameter("myNameSurname");
    String st9 = request.getParameter("myRole");
    String st10 = request.getParameter("hId");

    try {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
        Statement stat = con.createStatement();
        String query = "update cli_clients1 set cli_email='"+st2+"', cli_adress='"+st3+"',cli_city='"+st4+"', cli_voivodeships='"+st5+"',cli_telephone='"+st6+"', cli_zip='"+st7+"',cli_name_surname='"+st8+"', cli_role='"+st9+"' where cli_user_id="+st10;

        int i =stat.executeUpdate(query);
         if(i==1)
         {
             out.println("Update");
         }
         else{
         out.println("Not update");     
         }
         
         }
          catch(Exception e)
          {
          out.println(e);
          }

%>
