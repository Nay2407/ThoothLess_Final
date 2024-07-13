package controladores;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Receta;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/ctrlRecetas"})
public class ctrlRecetas extends HttpServlet {

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
            out.println("<title>Servlet ctrlRecetas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ctrlRecetas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
        Receta rta = new Receta();
        boolean log = false;
        int idReceta = -1;
        String fecha ="";
        String numCita = "";
        String pag = "";
        int cantidad = -1;
        String dosificacion ="";
        String medicamento ="";
        int detaRec = -1;
        
        if (request.getParameter("idRECETA") != null) {
            idReceta = Integer.parseInt(request.getParameter("idRECETA"));
        }
        if (request.getParameter("fecha") != null) {
            fecha = request.getParameter("fecha");
        }
        if (request.getParameter("CITA_idCITA") != null) {
            numCita = request.getParameter("CITA_idCITA");
        }
        if (request.getParameter("pag") != null) {
            pag = request.getParameter("pag");
        }
        
         if (request.getParameter("idDETALLE_RECETA") != null) {
            detaRec = Integer.parseInt(request.getParameter("idDETALLE_RECETA"));
        }
        if (request.getParameter("cantidad") != null) {
            cantidad = Integer.parseInt(request.getParameter("cantidad"));
        }
        if (request.getParameter("dosificacion") != null) {
            dosificacion = request.getParameter("dosificacion");
        }
        if (request.getParameter("medicamento") != null) {
            medicamento = request.getParameter("medicamento");
        }
        
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
