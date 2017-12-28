/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebServices;

import BaseDatos.conocimiento;
import BaseDatos.control;
import BaseDatos.usuario;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author user
 */
@WebService(serviceName = "WSUsuario")
public class WSUsuario {

    /**
     * This is a sample web service operation
     */
        
    @WebMethod(operationName = "RegistrarUsuario")
    public boolean RegistrarUsuario(@WebParam(name = "nombre") String user, @WebParam(name = "apellido") String apellido, 
        @WebParam(name = "nickname") String nickname, @WebParam(name = "pass") String pass, @WebParam(name = "idrol") int idrol) {
        
        usuario U = new usuario();
        try {
            return U.registrarUsuario(user, apellido,nickname,pass,idrol);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    @WebMethod(operationName = "ValidarUsuario")
    public boolean ValidarUsuario(@WebParam(name = "nickname") String user, @WebParam(name = "pass") String pass) {
        
        usuario U = new usuario();
        try {
            return U.validarUsuario(user, pass);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
     @WebMethod(operationName = "getRol")
    public String getRol(@WebParam(name = "nickname") String user) {
        
        usuario U = new usuario();
        try {
            return U.getrol(user);
        } 
        catch (SQLException ex) {
            return "Rol no encontrado";
        }
    }
    
    @WebMethod(operationName = "getidUsuario")
    public int getidRol(@WebParam(name = "nickname") String user) {
        
        usuario U = new usuario();
        try {
            return U.getidUsuario(user);
        } 
        catch (SQLException ex) {
            return 0;
        }
    }
    
    @WebMethod(operationName = "publicarEstado")
    public boolean publicarEstado(@WebParam(name = "texto") String texto,@WebParam(name = "idusuario") int idusuario) {
        
        usuario U = new usuario();
        try {
            return U.publicarEstado(texto, idusuario);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    @WebMethod(operationName = "listaUsuario")
    public ArrayList<usuario> ListaUsuarios(@WebParam(name = "idusuario") int idusuario){
        
        control C = new control();
        try {
            return C.ListaUsuarios(idusuario);
        } 
        catch (SQLException ex) {
            return new ArrayList<>();
        }
    }
    
    @WebMethod(operationName = "listaContactos")
    public ArrayList<usuario> ListaContactos(@WebParam(name = "idusuario") int idusuario){
        
        control C = new control();
        try {
            return C.ListaContactos(idusuario);
        } 
        catch (SQLException ex) {
            return new ArrayList<>();
        }
    }
    
    @WebMethod(operationName = "RegistrarContacto")
    public boolean seguirUsuario(@WebParam(name = "idusuario") int idusuario, @WebParam(name = "idcontacto") int idusuariocontacto) {
        
        usuario U = new usuario();
        try {
            return U.registrarContacto(idusuario, idusuariocontacto);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    @WebMethod(operationName = "EliminarContacto")
    public boolean eliminarContacto(@WebParam(name = "idusuario") int idusuario, @WebParam(name = "idcontacto") int idusuariocontacto) {
        
        usuario U = new usuario();
        try {
            return U.eliminarContacto(idusuario, idusuariocontacto);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    @WebMethod(operationName = "getidRegistro")
    public int getidRegistro(@WebParam(name = "idusuario") int idusurio,@WebParam(name = "idcontacto") int idcontacto ) {
        
        usuario U = new usuario();
        try {
            return U.getidRegistro(idusurio, idcontacto);
        } 
        catch (SQLException ex) {
            return 0;
        }
    }
    
    @WebMethod(operationName = "enviarMensaje")
    public boolean enviarMD(@WebParam(name = "texto") String texto,@WebParam(name = "idregistro") int idregistro) {
        
        usuario U = new usuario();
        try {
            return U.enviarMensaje(texto, idregistro);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
     @WebMethod(operationName = "listaConocimientos")
    public ArrayList<conocimiento> ListaConocimientos(){
        
        control C = new control();
        try {
            return C.ListaConocimientos();
        } 
        catch (SQLException ex) {
            return new ArrayList<>();
        }
    }
    
    @WebMethod(operationName = "RegistrarConocimiento")
    public boolean RegistrarConocimiento(@WebParam(name = "idconocimiento") int idconocimiento, @WebParam(name = "idusuario") int idusuario, 
        @WebParam(name = "karma") int karma, @WebParam(name = "idpropuesto") int idusuarioprop) {
        
        conocimiento co = new conocimiento();
        try {
            return co.registrarConocimiento(idconocimiento, idusuario, karma, idusuarioprop);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    @WebMethod(operationName = "crearAsociacion")
    public boolean crearAsociacion(@WebParam(name = "nombre") String nombre, @WebParam(name = "resumen") String resumen, 
        @WebParam(name = "idcreador")  int idcreador) {
        
        usuario U = new usuario();
        try {
            return  U.crearAsociacion(nombre, resumen, idcreador);
        } 
        catch (SQLException ex) {
            return false;
        }
    }
    
    
    
    
}
