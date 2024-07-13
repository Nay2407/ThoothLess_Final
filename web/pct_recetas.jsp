<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="pct_referencias.jsp" %>
        <link rel="stylesheet" href="/Usuario/css/usu_citas.css">
        <link rel="stylesheet" href="/Usuario/css/usu_index.css">
        <link rel="stylesheet" href="css/usu_perfil.css">
        <title>Recetas</title>
    </head>
    <body>
        <main class="container">
            <div class="position-relative">
                <center>
                    <h1>Lista de Recetas</h1>
                    <br>
                </center>
                <div class="position-absolute bottom-0 end-0">
                </div>
            </div>
            <div class="contenido">
                <%
                    String pag;
                    pag = "";

                    if (request.getParameter("pagina") != null) {
                        pag = request.getParameter("pagina");
                    }

                    if (pag.equals("pct_recetas")) {
                %>
                <%@include file="rta_listar.jsp" %>
                <%} else if (pag.equals("rta_nuevo")) {
                %>
                <%@include file="rta_nuevo.jsp" %>
                <%
                    }
                %>
            </div>
        </main>
    </body>

</html>
