<%-- 
    Document   : doc_index
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <%@include file="doc_referencias.jsp" %>
        <link rel="stylesheet" href="/Doctor/css/doc_index.css">
        <link rel="stylesheet" href="../Admi/css/ad_index.css">
        <title>Pagina Principal</title>
    </head>
    <body>
        <%@include file="doc_menu.jsp"%>

        <div style="margin-left: 17.5rem;">
            <div class="d-flex">
                <div>
                    <%
                        String pagina = "";

                        if (request.getParameter("pagina") != null) {
                            pagina = request.getParameter("pagina");
                        }

                        if (pagina.equals("doc_index1")) {
                    %>
                    <%@include file="doc_index1.jsp" %>
                    <%                } else if (pagina.equals("doc_diagnostico")) {
                    %>
                    <%@include file="doc_diagnostico.jsp" %>
                    <%
                    } else if (pagina.equals("doc_disponibilidad")) {
                    %> 
                    <%@include file="doc_disponibilidad.jsp" %>
                    <%                } else if (pagina.equals("doc_paciente")) {
                    %>
                    <%@include file="doc_paciente.jsp" %>
                    <%                  }else if (pagina.equals("doc_referencias")) {
                    %>
                    <%@include file="doc_referencias.jsp" %>
                    <%} else if (pagina.equals("cta_listarDoc")) {
                    %>
                    <%@include file="cta_listarDoc.jsp" %>
                    <%} else if (pagina.equals("pct_verDoc")) {
                    %>
                    <%@include file="pct_verDoc.jsp" %>
                    <%} else if (pagina.equals("pct_listarDoc")) {
                    %>
                    <%@include file="pct_listarDoc.jsp" %>
                    <%}
                    
                    %>

                    
                </div>
            </div>
        </div>
           
            

       
</body>

</html>
