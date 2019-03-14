/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package polaczenie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kamil
 */
public class ConexionJDBC {
    Connection conexion = null;
    private final String db = "Ubezp";
    private final String host = "localhost";
    private final String port = "5432";
    private final String user = "postgres";
    private final String pass = "qwerty123";

    String driverDb = "org.postgresql.Driver";
    String url = "jdbc:postgresql://" + host + ":" + port + "/" + db;

    public Connection conectar() {
        try {
            Class.forName(driverDb);
            conexion = DriverManager.getConnection(url, user, pass);
            if (!conexion.isClosed()) {
                System.out.println("Połączenie z bazą danych zakończne sukcesem" + db);
            }
            return conexion;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConexionJDBC.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public Connection getConexion() {
        return conexion;
    }
}
