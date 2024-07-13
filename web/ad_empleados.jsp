

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelos.Empleado" %>
<%@page import="java.util.LinkedList" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="ad_referencias.jsp" %>
  <link rel="stylesheet" href="css/ad_empleados.css">
  <link rel="stylesheet" href="css/ad_index.css">
  <title>Empleados</title>
</head>


<body>
  <main class="container">
    <div class="position-relative">
      <center>
        <h1>Lista de Empleados</h1>
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
                    String pagina = "";

                    if (request.getParameter("pagina") != null) {
                        pagina = request.getParameter("pagina");
                    }

                    if (pagina.equals("usu_listar")) {
                %>
                <%@include file="usu_listar.jsp" %>
                <%                
                    } else if (pagina.equals("usu_nuevo")) {
                %>
                <%@include file="usu_nuevo.jsp" %>
                <%
                } else if (pagina.equals("usu_ver")) {
                %> 
                <%@include file="usu_ver.jsp" %>
                <%
                } else if (pagina.equals("usu_editar")) {
                %> 
                <%@include file="usu_editar.jsp" %>
                <%
                } else if (pagina.equals("usu_eliminar")) {
                %> 
                <%@include file="usu_eliminar.jsp" %>
                <%
                    }
                %>
          </div>
    

  </main>
</body>
</html>
