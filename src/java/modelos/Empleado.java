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
public class Empleado {

    private int idEmpleado;
    private String rol;
    private String horarioT;
    private String usuario;
    private String contraseña;
    private int idPersona;

    public Empleado() {

    }

    private void limpiaObjeto() {
        this.idEmpleado = 0;
        this.usuario = null;
        this.contraseña = null;
        this.idPersona = 0;
    }

    public int getLogueado(String usr, String psw) {
        int flag = -1;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String consulta = "Select * from empleado where usuario='"
                    + usr + "' and contraseña='" + psw + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            Empleado emp = new Empleado();
            while (resultado.next()) {

                emp.idEmpleado = resultado.getInt("idEmpleado");
                emp.rol = resultado.getString("rol");
                emp.horarioT = resultado.getString("horarioT");
                emp.usuario = resultado.getString("usuario");
                emp.contraseña = resultado.getString("contraseña");
                emp.idPersona = resultado.getInt("PERSONA_idPersona");

            }
            if (emp.rol != null) {
                if (emp.rol.equals("administrador")) {
                    flag = 1; //cuando es administrador
                }
                if (emp.rol.equals("doctor")) {
                    flag = 2; //cuando es doctor
                }
                if (emp.rol.equals("recepcionista")) {
                    flag = 3; //cuando es recepcionista
                }
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }

    public LinkedList<Empleado> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "Select * from empleado; ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Empleado> lista = new LinkedList<>();
            while (resultado.next()) {
                Empleado emp = new Empleado();
                emp.idEmpleado = resultado.getInt("idEmpleado");
                emp.rol = resultado.getString("rol");
                emp.horarioT = resultado.getString("horarioT");
                emp.usuario = resultado.getString("usuario");
                emp.contraseña = resultado.getString("contraseña");
                emp.idPersona = resultado.getInt("PERSONA_idPersona");
                lista.add(emp);
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
            String consulta = "Select * from empleado where idEmpleado=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            resultado.next();
            this.idEmpleado = resultado.getInt("idEmpleado");
            this.rol = resultado.getString("rol");
            this.horarioT = resultado.getString("horarioT");
            this.usuario = resultado.getString("usuario");
            this.contraseña = resultado.getString("contraseña");
            this.idPersona = resultado.getInt("PERSONA_idPersona");
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    public void nuevo(String rol, String horarioT, String usr, String psw, int idPersona,
            String nombre, String apellido, String fecNac, String genero,
            String direccion, String telefono, String correo, String tipoDoc, String numDoc) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "insert into empleado(rol,horarioT,usuario,contraseña,PERSONA_idPersona)"
                    + " values(?,?,?,?,?);";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, rol);
            sentencia.setString(2, horarioT);
            sentencia.setString(3, usr);
            sentencia.setString(4, psw);
            sentencia.setInt(5, idPersona);
            sentencia.executeUpdate();
            sentencia.close();
            //Aqui la funcion
            cnx.close();
            Persona a = new Persona();
            a.nuevo(idPersona, nombre, apellido, fecNac, genero, direccion, telefono, correo, tipoDoc, numDoc);

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void eliminar(String usr,int id) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "delete from empleado where usuario=?;";
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

    public void editar(int idEmpleado, String rol, String horarioT, String usr, String psw, int idPersona,
            String nombre, String apellido, String fecNac, String genero,
            String direccion, String telefono, String correo, String tipoDoc, String numDoc) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "update empleado ";
            consulta += "set rol=?, horarioT=?, usuario=?, contraseña=?";
            consulta += " where idEmpleado=?";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, rol);
            sentencia.setString(2, horarioT);
            sentencia.setString(3, usr);
            sentencia.setString(4, psw);
            sentencia.setInt(5, idEmpleado);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();

            Persona a = new Persona();
            a.editar(idPersona, nombre, apellido, fecNac, genero, direccion, telefono, correo, tipoDoc, numDoc);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * @return the idEmpleado
     */
    public int getIdEmpleado() {
        return idEmpleado;
    }

    /**
     * @param idEmpleado the idEmpleado to set
     */
    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    /**
     * @return the rol
     */
    public String getRol() {
        return rol;
    }

    /**
     * @param rol the rol to set
     */
    public void setRol(String rol) {
        this.rol = rol;
    }

    /**
     * @return the horarioT
     */
    public String getHorarioT() {
        return horarioT;
    }

    /**
     * @param horarioT the horarioT to set
     */
    public void setHorarioT(String horarioT) {
        this.horarioT = horarioT;
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
