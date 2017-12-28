/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class control {
    
    public ArrayList<usuario> ListaUsuarios(int idusuario) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
                
        String sql=  "select U.idusuario, U.nickname from Usuario u where U.idrol !=4 and U.idusuario !=?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setInt(1,idusuario);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            ArrayList<usuario> listaEs = new ArrayList<usuario>();
            while(rs.next()){      
                
                usuario user = new usuario(rs.getInt(1), rs.getString(2));
                listaEs.add(user);
            }            
            rs.close();
            return listaEs;
            
        } 
        catch (SQLException e) {
            System.out.println(e.getMessage());
            return new ArrayList<>();
            
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
    
    public ArrayList<usuario> ListaContactos(int idusuario) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
                
        String sql=  "select distinct U.idusuario, U.nickname from Usuario u, Contacto C where C.idusuariocontacto=U.idusuario and C.idusuario =?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setInt(1,idusuario);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            ArrayList<usuario> listaEs = new ArrayList<usuario>();
            while(rs.next()){      
                
                usuario user = new usuario(rs.getInt(1), rs.getString(2));
                listaEs.add(user);
            }            
            rs.close();
            return listaEs;
            
        } 
        catch (SQLException e) {
            System.out.println(e.getMessage());
            return new ArrayList<>();
            
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
    
    public ArrayList<habilidad> ListaHabilidad(int idusuario) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
                
        String sql=  "select S.karma, H.habilidad, H.idhabilidad from Habilidad H, suscripcionhabilidad S, Usuario u "
                + "where S.idusuario=U.idusuario and S.idhabilidad=H.idhabilidad and S.idusuario =?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setInt(1,idusuario);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            ArrayList<habilidad> listaHabi = new ArrayList<habilidad>();
            while(rs.next()){      
                
                habilidad habi = new habilidad(rs.getInt(3), rs.getString(2),rs.getInt(1));
                listaHabi.add(habi);
            }            
            rs.close();
            return listaHabi;
            
        } 
        catch (SQLException e) {
            System.out.println(e.getMessage());
            return new ArrayList<>();
            
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
    
    public ArrayList<conocimiento> ListaConocimientos() throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
                
        String sql=  "select * from conocimiento";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            ArrayList<conocimiento> listaCono = new ArrayList<conocimiento>();
            while(rs.next()){      
                
                conocimiento conoc = new conocimiento(rs.getInt(1), rs.getString(2),rs.getInt(3));
                listaCono.add(conoc);
            }            
            rs.close();
            return listaCono;
            
        } 
        catch (SQLException e) {
            System.out.println(e.getMessage());
            return new ArrayList<>();
            
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
    
}
