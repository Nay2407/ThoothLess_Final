
<%@page import="Clases.Maquina" %>
<%
    String pagina = "";  
    String nombre="";
    String proveedor="";
    String garantia="";
    String estado="";
    
    
    Maquina mq = new Maquina();
   
    if (request.getParameter("nombre")!=null) {
        nombre = request.getParameter("nombre");
    }    
    if (request.getParameter("pagina")!=null) {
        pagina = request.getParameter("pagina");
    }
    
    if (request.getParameter("proveedor")!=null) {
        proveedor = request.getParameter("proveedor");
    }
    if (request.getParameter("garantia")!=null) {
        garantia = request.getParameter("garantia");
    }    
    if (request.getParameter("estado")!=null) {
        estado = request.getParameter("estado");
    }
    
    if (pagina.equals("mqa_nuevo")) {
        mq.nuevo(nombre,proveedor,garantia,estado);
        response.sendRedirect("ad_inventario.jsp?pagina=mqa_listar");
    } else if (pagina.equals("mqa_eliminar")) {
        mq.eliminar(nombre);
        response.sendRedirect("ad_inventario.jsp?pagina=mqa_listar");
    }

%>
