/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class conexion {
    
    Connection con = null;
    
    public Connection getconexion(){
        
        try {
            Class.forName("org.mariadb.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mariadb://localhost:3306/redproyectos", "root", "1234");
        } catch (Exception e) {            
        }
      
        return con;
    }
    
}
