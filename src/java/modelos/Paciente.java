/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import tools.Conexion;

/**
 *
 * @author Franzuá
 */
public class Paciente {
    private int idPaciente;
    private String usuario;
    private String contraseña;
    private int idPersona;
    
    public Paciente(){
        
    }
    private void limpiaObjeto() {
            this.idPaciente = 0;
            this.usuario = null;
            this.contraseña = null;
            this.idPersona = 0;
    }
    public int getLogueado(String usr, String psw) {
        boolean flag = false;
        Paciente pct = new Paciente();
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            
            String consulta = "Select * from paciente where usuario='"+
                    usr+"' and contraseña='"+psw+"';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            while(resultado.next()) {
                pct.idPaciente = resultado.getInt("idPaciente");
            }        
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return pct.idPaciente;
    }
    
    public LinkedList<Paciente> listar() {        
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "Select * from paciente ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Paciente> lista = new LinkedList<>();            
            while(resultado.next()) {
                Paciente pct = new Paciente();
                pct.idPaciente = resultado.getInt("idPaciente");
                pct.usuario = resultado.getString("usuario");
                pct.contraseña = resultado.getString("contraseña");
                pct.idPersona = resultado.getInt("PERSONA_idPersona");
                lista.add(pct);
            }  
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    public void ver(int id) {        
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "Select * from paciente where idPaciente=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);            
            resultado.next();
            this.idPaciente = resultado.getInt("idPaciente");
            this.usuario = resultado.getString("usuario");
            this.contraseña = resultado.getString("contraseña");
            this.idPersona = resultado.getInt("PERSONA_idPersona");             
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }    
    
    public void nuevo(String usr, String psw, int idPersona,
            String nombre,String apellido,String fecNac, String genero,
            String direccion,String telefono,String correo,String tipoDoc,String numDoc){
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "insert into paciente(usuario,contraseña,PERSONA_idPersona)"
                    +" values(?,?,?);";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, usr);
            sentencia.setString(2, psw);
            sentencia.setInt(3, idPersona);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
            Persona a =new Persona();
            a.nuevo(idPersona,nombre, apellido, fecNac, genero, direccion, telefono, correo, tipoDoc, numDoc);
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
        
    public void eliminar(String usr,int id) {        
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "delete from paciente where usuario=?;";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, usr);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
            Persona a = new Persona();
            a.eliminar(id);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void editar(int idPaciente,String usr, String psw, int idPersona,
            String nombre,String apellido,String fecNac, String genero,
            String direccion,String telefono,String correo,String tipoDoc,String numDoc) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "update paciente ";
            consulta += "set usuario=?, contraseña=? ";
            consulta += " where idPaciente=?";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, usr);            
            sentencia.setString(2, psw);
            sentencia.setInt(3, idPaciente);            
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
            Persona a =new Persona();
            a.editar(idPersona,nombre, apellido, fecNac, genero, direccion, telefono, correo, tipoDoc, numDoc);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * @return the idPaciente
     */
    public int getIdPaciente() {
        return idPaciente;
    }

    /**
     * @param idPaciente the idPaciente to set
     */
    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the contraseña
     */
    public String getContraseña() {
        return contraseña;
    }

    /**
     * @param contraseña the contraseña to set
     */
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    /**
     * @return the idPersona
     */
    public int getIdPersona() {
        return idPersona;
    }

    /**
     * @param idPersona the idPersona to set
     */
    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }
    
}
