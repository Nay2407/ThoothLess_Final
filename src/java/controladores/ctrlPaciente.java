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
@WebServlet(name = "ctrlPaciente", urlPatterns = {"/ctrlPaciente"})
public class ctrlPaciente extends HttpServlet {

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
            out.println("<title>Servlet ctrlPaciente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ctrlPaciente at " + request.getContextPath() + "</h1>");
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
        Paciente pct = new Paciente();
        int log = -1;
        
        int idPaciente = -1;
        String usr = "";
        String psw = "";
        String pass = "";
        String nombre="";
        String apellido="";
        String fecNac="";
        String genero="";
        String direccion="";
        String telefono="";
        String correo="";
        String tipoDoc="";
        String numDoc="";
        int idPersona = -1;

        String pag = "";
        if (request.getParameter("idPaciente") != null) {
            idPaciente = Integer.parseInt(request.getParameter("idPaciente"));
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
            log = pct.getLogueado(usr, psw);
            if (log > 0) {
                request.setAttribute("idPaciente", log);
                request.getRequestDispatcher("pct_index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("noautorizado.jsp").forward(request, response);
            }
        } else if (pag.equals("pct_nuevo")) {
            pct.nuevo(usr, pass, idPersona,nombre,apellido,fecNac,genero,direccion,
                    telefono,correo,tipoDoc,numDoc);
            response.sendRedirect("ad_index.jsp?pagina=ad_paciente");
        } else if (pag.equals("pct_eliminar")) {
            pct.eliminar(usr,idPersona);
            response.sendRedirect("ad_index.jsp?pagina=ad_paciente");
        } else if (pag.equals("pct_editar")) {
            pct.editar(idPaciente,usr,pass,idPersona,nombre,apellido,fecNac,genero,direccion,
                    telefono,correo,tipoDoc,numDoc);
            response.sendRedirect("ad_index.jsp?pagina=ad_paciente");
        }else if (pag.equals("pct_nuevo_off")) {
            pct.nuevo(usr, pass, idPersona,nombre,apellido,fecNac,genero,direccion,
                    telefono,correo,tipoDoc,numDoc);
            response.sendRedirect("login.jsp");
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
