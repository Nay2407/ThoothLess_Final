
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="pct_referencias.jsp" %>
        <title>Lista de Pacientes</title>
    </head>

    <body>
        <main class="container">
            <div class="position-relative">
                <center>
                    <h1>Lista de Pacientes</h1>
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

                    if (pag.equals("rec_pacientes")) {
                %>
                <%@include file="pct_listarRec.jsp" %>
                <%} else if (pag.equals("cta_nuevo")) {
                %>
                <%@include file="cta_nuevo.jsp" %>
                <%
                }
                %>
                
            </div>
        </main>
    </body>
</html>