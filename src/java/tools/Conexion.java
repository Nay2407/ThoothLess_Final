
package tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private Connection cnx;
    
    public Conexion() {
    }
    
    public Connection conecta()
    {        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/consultorio";
            String usr = "naye";
            String psw = "naye";
            cnx = DriverManager.getConnection(url, usr, psw);
            return cnx;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }   
        return null;
    }   
    
    public int pruebaConexion () {
        Connection c = conecta();
        if (c!=null) {
            return 1;
        } else {
            return 0;
        }
    }
    
}
