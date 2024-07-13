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
public class DetalleReceta {
    private int idDETALLE_RECETA;
    private int RECETA_idRECETA;
    private int cantidad;
    private String dosificacion;
    private String medicamento;
    public DetalleReceta(){
        
    }

    public int getIdDETALLE_RECETA() {
        return idDETALLE_RECETA;
    }

    public void setIdDETALLE_RECETA(int idDETALLE_RECETA) {
        this.idDETALLE_RECETA = idDETALLE_RECETA;
    }

    public int getRECETA_idRECETA() {
        return RECETA_idRECETA;
    }

    public void setRECETA_idRECETA(int RECETA_idRECETA) {
        this.RECETA_idRECETA = RECETA_idRECETA;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getDosificacion() {
        return dosificacion;
    }

    public void setDosificacion(String dosificacion) {
        this.dosificacion = dosificacion;
    }

    public String getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(String medicamento) {
        this.medicamento = medicamento;
    }
     private void limpiaObjeto() {
        this.idDETALLE_RECETA = 0;
        this.RECETA_idRECETA = 0;
        this.cantidad = 0;
        this.dosificacion = null;
        this.medicamento =null;
    }
     public LinkedList<DetalleReceta> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "Select * from detalle_receta; ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<DetalleReceta> lista = new LinkedList<>();
            while (resultado.next()) {
                DetalleReceta drta = new DetalleReceta();
                drta.idDETALLE_RECETA = resultado.getInt("idDETALLE_RECETA");
                drta.RECETA_idRECETA = resultado.getInt("RECETA_idRECETA");
                drta.cantidad = resultado.getInt("cantidad");
                drta.dosificacion = resultado.getString("dosificacion");
                drta.medicamento = resultado.getString("medicamento");                
                lista.add(drta);
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
            DetalleReceta drta = new DetalleReceta();
            resultado.next();
            this.idDETALLE_RECETA = resultado.getInt("idDETALLE_RECETA");
            this.RECETA_idRECETA = resultado.getInt("RECETA_idRECETA");
            this.cantidad = resultado.getInt("cantidad");
            this.dosificacion = resultado.getString("dosificacion");
            this.medicamento = resultado.getString("genero");
            sentencia.close();
            cnx.close();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
     public void nuevo(int idReceta, int cantidad, String dosificacion, String medicamento) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta1 = "insert into medicamento(idDetCita,idReceta,cantidad,dosificacion,medicamento) values(?,?,?,?,?);";
            PreparedStatement sentencia1 = cnx.prepareStatement(consulta1);
            sentencia1.setInt(1, idReceta);
            sentencia1.setInt(2, cantidad);
            sentencia1.setString(3, dosificacion);
            sentencia1.setString(4, medicamento);
            sentencia1.executeUpdate();
            sentencia1.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
     
    
    
}
