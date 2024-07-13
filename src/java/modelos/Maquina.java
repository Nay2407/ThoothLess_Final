package modelos;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import tools.Conexion;

public class Maquina {

    private String nombre;
    private int idMaquina;
    private String descripcion;
    private String proveedor;
    private String garantia;
    private String estado;

    public Maquina() {
    }

    public LinkedList<Maquina> listar() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "Select * from maquina ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Maquina> lista = new LinkedList<>();
            while (resultado.next()) {
                Maquina mqa = new Maquina();
                mqa.idMaquina = resultado.getInt("idMAQUINA");
                mqa.nombre = resultado.getString("nombre");
                mqa.descripcion=resultado.getString("descripcion");
                mqa.proveedor = resultado.getString("proveedor");
                mqa.garantia = resultado.getString("garantia");
                mqa.estado = resultado.getString("estado");
                lista.add(mqa);
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
            String consulta = "Select * from maquina where idMAQUINA=" + id + ";";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            resultado.next();
            this.idMaquina = resultado.getInt("idMAQUINA");
            this.nombre = resultado.getString("nombre");
            this.descripcion=resultado.getString("descripcion");
            this.proveedor = resultado.getString("proveedor");
            this.garantia = resultado.getString("garantia");
            this.estado = resultado.getString("estado");
            sentencia.close();
            cnx.close();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
    }

    public void nuevo(String nombre,String descripcion, String proveedor, String garantia, String estado) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "insert into maquina(nombre,descripcion,proveedor,garantia,estado)"
                    + " values(?,?,?,?,?);";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, nombre);
            sentencia.setString(2, descripcion);
            sentencia.setString(3, proveedor);
            sentencia.setString(4, garantia);
            sentencia.setString(5, estado);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void eliminar(String mqa) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "delete from maquina where nombre=?;";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, mqa);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void editar(int idMaquina,
            String nombre, String descripcion, String proveedor, String garantia,
            String estado) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "update maquina ";
            consulta += "set nombre=?, descripcion=?, proveedor=?, garantia=?, estado=?";
            consulta += " where idMAQUINA=?";
            PreparedStatement sentencia = cnx.prepareStatement(consulta);
            sentencia.setString(1, nombre);
            sentencia.setString(2, descripcion);
            sentencia.setString(3, proveedor);
            sentencia.setString(4, garantia);
            sentencia.setString(5, estado);
            sentencia.setInt(6, idMaquina);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();

            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static int obtenerNum() {
        int newIdMaquina = 1;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String consulta = "SELECT MAX(idMAQUINA) AS maxId FROM maquina";
            Statement sentencia = cnx.createStatement();
            ResultSet rs = sentencia.executeQuery(consulta);

            if (rs.next()) {
                newIdMaquina = rs.getInt("maxId") + 1;
            }
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return newIdMaquina;
    }

    /**
     * @return the idMaquina
     */
    public int getIdMaquina() {
        return idMaquina;
    }

    /**
     * @param idMaquina the idMaquina to set
     */
    public void setIdMaquina(int idMaquina) {
        this.idMaquina = idMaquina;
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

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the proveedor
     */
    public String getproveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setproveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the garantia
     */
    public String getgarantia() {
        return garantia;
    }

    /**
     * @param garantia the garantia to set
     */
    public void setgarantia(String garantia) {
        this.garantia = garantia;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

}
