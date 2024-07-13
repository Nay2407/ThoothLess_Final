
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>            
        <%@include file="pct_referencias.jsp" %> 
        <link rel="stylesheet" href="../estilos/estilosindex.css">
        <link rel="stylesheet" href="./estilos/estilospac.css">
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>
    </head>
    
    <body>
        <%@include file="pct_menu.jsp"%>
        <div style="margin-left: 17.5rem;">

            <div class="d-flex">
                
                <div>
                    <%
                        String pagina = "";

                        if (request.getParameter("pagina") != null) {
                            pagina = request.getParameter("pagina");
                        }

                        if (pagina.equals("pct_perfil")) {
                    %>
                    <%@include file="pct_perfil.jsp" %>
                    <%
                    } else if (pagina.equals("pct_citas")) {
                    %>
                    <%@include file="pct_citas.jsp" %>
                    <%
                    } else if (pagina.equals("cta_listar")) {
                    %> 
                    <%@include file="cta_listar.jsp" %>
                    <%                } else if (pagina.equals("usu_editar")) {
                    %> 
                    <%@include file="usu_editar.jsp" %>
                    <%                } else if (pagina.equals("usu_eliminar")) {
                    %> 
                    <%@include file="usu_eliminar.jsp" %>
                    <%                } else if (pagina.equals("pct_listarDoc")) {
                    %> 
                    <%@include file="pct_listarDoc.jsp" %>
                    <%
                    } else if (pagina.equals("pct_nuevo")) {
                    %>
                    <%@include file="pct_nuevo.jsp" %>
                    <%
                    } else if (pagina.equals("pct_ver1")) {
                    %>
                    <%@include file="pct_ver1.jsp" %>
                    <%                } else if (pagina.equals("pct_eliminar")) {
                    %>
                    <%@include file="pct_eliminar.jsp" %>
                    <%                } else if (pagina.equals("pct_editar_1")) {
                    %>
                    <%@include file="pct_editar_1.jsp" %>
                    <%                } else if (pagina.equals("pct_recetas")) {
                    %>
                    <%@include file="pct_recetas.jsp" %>
                    <%
                    } else if (pagina.equals("mqa_nuevo")) {
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
                    <%                    }else if (pagina.equals("pct_index1")) {
                    %>
                    <%@include file="pct_index1.jsp" %>
                    <%  }else if (pagina.equals("pct_verDoc")) {
                    %>
                    <%@include file="pct_verDoc.jsp" %>
                    <%  }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
