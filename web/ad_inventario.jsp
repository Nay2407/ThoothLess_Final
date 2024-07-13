<%-- 
    Document   : ad_inventario
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@include file="ad_referencias.jsp" %>
    <link rel="stylesheet" href="css/ad_index.css">

  <title>Inventario</title>
</head>

<body>
  <nav>
    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
      aria-controls="navegacion">
      <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
    </button>
    <div style="min-height: 150px;">


      <div class="collapse collapse-horizontal" id="navegacion">

        <div class="enlaces" style="width: 250px;">
          <a href="ad_index.jsp">Inicio</a>
          <a href="ad_paciente.jsp?pagina=pct_listar">Paciente</a>
          <a href="ad_empleados.jsp?pagina=usu_listar">Empleados</a>
          <a href="ad_inventario.jsp?pagina=mqa_listar">Equipos</a>
        </div>
        <div class="enlaces">
          <a href="../login.jsp">Salir</a>
        </div>

      </div>
    </div>
  </nav>
  <main class="container">
    <div class="position-relative"">
      <h1 style="padding: 40px; text-align: center;">Equipos</h1>
      <br>
      <div class="position-absolute bottom-0 end-0">
        <form class="d-flex " role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-secondary" style="margin-right: 80px;" type="submit">Buscar</button>
        </form>
      </div>
    </div>
    
      <div class="col-sm-10 contenido">
          <%
                    String pagina = "";

                    if (request.getParameter("pagina") != null) {
                        pagina = request.getParameter("pagina");
                    }

                    if (pagina.equals("mqa_listar")) {
                %>
                <%@include file="mqa_listar.jsp" %>
                <%                
                    } else if (pagina.equals("mqa_nuevo")) {
                %>
                <%@include file="mqa_nuevo.jsp" %>
                <%
                } else if (pagina.equals("mqa_ver")) {
                %> 
                <%@include file="mqa_ver.jsp" %>
                <%
                } else if (pagina.equals("mqa_editar")) {
                %> 
                <%@include file="mqa_editar.jsp" %>
                <%
                } else if (pagina.equals("mqa_eliminar")) {
                %> 
                <%@include file="mqa_eliminar.jsp" %>
                <%
                    }
                %>
          </div>
          
      

  </main>
</body>

</html>
