package modelos;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.LinkedList;
import tools.Conexion;

/**
 *
 * @author Franzuá
 */
public class Persona {

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
    //atributos de Persona
    private int idPersona;
    private String nombre;
    private String apellido;
    private Date fechaNac;
    private String genero;
    private String direccion;
    private String telefono;
    private String correo;
    private String tipoDoc;
    private String numDoc;

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

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the fechaNac
     */
    public Date getFechaNac() {
        return fechaNac;
    }

    /**
     * @param fechaNac the fechaNac to set
     */
    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }

    /**
     * @return the genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero the genero to set
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the tipoDoc
     */
    public String getTipoDoc() {
        return tipoDoc;
    }

    /**
     * @param tipoDoc the tipoDoc to set
     */
    public void setTipoDoc(String tipoDoc) {
        this.tipoDoc = tipoDoc;
    }

    /**
     * @return the numDoc
     */
    public String getNumDoc() {
        return numDoc;
    }

    /**
     * @param numDoc the numDoc to set
     */
    public void setNumDoc(String numDoc) {
        this.numDoc = numDoc;
    }

    public Persona() {
    }

    private void limpiaObjeto() {
        this.idPersona = 0;
        this.nombre = null;
        this.apellido = null;
        this.fechaNac = null;
        this.genero = null;
        this.direccion = null;
        this.telefono = null;
        this.correo = null;
        this.tipoDoc = null;
        this.numDoc = null;
    }

    public LinkedList<Persona> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "SELECT *"
                    + "FROM persona ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Persona> lista = new LinkedList<>();
            while (resultado.next()) {
                Persona usr = new Persona();
                usr.idPersona = resultado.getInt("idPersona");
                usr.nombre = resultado.getString("nombre");
                usr.apellido = resultado.getString("apellido");
                usr.fechaNac = resultado.getDate("fecNac");
                usr.genero = resultado.getString("genero");
                usr.direccion = resultado.getString("direccion");
                usr.telefono = resultado.getString("telefono");
                usr.correo = resultado.getString("correo");
                usr.tipoDoc = resultado.getString("tipoDoc");
                usr.numDoc = resultado.getString("numDoc");
                lista.add(usr);
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
            String consulta = "Select * from persona where idPersona=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            Persona us = new Persona();
            resultado.next();
            this.idPersona = resultado.getInt("idPersona");
            this.nombre = resultado.getString("nombre");
            this.apellido = resultado.getString("apellido");
            this.fechaNac = resultado.getDate("fecNac");
            this.genero = resultado.getString("genero");
            this.direccion = resultado.getString("direccion");
            this.telefono = resultado.getString("telefono");
            this.correo = resultado.getString("correo");
            this.tipoDoc = resultado.getString("tipoDoc");
            this.numDoc = resultado.getString("numDoc");
            sentencia.close();
            cnx.close();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void nuevo(int idPersona, String nombre, String apellido, String fecNac, String genero,
            String direccion, String telefono, String correo, String tipoDoc, String numDoc) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            long fecNacLong = 0;
            try {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaNacA = dateFormat.parse(fecNac);
                fecNacLong = fechaNacA.getTime();
            } catch (ParseException e) {
                e.printStackTrace(); 
            }
            java.sql.Date fechaSQL = new java.sql.Date(fecNacLong);
            String consulta1 = "insert into persona(idPersona,nombre,apellido,fecNac,genero,direccion,telefono,correo,tipoDoc,numDoc) values(?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement sentencia1 = cnx.prepareStatement(consulta1);
            sentencia1.setInt(1, idPersona);
            sentencia1.setString(2, nombre);
            sentencia1.setString(3, apellido);
            sentencia1.setDate(4, fechaSQL);
            sentencia1.setString(5, genero);
            sentencia1.setString(6, direccion);
            sentencia1.setString(7, telefono);
            sentencia1.setString(8, correo);
            sentencia1.setString(9, tipoDoc);
            sentencia1.setString(10, numDoc);

            sentencia1.executeUpdate();
            sentencia1.close();

            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void eliminar(int id) {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String consulta = "DELETE FROM persona WHERE idPersona = ?;";
        PreparedStatement sentencia = cnx.prepareStatement(consulta);
        sentencia.setInt(1, id);
        sentencia.executeUpdate();
        sentencia.close();
        cnx.close();

    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
}

    public void editar(int idPersona,String nombre, String apellido, String fecNac,
            String genero,String direccion,String telefono,String correo,String tipoDoc,String numDoc) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            long fecNacLong = 0;
            try {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaNacA = dateFormat.parse(fecNac);
                fecNacLong = fechaNacA.getTime();
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date fechaSQL = new java.sql.Date(fecNacLong);
            String consulta = "update persona ";
            consulta += "set nombre=?, apellido=?, fecNac=?, genero=?, direccion=?, ";
            consulta += "telefono=?, correo=?, tipoDoc=?, numDoc=? where idPersona=?";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, nombre);
            sentencia.setString(2, apellido);
            sentencia.setDate(3, fechaSQL);
            sentencia.setString(4, genero);
            sentencia.setString(5, direccion);
            sentencia.setString(6, telefono);
            sentencia.setString(7, correo);
            sentencia.setString(8, tipoDoc);
            sentencia.setString(9, numDoc);
            sentencia.setInt(10, idPersona);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static int obtenerNum() {
        int newIdPersona = 1;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "SELECT MAX(idPersona) AS maxId FROM persona";
            Statement sentencia = cnx.createStatement();
            ResultSet rs = sentencia.executeQuery(consulta);

            if (rs.next()) {
                newIdPersona = rs.getInt("maxId") + 1;
            }
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return newIdPersona;
    }

}
