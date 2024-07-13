

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelos.Paciente" %>
<%@page import="java.util.LinkedList" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="ad_referencias.jsp" %>
  <link rel="stylesheet" href="css/ad_empleados.css">
  <link rel="stylesheet" href="css/ad_index.css">
  <title>Pacientes</title>
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
      <div class="col-sm-10 contenido">
          <%
                    String pagina = "";

                    if (request.getParameter("pagina") != null) {
                        pagina = request.getParameter("pagina");
                    }

                    if (pagina.equals("pct_listar")) {
                %>
                <%@include file="pct_listar.jsp" %>
                <%                
                    } else if (pagina.equals("pct_nuevo")) {
                %>
                <%@include file="pct_nuevo.jsp" %>
                <%
                } else if (pagina.equals("pct_ver")) {
                %> 
                <%@include file="pct_ver.jsp" %>
                <%
                } else if (pagina.equals("pct_editar")) {
                %> 
                <%@include file="pct_editar.jsp" %>
                <%
                } else if (pagina.equals("pct_eliminar")) {
                %> 
                <%@include file="pct_eliminar.jsp" %>
                <%
                    }
                %>
          </div>
  </main>
</body>
</html>
