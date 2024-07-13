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
import modelos.Empleado;
import modelos.Paciente;

/**
 *
 * @author Franzuá
 */
@WebServlet(name = "ctrlEmpleado", urlPatterns = {"/ctrlEmpleado"})
public class ctrlEmpleado extends HttpServlet {

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
            out.println("<title>Servlet ctrlEmpleado</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ctrlEmpleado at " + request.getContextPath() + "</h1>");
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
        Empleado emp = new Empleado();
        Paciente pct = new Paciente();
        int log = -1;
        int log2 = -1;

        int idEmpleado = -1;
        String rol = "";
        String horarioT = "";
        String usr = "";
        String psw = "";
        String pass = "";
        String nombre = "";
        String apellido = "";
        String fecNac = "";
        String genero = "";
        String direccion = "";
        String telefono = "";
        String correo = "";
        String tipoDoc = "";
        String numDoc = "";

        int idPersona = -1;

        String pag = "";
        if (request.getParameter("idEmpleado") != null) {
            idEmpleado = Integer.parseInt(request.getParameter("idEmpleado"));
        }
        if (request.getParameter("rol") != null) {
            rol = request.getParameter("rol");
        }
        if (request.getParameter("horarioT") != null) {
            horarioT = request.getParameter("horarioT");
        }
        if (request.getParameter("usuario") != null) {
            usr = request.getParameter("usuario");
        }
        if (request.getParameter("passwordL") != null) {
            psw = request.getParameter("passwordL");
        }
        if (request.getParameter("password") != null) {
            pass = request.getParameter("password");
        }
        if (request.getParameter("pagina") != null) {
            pag = request.getParameter("pagina");
        }

        if (request.getParameter("idPersona") != null) {
            idPersona = Integer.parseInt(request.getParameter("idPersona"));
        }
        if (request.getParameter("nombre") != null) {
            nombre = request.getParameter("nombre");
        }
        if (request.getParameter("apellido") != null) {
            apellido = request.getParameter("apellido");
        }
        if (request.getParameter("fecNac") != null) {
            fecNac = request.getParameter("fecNac");
        }
        if (request.getParameter("genero") != null) {
            genero = request.getParameter("genero");
        }

        /////////////////////
        if (request.getParameter("direccion") != null) {
            direccion = request.getParameter("direccion");
        }
        if (request.getParameter("telefono") != null) {
            telefono = request.getParameter("telefono");
        }
        if (request.getParameter("correo") != null) {
            correo = request.getParameter("correo");
        }
        if (request.getParameter("tipoDoc") != null) {
            tipoDoc = request.getParameter("tipoDoc");
        }
        if (request.getParameter("numDoc") != null) {
            numDoc = request.getParameter("numDoc");
        }

        if (pag.equals("autentica")) {
            log = emp.getLogueado(usr, psw);
            log2 = pct.getLogueado(usr, psw);

            if (log == 1) {
                request.getRequestDispatcher("ad_index.jsp?pagina=ad_index1").forward(request, response);
            }
            if (log == 2) {
                request.getRequestDispatcher("doc_index.jsp").forward(request, response);
            }
            if (log == 3) {
                request.getRequestDispatcher("rec_index.jsp").forward(request, response);
            }
            if (log2 > 0) {
                request.setAttribute("idPaciente", log2);
                request.getRequestDispatcher("pct_index.jsp").forward(request, response);
            } else {
                // Establecer un atributo indicando que el login falló
                request.setAttribute("loginFailed", true);
                // Reenviar de vuelta a la página de login
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else if (pag.equals("usu_nuevo")) {
            emp.nuevo(rol, horarioT, usr, pass, idPersona, nombre, apellido, fecNac, genero, direccion,
                    telefono, correo, tipoDoc, numDoc);
            response.sendRedirect("ad_index.jsp?pagina=ad_empleados");
        } else if (pag.equals("usu_eliminar")) {
            emp.eliminar(usr, idPersona);
            response.sendRedirect("ad_index.jsp?pagina=ad_empleados");
        } else if (pag.equals("usu_editar")) {
            emp.editar(idEmpleado, rol, horarioT, usr, pass, idPersona, nombre, apellido, fecNac, genero, direccion,
                    telefono, correo, tipoDoc, numDoc);
            response.sendRedirect("ad_index.jsp?pagina=ad_empleados");
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
