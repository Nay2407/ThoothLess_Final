/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import tools.Conexion;

/**
 *
 * @author User
 */
public class Receta {
    
    private int idRECETA;
    private Date fecha;
    private int CITA_idCITA;
    public Receta(){
        
    }

    public int getIdRECETA() {
        return idRECETA;
    }

    public void setIdRECETA(int idRECETA) {
        this.idRECETA = idRECETA;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCITA_idCITA() {
        return CITA_idCITA;
    }

    public void setCITA_idCITA(int CITA_idCITA) {
        this.CITA_idCITA = CITA_idCITA;
    }
    
    private void limpiaObjeto() {
        this.idRECETA = 0;
        this.CITA_idCITA = 0;
    }
    public LinkedList<Receta> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "Select * from receta; ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Receta> lista = new LinkedList<>();
            while (resultado.next()) {
                Receta rta = new Receta();
                rta.idRECETA = resultado.getInt("idRECETA");
                rta.fecha = resultado.getDate("fecha");
                rta.CITA_idCITA = resultado.getInt("CITA_idCITA"); 
                lista.add(rta);
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
            String consulta = "Select * from receta where idRECETA=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            resultado.next();
            this.idRECETA = resultado.getInt("idRECETA");
            this.fecha = resultado.getDate("fecha");
            this.CITA_idCITA = resultado.getInt("CITA_idCITA");
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());           
        }
    }
     public void nuevo(int idRECETA, String fecha,int CITA_idCITA, int cantidad,String dosificacion, String medicamento  ) {
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
            String consulta = "insert into cita (fecha,CITA_idCITA)"
                    + " values(?,?);";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setInt(1, idRECETA);
            sentencia.setString(2, fecha);
            sentencia.setInt(3, CITA_idCITA);
            sentencia.executeUpdate();
            sentencia.close();
            //Aqui la funcion
            cnx.close();
            DetalleReceta drta =new DetalleReceta();
            drta.nuevo(idRECETA, cantidad, dosificacion, medicamento);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    
    
}
