<%-- 
    Document   : rec_index
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
  <title>Pagina Principal</title>
</head>

<body>
  <!--NAVEGACION-->
  <nav>
    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
      aria-controls="navegacion">
      <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
    </button>
    <div style="min-height: 150px;">


      <div class="collapse collapse-horizontal" id="navegacion">

        <div class="enlaces" style="width: 250px;">
          <a href="rec_index.jsp">Inicio</a>
          <a href="rec_solicitudcitas.jsp">Solicitudes de Citas</a>
          <a href="rec_horarios.jsp">Horario</a>
          <a href="rec_pacientes.jsp">Pacientes</a>
          <a href="rec_disponibilidaddoctor.jsp">disponibilidadDoctor</a>
        </div>
        <div class="enlaces">
          <a href="../login.jsp">Salir</a>
        </div>

      </div>
    </div>
  </nav>
  <!--FIN DE NAVEGACION-->
  <div class="container-fluid" style="align-items: center;">
    <center>
      <h1>Bienvenido(a) Srta. Rosa Merino</h1>
    </center>
    <div class="row dash">
      <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-body">
          <h1>24</h1>
          <div class="mt-2 pt-2 border-top">
            <h3>Pacientes</h3>
          </div>
        </div>
      </div>
      <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-body">
          <h1>5</h1>
          <div class="mt-2 pt-2 border-top">
            <h3>Doctores</h3>
          </div>
        </div>
      </div>
      <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-body">
          <h1>15</h1>
          <div class="mt-2 pt-2 border-top">
            <h3>Citas Totales</h3>
          </div>
        </div>
      </div>
      
      <h2>Citas Programadas para hoy</h2>
      <div class="cita">
        <table class="table table-striped table-hover ">
          <thead>
            <tr>
              <th scope="col">Nro De Cita</th>
              <th scope="col">Fecha</th>
              <th scope="col">Hora</th>
              <th scope="col">Nombres</th>
              <th scope="col">Apellidos</th>
              <th scope="col">DNI</th>
              <th scope="col">Médico</th>
              <th scope="col">Especialidad</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">CT_001</th>
              <th>04/05/2024</th>
              <th>9:00am - 9:50am</th>
              <td>Efraín Juan</td>
              <td>Lazo Tirado</td>
              <td>78451244</td>
              <td>Nayeli Chuquipul</td>
              <td>Endodoncia</td>
            </tr>
            <tr>
              <th scope="row">CT_002</th>
              <th>04/05/2024</th>
              <th>10:00am - 10:50am</th>
              <td>Manuel Fernando</td>
              <td>De la Monte Carlo</td>
              <td>24478204</td>
              <td>Franco Iman</td>
              <td>Limpieza</td>
            </tr>
            <tr>
              <th scope="row">CT_003</th>
              <th>04/05/2024</th>
              <th>11:00am - 11:50am</th>
              <td>Luis Jose</td>
              <td>Ricse Castillo</td>
              <td>65478440</td>
              <td>Cleff De la Cruz</td>
              <td>Extracción</td>
            </tr>
            <tr>
              <th scope="row">CT_004</th>
              <th>04/05/2024</th>
              <th>2:00pm - 2:50pm</th>
              <td>Astrid Steffy</td>
              <td>Luna Vergara</td>
              <td>214445639</td>
              <td>Jeremy Reynoso</td>
              <td>Endodoncia</td>
            </tr>
            <tr>
              <th scope="row">CT_005</th>
              <th>04/05/2024</th>
              <th>3:00pm - 3:50pm</th>
              <td>Harumi Mabel</td>
              <td>Carmelo Deiderio</td>
              <td>01447569</td>
              <td>Alexandro Arana</td>
              <td>Limpieza</td>
            </tr>
          </tbody>
        </table>

      </div>
    

    </div>
    
    <!--
    <button type="button" class="btn btn-outline-primary">Agregar Cita</button>
    <button type="button" class="btn btn-outline-warning">Reprogramar Cita</button>
    <button type="button" class="btn btn-outline-danger">Cancelar Cita</button>
  </div>-->
</body>

</html>
