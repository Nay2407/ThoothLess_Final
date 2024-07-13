
<%@page import="modelos.Persona"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="modelos.Empleado" %>
<%@include file="ad_referencias.jsp" %>
<%
    String pagina = "";    
    
    Empleado u = new Empleado();
    Persona p = new Persona();
    
    if (request.getParameter("usuario")!=null) {
        u.setUsuario( request.getParameter("usuario"));
    }
    if (request.getParameter("contrasena")!=null) {
        u.setContraseña(request.getParameter("contrasena"));
    }    
    
    if (request.getParameter("nombre")!=null) {
        p.setNombre( request.getParameter("nombre"));
    }
    if (request.getParameter("apellido")!=null) {
        p.setApellido( request.getParameter("apellido"));
    }
    if (request.getParameter("fechaNac")!=null) {
    
        String fechaString = request.getParameter("fechaNac");
        System.out.println(fechaString);

        // Convertir la fecha de tipo String a tipo Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Date fecha = null;
        
        try {
            fecha = dateFormat.parse(fechaString);
            p.setFechaNac(fecha);
            
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        
    }   
    if (request.getParameter("genero")!=null) {
    
        p.setGenero( request.getParameter("genero"));
    }
    if (request.getParameter("direccion")!=null) {
    
        p.setDireccion( request.getParameter("direccion"));
    }
    if (request.getParameter("correo")!=null) {
    
        p.setCorreo(request.getParameter("correo"));
    }
    if (request.getParameter("rol")!=null) {
    
        u.setRol(request.getParameter("rol"));
    }
    if (request.getParameter("telefono")!=null) {
       p.setTelefono(request.getParameter("telefono"));
    }   
    
    if (request.getParameter("tipoDoc")!=null) {
    
        p.setTipoDoc( request.getParameter("tipoDoc"));
    }
    if (request.getParameter("numDoc")!=null) {
       p.setNumDoc( request.getParameter("numDoc"));
    } 
     
    
   
    if (request.getParameter("pagina")!=null) {
        pagina = request.getParameter("pagina");
    }
    /*
    Usuario usr=new Usuario();
    if (pagina.equals("usu_nuevo")) {
        
        usr.nuevo(u);
        response.sendRedirect("ad_empleados.jsp?pagina=usu_listar");
    } else if (pagina.equals("usu_eliminar")) {
        usr.eliminar(u);
        response.sendRedirect("ad_empleados.jsp?pagina=usu_listar");
    }
*/

%>
