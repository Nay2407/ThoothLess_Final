/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Citas;

/**
 *
 * @author User
 */
@WebServlet(name = "ctrlCitas", urlPatterns = {"/ctrlCitas"})
public class ctrlCitas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ctrlCitas</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ctrlCitas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Citas cta = new Citas();
        boolean log = false;
        int idCita = -1;
        String paciente = "";
        String recepcionista = "";
        String dentista = "";
        String especialidad = "";
        String tratamiento = "";
        String hora = "";
        String descripcion = "";
        String fecha = "";
        String estado = "";
        String pag = "";

        if (request.getParameter("idCITA") != null) {
            idCita = Integer.parseInt(request.getParameter("idCITA"));
        }
        if (request.getParameter("paciente") != null) {
            paciente = request.getParameter("paciente");
        }
        if (request.getParameter("recepcionista") != null) {
            recepcionista = request.getParameter("recepcionista");
        }
        if (request.getParameter("dentista") != null) {
            dentista = request.getParameter("dentista");
        }
        if (request.getParameter("pag") != null) {
            pag = request.getParameter("pag");
        }
        if (request.getParameter("especialidad") != null) {
            especialidad = request.getParameter("especialidad");
        }
        if (request.getParameter("tratamiento") != null) {
            tratamiento = request.getParameter("tratamiento");
        }
        if (request.getParameter("hora") != null) {
            hora = request.getParameter("hora");
        }
        if (request.getParameter("descripcion") != null) {
            descripcion = request.getParameter("descripcion");
        }
        if (request.getParameter("fecha") != null) {
            fecha = request.getParameter("fecha");
        }
        if (request.getParameter("estado") != null) {
            estado = request.getParameter("estado");
        }
 
        if (pag.equals("cta_nuevo")) {
            cta.nuevo(paciente,recepcionista,dentista,especialidad,tratamiento,hora,descripcion,fecha,estado);
            response.sendRedirect("pct_index.jsp?pagina=pct_citas");
        } /*else if (pag.equals("mqa_eliminar")) {
            mqa.eliminar(nombre);
            response.sendRedirect("pct_index.jsp?pagina=pct_citas");
        } else if (pag.equals("mqa_editar")) {
            mqa.editar(idMaquina,nombre, descripcion, proveedor, garantia, estado);
            response.sendRedirect("pct_index.jsp?pagina=pct_citas");
        }*/

    }


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
