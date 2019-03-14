/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kamil
 */
public class Login extends HttpServlet {


    public Login() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("user");
            String password = request.getParameter("password");
            String dbName = null;
            String dbPassword = null;
            String sql = "select * from cli_clients where cli_username=? and cli_password=?";
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ubezp", "postgres", "qwerty123"); 
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();   
            PrintWriter out = response.getWriter();
            while(rs.next()) {
                dbName = rs.getString(2);
                dbPassword = rs.getString(8);
            }
            if (name.equals(dbName)&&password.equals(dbPassword)){
             out.println("Zalogowany poprawnie");
            }
            else {
//                response.sendRedirect("logowanie.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            }
            
            
            
        } catch (ClassNotFoundException e) {
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
