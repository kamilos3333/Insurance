<%-- 
    Document   : login-process
    Created on : 2018-02-13, 11:32:21
    Author     : Kamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    String uname=request.getParameter("t1");
    String pwd=request.getParameter("t2");
    
    Connection conn = null;
    Statement st=null;
    ResultSet rs=null;
    
    String qry ="Select * from cli_clients1 where cli_username='"+uname+"' and cli_password='"+pwd+"'";
     try 
     {
         Class.forName("org.postgresql.Driver");
         conn =(Connection)DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123");
         st=conn.createStatement();
         
         rs=st.executeQuery(qry);
         
         if(rs.next())
         {
             String userid=rs.getString(1);
             String username=rs.getString(2);
             String uemail =rs.getString(3);
             String uadress=rs.getString(4);
             String ucity=rs.getString(5);
             String uvoivoderships=rs.getString(6);
             String utelephone=rs.getString(7);
             String upassword=rs.getString(8);
             String uzip=rs.getString(9);
             String unamesurname=rs.getString(10);
             String urole=rs.getString(11);
             
             session.setAttribute("sid", userid);
             session.setAttribute("susername", username);
             session.setAttribute("semail", uemail);
             session.setAttribute("sadress", uadress);
             session.setAttribute("scity", ucity);
             session.setAttribute("svoivoderships", uvoivoderships);
             session.setAttribute("stelephone", utelephone);
             session.setAttribute("spassword", upassword);
             session.setAttribute("szip", uzip);
             session.setAttribute("snamesurname", unamesurname);
             session.setAttribute("srole", urole);
             
             if(urole.equals("user")) {
                 response.sendRedirect("welcome.jsp");
             }
             else {
                 response.sendRedirect("adminP.jsp");
            }
             
    
         }
         else
         {
             session.setAttribute("msg", "Nieprawidłowa nazwa użykownika lub hasło");
             response.sendRedirect("logowanie.jsp");
         }
         
         
         
     }catch(Exception ex)
     {
         out.println("Cause :"+ex);
     }
%>
