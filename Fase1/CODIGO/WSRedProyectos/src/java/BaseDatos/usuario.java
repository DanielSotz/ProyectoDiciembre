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
import java.sql.Statement;

/**
 *
 * @author user
 */
public class usuario {
    
    int idusuario;
    String nombre;
    String apellido;
    String nickname;
    String contra;
    int idrol;
    
    
    public usuario(int idusuario, String nickname) {
        this.idusuario = idusuario;
        this.nickname = nickname;
    }
    
    public usuario() {
        
    }
    
    
    public boolean registrarUsuario(String nombre, String apellido, String nickname, String contra, int idrol ) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "INSERT INTO USUARIO(nombre,apellido,nickname,contrasenia,idrol)"
                + "VALUES(?,?,?,?,?)";
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, apellido);
            preparedStatement.setString(3, nickname);
            preparedStatement.setString(4, contra);
            preparedStatement.setInt(5,idrol);            
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
    
    public boolean validarUsuario(String nickname, String passwd) throws SQLException{
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String sql=  "select u.nickname, u.contrasenia, r.idrol from Usuario U, rol r where U.idrol=r.idrol and	U.nickname='"+nickname+"'";
        
        String nicknameTMP, contraTMP;
        
        
        try {
             dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(sql);            
            ResultSet rs = preparedStatement.executeQuery();
            
            while(rs.next()){                
                nicknameTMP= rs.getString("nickname");
                contraTMP= rs.getString("contrasenia");
                if(nickname.equals(nicknameTMP)&& passwd.equals(contraTMP) ){                 
                    return true;                  
                }                
            }
            
            rs.close();
            return false;
        } 
        catch (Exception e) {
            e.printStackTrace();
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
    
    public String getrol(String nickname) throws SQLException{
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        String resultado = null;        
        String sql=  "select u.nickname, u.contrasenia, r.idrol, r.nombre from Usuario U, rol r where U.idrol=r.idrol and	U.nickname=?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setString(1,nickname);
            
            ResultSet rs = preparedStatement.executeQuery();         
            while(rs.next()){                
                resultado= rs.getString("nombre");
                return resultado;                      
            }            
            rs.close();
            return resultado ="Rol no encontrado";
        } 
        catch (Exception e) {
            e.printStackTrace();
            return resultado = e.getMessage();
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
    
    public int getidUsuario(String nickname) throws SQLException{
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        int resultado = 0;        
        String sql=  "select u.nickname, u.contrasenia, u.idusuario, r.nombre from Usuario U, rol r where U.idrol=r.idrol and U.nickname=?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setString(1,nickname);
            
            ResultSet rs = preparedStatement.executeQuery();         
            while(rs.next()){                
                resultado= rs.getInt("idusuario");
                return resultado;                      
            }            
            rs.close();
            return resultado;
        } 
        catch (Exception e) {
            e.printStackTrace();
            return resultado;
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
    
    public boolean publicarEstado(String texto, int idusuario) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "insert into Estado(texto,fecha,idusuario,denuncia)"
                + "VALUES(?,CURRENT_DATE,?,?)";
        
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, texto);            
            preparedStatement.setInt(2, idusuario);
            preparedStatement.setString(3,"No");           
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
    
    public boolean registrarContacto(int idusuario, int idusuariocontacto ) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "INSERT INTO contacto(idusuario,idusuariocontacto)"
                + "VALUES(?,?)";
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, idusuario);
            preparedStatement.setInt(2, idusuariocontacto);          
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
    
    public boolean eliminarContacto(int idusuario, int idusuariocontacto ) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "Delete from contacto where idusuario=? and idusuariocontacto=?";
                
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, idusuario);
            preparedStatement.setInt(2, idusuariocontacto);          
            // execute insert SQL stetement
            int n = preparedStatement.executeUpdate();
            if (n==1){
                return true;
                }
            dbConnection.close();
            return false;
            
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
    
    public int getidRegistro(int idusuario, int idcontacto) throws SQLException{
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        int resultado = 0;        
        String sql=  "select i.idregistro from contacto i where i.idusuario=? and i.idusuariocontacto=?";
                       
        try {
            dbConnection = new conexion().getconexion();

            preparedStatement = dbConnection.prepareStatement(sql);
            preparedStatement.setInt(1,idusuario);
            preparedStatement.setInt(2, idcontacto);
            
            ResultSet rs = preparedStatement.executeQuery();         
            while(rs.next()){                
                resultado= rs.getInt("idregistro");
                return resultado;                      
            }            
            rs.close();
            return resultado;
        } 
        catch (Exception e) {
            e.printStackTrace();
            return resultado;
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
    
     public boolean enviarMensaje(String texto, int idregistro) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "insert into Mensaje(texto,fecha,idregistro)"
                + "VALUES(?,CURRENT_DATE,?)";
        
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, texto);            
            preparedStatement.setInt(2, idregistro);           
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
     
     public boolean crearAsociacion(String nombre, String resumen, int idcreador ) throws SQLException {
        
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String insertTableSQL = "INSERT INTO asociacion(nombre,resumen,idusuariocreador)"
                + "VALUES(?,?,?)";
        try{
            dbConnection = new conexion().getconexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, resumen);
            preparedStatement.setInt(3, idcreador);                     
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
     
    
     

    /**
     * @return the idusuario
     */
    public int getIdusuario() {
        return idusuario;
    }

    /**
     * @param idusuario the idusuario to set
     */
    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    /**
     * @return the nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname the nickname to set
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    
         
    
}
