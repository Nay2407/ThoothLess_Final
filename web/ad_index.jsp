
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>            
        <%@include file="ad_referencias.jsp" %>        
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>

    </head>
    <body>
        <%@include file="ad_menu.jsp"%>

        <div style="margin-left: 17.5rem;">

            <div class="d-flex">
                <div>
                    <%
                        String pagina = "";

                        if (request.getParameter("pagina") != null) {
                            pagina = request.getParameter("pagina");
                        }

                        if (pagina.equals("ad_empleados")) {
                    %>
                    <%@include file="usu_listar.jsp" %>
                    <%                } else if (pagina.equals("usu_nuevo")) {
                    %>
                    <%@include file="usu_nuevo.jsp" %>
                    <%
                    } else if (pagina.equals("usu_ver")) {
                    %> 
                    <%@include file="usu_ver.jsp" %>
                    <%                } else if (pagina.equals("usu_editar")) {
                    %> 
                    <%@include file="usu_editar.jsp" %>
                    <%                } else if (pagina.equals("usu_eliminar")) {
                    %> 
                    <%@include file="usu_eliminar.jsp" %>
                    <%                } else if (pagina.equals("ad_paciente")) {
                    %> 
                    <%@include file="pct_listar.jsp" %>
                    <%                } else if (pagina.equals("pct_nuevo")) {
                    %>
                    <%@include file="pct_nuevo.jsp" %>
                    <%
                    } else if (pagina.equals("pct_ver")) {
                    %>
                    <%@include file="pct_ver.jsp" %>
                    <%                } else if (pagina.equals("pct_eliminar")) {
                    %>
                    <%@include file="pct_eliminar.jsp" %>
                    <%                } else if (pagina.equals("pct_editar")) {
                    %>
                    <%@include file="pct_editar.jsp" %>
                    <%                } else if (pagina.equals("ad_inventario")) {
                    %>
                    <%@include file="mqa_listar.jsp" %>
                    <%                } else if (pagina.equals("mqa_nuevo")) {
                    %>
                    <%@include file="mqa_nuevo.jsp" %>
                    <%
                    } else if (pagina.equals("mqa_ver")) {
                    %>
                    <%@include file="mqa_ver.jsp" %>
                    <%                } else if (pagina.equals("mqa_eliminar")) {
                    %>
                    <%@include file="mqa_eliminar.jsp" %>
                    <%                } else if (pagina.equals("mqa_editar")) {
                    %>
                    <%@include file="mqa_editar.jsp" %>
                    <%                } else if (pagina.equals("ad_index1")) {
                    %>
                    <%@include file="ad_index1.jsp" %>
                    <%
                        }
                    %>

                </div>

                </body>
                </html>
