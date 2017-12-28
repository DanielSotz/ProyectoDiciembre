/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class conocimiento {
    
    int idconocimiento;
    String nombre;
    int idhabilidad;
    int karma;

    public conocimiento(int idconocimiento, String nombre, int idhabilidad, int karma) {
        this.idconocimiento = idconocimiento;
        this.nombre = nombre;
        this.idhabilidad = idhabilidad;
        this.karma = karma;
    }

    public conocimiento(int idconocimiento, String nombre, int idhabilidad) {
        this.idconocimiento = idconocimiento;
        this.nombre = nombre;
        this.idhabilidad = idhabilidad;
    }  
    

    public conocimiento() {
    }
    
    public boolean registrarConocimiento(int idconocimiento, int idusuario, int karma,int idusuarioprop) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "INSERT INTO Registroconocimiento(idconocimiento,idusuario,karma,idusuariopropuesto)"
                + "VALUES(?,?,?,?)";
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, idconocimiento);
            preparedStatement.setInt(2, idusuario);
            preparedStatement.setInt(3, karma);
            preparedStatement.setInt(4, idusuarioprop);            
            // execute insert SQL stetement
            preparedStatement.executeUpdate();
            dbConnection.close();
            return true;
        }
            
         catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
          }
         finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        }
    
    }
    
       
    
    

    public int getIdconocimiento() {
        return idconocimiento;
    }

    public void setIdconocimiento(int idconocimiento) {
        this.idconocimiento = idconocimiento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getKarma() {
        return karma;
    }

    public void setKarma(int karma) {
        this.karma = karma;
    }
    
    
    
    
    
}
