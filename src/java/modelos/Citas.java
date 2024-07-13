
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.LinkedList;
import tools.Conexion;

/**
 *
 * @author Nay
 */
public class Citas {
    
    private int idCITA;
    private int PACIENTE_idPaciente;
    private int RECEPCIONISTA_idEmpleado;
    private int DENTISTA_idEmpleado;
    private int ESPECIALIDAD_idESPECIALIDAD;
    private int TRATAMIENTO_idTRATAMIENTO;
    private String hora;
    private String descripcion;
    private Date fecha;
    private String estado;

    public int getIdCITA() {
        return idCITA;
    }

    public void setIdCITA(int idCITA) {
        this.idCITA = idCITA;
    }

    public int getPACIENTE_idPaciente() {
        return PACIENTE_idPaciente;
    }

    public void setPACIENTE_idPaciente(int PACIENTE_idPaciente) {
        this.PACIENTE_idPaciente = PACIENTE_idPaciente;
    }

    public int getRECEPCIONISTA_idEmpleado() {
        return RECEPCIONISTA_idEmpleado;
    }

    public void setRECEPCIONISTA_idEmpleado(int RECEPCIONISTA_idEmpleado) {
        this.RECEPCIONISTA_idEmpleado = RECEPCIONISTA_idEmpleado;
    }

    public int getDENTISTA_idEmpleado() {
        return DENTISTA_idEmpleado;
    }

    public void setDENTISTA_idEmpleado(int DENTISTA_idEmpleado) {
        this.DENTISTA_idEmpleado = DENTISTA_idEmpleado;
    }

    public int getESPECIALIDAD_idESPECIALIDAD() {
        return ESPECIALIDAD_idESPECIALIDAD;
    }

    public void setESPECIALIDAD_idESPECIALIDAD(int ESPECIALIDAD_idESPECIALIDAD) {
        this.ESPECIALIDAD_idESPECIALIDAD = ESPECIALIDAD_idESPECIALIDAD;
    }

    public int getTRATAMIENTO_idTRATAMIENTO() {
        return TRATAMIENTO_idTRATAMIENTO;
    }

    public void setTRATAMIENTO_idTRATAMIENTO(int TRATAMIENTO_idTRATAMIENTO) {
        this.TRATAMIENTO_idTRATAMIENTO = TRATAMIENTO_idTRATAMIENTO;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Citas() {

    }

    private void limpiaObjeto() {
        this.idCITA = 0;
        this.PACIENTE_idPaciente = 0;
        this.RECEPCIONISTA_idEmpleado = 0;
        this.DENTISTA_idEmpleado = 0;
        this.ESPECIALIDAD_idESPECIALIDAD = 0;
        this.TRATAMIENTO_idTRATAMIENTO = 0;
        /*
        this.hora = 0;
        this.fecha = 0;
        this.estado = 0;*/

    }

    /*

    public int getLogueado(String usr, String psw) {
        int flag = -1;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String consulta = "Select * from cita where usuario='"
                    + usr + "' and contraseña='" + psw + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            Citas cta = new Citas();
            while (resultado.next()) {

         
            }
            sentencia.close();
            cnx.close();
            return lista;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }*/

    public LinkedList<Citas> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "Select * from cita; ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Citas> lista = new LinkedList<>();
            while (resultado.next()) {
                Citas cta = new Citas();
                cta.idCITA = resultado.getInt("idCITA");
                cta.PACIENTE_idPaciente = resultado.getInt("PACIENTE_idPaciente");
                cta.RECEPCIONISTA_idEmpleado = resultado.getInt("RECEPCIONISTA_idEmpleado");
                cta.DENTISTA_idEmpleado = resultado.getInt("DENTISTA_idEmpleado");
                cta.ESPECIALIDAD_idESPECIALIDAD = resultado.getInt("ESPECIALIDAD_idESPECIALIDAD");
                cta.TRATAMIENTO_idTRATAMIENTO = resultado.getInt("TRATAMIENTO_idTRATAMIENTO");
                cta.hora = resultado.getString("hora");
                cta.descripcion = resultado.getString("descripcion");
                cta.fecha = resultado.getDate("fecha");
                cta.estado = resultado.getString("estado");
                lista.add(cta);
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
            String consulta = "Select * from cita where idCITA=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            resultado.next();
            this.idCITA = resultado.getInt("idCITA");
            this.PACIENTE_idPaciente = resultado.getInt("PACIENTE_idPaciente");
            this.RECEPCIONISTA_idEmpleado = resultado.getInt("RECEPCIONISTA_idEmpleado");
            this.DENTISTA_idEmpleado = resultado.getInt("DENTISTA_idEmpleado");
            this.ESPECIALIDAD_idESPECIALIDAD = resultado.getInt("ESPECIALIDAD_idESPECIALIDAD");
            this.TRATAMIENTO_idTRATAMIENTO = resultado.getInt("TRATAMIENTO_idTRATAMIENTO");
            this.hora = resultado.getString("hora");
            this.descripcion = resultado.getString("descripcion");
            this.fecha = resultado.getDate("fecha");
            this.estado = resultado.getString("estado");
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            
        }

    }

    public void nuevo(int idCITA, int PACIENTE_idPaciente,int RECEPCIONISTA_idEmpleado, int DENTISTA_idEmpleado, int ESPECIALIDAD_idESPECIALIDAD, 
            int TRATAMIENTO_idTRATAMIENTO, String Hora, String descripcion, String fecha, String estado) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            long fechaLong = 0;
            try {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaA = dateFormat.parse(fecha);
                fechaLong = fechaA.getTime();
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.sql.Date fechaSQL = new java.sql.Date(fechaLong);
            String consulta = "insert into cita (idCITA,PACIENTE_idPaciente,RECEPCIONISTA_idEmpleado, DENTISTA_idEmpleado,ESPECIALIDAD_idESPECIALIDAD,TRATAMIENTO_idTRATAMIENTO,Hora,descripcion,fecha,estado)"
                    + " values(?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setInt(1, idCITA);
            sentencia.setInt(2, PACIENTE_idPaciente);
            sentencia.setInt(3, RECEPCIONISTA_idEmpleado);
            sentencia.setInt(4, DENTISTA_idEmpleado);
            sentencia.setInt(5, ESPECIALIDAD_idESPECIALIDAD);
            sentencia.setInt(6, TRATAMIENTO_idTRATAMIENTO);
            sentencia.setString(2, Hora);
            sentencia.setString(3, descripcion);
            sentencia.setDate(4, fechaSQL);
            sentencia.setString(5, estado);
            sentencia.executeUpdate();
            sentencia.close();
            //Aqui la funcion
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    /*

    public void eliminar(String usr, int id) {
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
    }*/

    public void nuevo(String paciente, String recepcionista, String dentista, String especialidad, String tratamiento, String hora, String descripcion, String fecha, String estado) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
