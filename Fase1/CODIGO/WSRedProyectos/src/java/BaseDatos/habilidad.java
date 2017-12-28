/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

/**
 *
 * @author user
 */
public class habilidad {
    
    int idhabilidad;
    String nombre;
    int karma;

    public habilidad(int idhabilidad, String nombre) {
        this.idhabilidad = idhabilidad;
        this.nombre = nombre;
    }

    public habilidad(int idhabilidad, String nombre, int karma) {
        this.idhabilidad = idhabilidad;
        this.nombre = nombre;
        this.karma = karma;
    }    
    
      
    public habilidad() {
        
    }
    
    
    
    public int getKarma() {
        return karma;
    }

    public void setKarma(int karma) {
        this.karma = karma;
    }
    

    /**
     * @return the idhabilidad
     */
    public int getIdhabilidad() {
        return idhabilidad;
    }

    /**
     * @param idhabilidad the idhabilidad to set
     */
    public void setIdhabilidad(int idhabilidad) {
        this.idhabilidad = idhabilidad;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
    
}
