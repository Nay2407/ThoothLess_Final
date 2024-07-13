<%-- 
    Document   : rec_solicitudcitas
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
        <%@include file="ad_referencias.jsp" %>

        <link rel="stylesheet" href="/Doctor/css/doc_index.css">
        <link rel="stylesheet" href="Css/recepcionista.css">
        <link rel="stylesheet" href="css/ad_empleados.css">
  <link rel="stylesheet" href="css/ad_index.css">
        <title>Solcitudes de Citas</title>
    </head>

    <body>
        <main class="container">
            <div class="position-relative">
                <center>
                    <h1>Lista de Citas</h1>
                    <br>
                </center>
                <div class="position-absolute bottom-0 end-0">
                    <form class="d-flex " role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-secondary" type="submit">Search</button>
                    </form>

                </div>
            </div>
            <div class="col-sm-10 contenido">
                <%
                    String pag = "";

                    if (request.getParameter("pagina") != null) {
                        pag = request.getParameter("pagina");
                    }

                    if (pag.equals("rec_solicitudcitas")) {
                %>
                <%@include file="usu_listar.jsp" %>
                <%                } else if (pag.equals("usu_nuevo")) {
                %>
                <%@include file="usu_nuevo.jsp" %>
                <%
                } else if (pag.equals("usu_ver")) {
                %> 
                <%@include file="usu_ver.jsp" %>
                <%                } else if (pag.equals("usu_editar")) {
                %> 
                <%@include file="usu_editar.jsp" %>
                <%                } else if (pag.equals("usu_eliminar")) {
                %> 
                <%@include file="usu_eliminar.jsp" %>
                <%                } else if (pag.equals("cta_listarRec")) {
                %>
                <%@include file="cta_listarRec.jsp" %> 
                <%}
                %>
            </div>


        </main>