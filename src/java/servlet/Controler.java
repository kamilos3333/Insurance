/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import polaczenie.ConexionJDBC;

/**
 *
 * @author Kamil
 */
public class Controler extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ConexionJDBC con = new ConexionJDBC();
        con.conectar();
        String sql = "INSERT INTO cli_clients (cli_user_id, cli_username, cli_email, cli_adress, cli_city, cli_voivodeships, cli_telephone, cli_password, cli_zip, cli_name_surname, cli_role)" 
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try(PreparedStatement pst = con.getConexion().prepareStatement(sql) )
        {
            pst.setString(1, request.getParameter("user_id"));
            pst.setString(2, request.getParameter("username"));
            pst.setString(3, request.getParameter("email"));
            pst.setString(4, request.getParameter("adress"));
            pst.setString(5, request.getParameter("city"));
            pst.setString(6, request.getParameter("voivodeships"));
            pst.setString(7, request.getParameter("telephone"));
            pst.setString(8, request.getParameter("password"));
            pst.setString(9, request.getParameter("zip"));
            pst.setString(10, request.getParameter("name_surname"));
            pst.setString(11, request.getParameter("role"));
            pst.execute();
            
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
            
        } catch (SQLException ex) {
            Logger.getLogger(Controler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
