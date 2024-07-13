/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Maquina;

/**
 *
 * @author Franzuá
 */
@WebServlet(name = "ctrlMaquina", urlPatterns = {"/ctrlMaquina"})
public class ctrlMaquina extends HttpServlet {

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
            out.println("<title>Servlet ctrlMaquina</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ctrlMaquina at " + request.getContextPath() + "</h1>");
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
        Maquina mqa=new Maquina();
        

        int idMaquina = -1;
        String nombre = "";
        String descripcion = "";
        String proveedor="";
        String garantia="";
        String estado="";
        

        String pag = "";
        if (request.getParameter("idMaquina") != null) {
            idMaquina = Integer.parseInt(request.getParameter("idMaquina"));
        }
        if (request.getParameter("nombre") != null) {
            nombre = request.getParameter("nombre");
        }
        if (request.getParameter("descripcion") != null) {
            descripcion = request.getParameter("descripcion");
        }
        if (request.getParameter("proveedor") != null) {
            proveedor = request.getParameter("proveedor");
        }
        if (request.getParameter("garantia") != null) {
            garantia = request.getParameter("garantia");
        }
        if (request.getParameter("estado") != null) {
            estado = request.getParameter("estado");
        }
        if (request.getParameter("pagina") != null) {
            pag = request.getParameter("pagina");
        }

        

        if (pag.equals("mqa_nuevo")) {
            mqa.nuevo(nombre, descripcion, proveedor, garantia, estado);
            response.sendRedirect("ad_index.jsp?pagina=ad_inventario");
        } else if (pag.equals("mqa_eliminar")) {
            mqa.eliminar(nombre);
            response.sendRedirect("ad_index.jsp?pagina=ad_inventario");
        } else if (pag.equals("mqa_editar")) {
            mqa.editar(idMaquina,nombre, descripcion, proveedor, garantia, estado);
            response.sendRedirect("ad_index.jsp?pagina=ad_inventario");
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
