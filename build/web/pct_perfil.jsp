<%-- 
    Document   : usu_perfil
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="pct_referencias.jsp" %>
        <title>Citas</title>
    </head>

    <body>
        <main class="container">
            <div class="position-relative">
                <center>
                    <h1>Mi perfil</h1>
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

                    if (pag.equals("pct_perfil")) {
                %>
                <%@include file="pct_ver.jsp" %>
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