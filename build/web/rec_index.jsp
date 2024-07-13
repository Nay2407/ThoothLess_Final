<%-- 
    Document   : rec_index
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="rec_referencias.jsp" %>
                <link rel="stylesheet" href="/estilos/estiloRec.css">

        <title>Pagina Principal</title>
    </head>

    <body>
        <%@include file="rec_menu.jsp"%>
        <div style="margin-left: 17.5rem;">

            <div class="d-flex">
                <div>
                    <%
                        String pagina = "";

                        if (request.getParameter("pagina") != null) {
                            pagina = request.getParameter("pagina");
                        }

                        if (pagina.equals("rec_pacientes")) {
                    %>
                    <%@include file="rec_pacientes.jsp" %>
                    <%                } else if (pagina.equals("rec_referencias")) {
                    %>
                    <%@include file="rec_referencias.jsp" %>
                    <%
                    } else if (pagina.equals("rec_solicitudcitas")) {
                    %> 
                    <%@include file="rec_solicitudcitas.jsp" %>
                    <%                } else if (pagina.equals("rec_index1")) {
                    %>
                    <%@include file="rec_index1.jsp" %>
                    <%                  }else if (pagina.equals("rec_pacientes")) {
                    %>
                    <%@include file="rec_pacientes.jsp" %>
                    <%} else if (pagina.equals("rec_index1")) {
                    %>
                    <%@include file="rec_index1.jsp" %> 
                    <%} else if (pagina.equals("rec_horarios")) {
                    %>
                    <%@include file="rec_horarios.jsp" %> 
                    <%} else if (pagina.equals("pct_listarRec")) {
                    %>
                    <%@include file="pct_listarRec.jsp" %> 
                    <%}else if (pagina.equals("pct_verRec")) {
                    %>
                    <%@include file="pct_verRec.jsp" %> 
                    <%}else if (pagina.equals("pct_eliminarRec")) {
                    %>
                    <%@include file="pct_eliminarRec.jsp" %> 
                    <%}else if (pagina.equals("pct_editarRec")) {
                    %>
                    <%@include file="pct_editarRec.jsp" %> 
                    <%}
                    %>
                    
                </div>
            </div>
    </body>
</html>
