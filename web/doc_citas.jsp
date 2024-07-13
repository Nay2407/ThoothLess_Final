<%-- 
    Document   : doc_citas
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

    <title>Citas</title>
</head>


<body>
  <!--NAVEGACIÓN-->
  <nav>
    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
      aria-controls="navegacion">
      <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
    </button>
    <div style="min-height: 150px;">


      <div class="collapse collapse-horizontal" id="navegacion">

        <div class="enlaces" style="width: 250px;">
          <a href="doc_index.jsp">Inicio</a>
          <a href="doc_citas.jsp">Citas</a>
          <a href="doc_diagnostico.jsp">Diagnostico</a>
          <a href="doc_paciente.jsp">Pacientes</a>
          <a href="doc_disponibilidad.jsp">Disponibilidad</a>
        </div>
        <div class="enlaces">
          <a href="../login.jsp">Salir</a>
        </div>

      </div>
    </div>
  </nav>
  <!--FIN DE NAVEGACION-->

  <div class="container">
    <center>
      <h1>Bienvenido(a), Dr(a). Florsita Gonzales</h1>
      <div class="row g-3 align-items-center"> <!--COPIAR -->
        <div class="col-auto">
          <label for="inputPassword6" class="col-form-label">Fecha</label>
        </div>
        <div class="col-auto">
          <input type="date" id="inputdate" class="form-control" aria-describedby="passwordHelpInline">
        </div>
      </div>
      <br>
    </center>
    <table class="table table-striped table-hover">
      <thead>
        <tr>
          <th scope="col">Nro De Cita</th>
          <th scope="col">Hora</th>
          <th scope="col">Nombre</th>
          <th scope="col">DNI</th>
          <th scope="col">Especialidad</th>
          <th scope="col" style="text-align: center;">Estado</th>
          <th scope="col">Ver</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">CT_001</th>
          <td>10:00 am</td>
          <td>Efrain Lazo</td>
          <td>78451244</td>
          <td>Endodoncia</td>
          <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
              <option selected>Pendiente</option>
              <option value="1">Atendido</option>
              <option value="2">Reprogramado</option>
              <option value="3">Anulada</option>
            </select></td>
          <td>
            <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-eye"
                  style="color: #000000;"></i></a></button>
          </td>
        </tr>
        <tr>
          <th scope="row">CT_002</th>
          <td>10:30 am</td>
          <td>Manuel de la Monte</td>
          <td>24478204</td>
          <td>Limpieza</td>
          <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
              <option selected>Pendiente</option>
              <option value="1">Atendido</option>
              <option value="2">Reprogramado</option>
              <option value="3">Anulada</option>
            </select></td>
          <td>
            <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-eye"
                  style="color: #000000;"></i></a></button>
          </td>
        </tr>
        <tr>
          <th scope="row">CT_003</th>
          <td>11:00 am</td>
          <td>Luis Ricse </td>
          <td>65478440</td>
          <td>Extracción</td>
          <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
              <option selected>Pendiente</option>
              <option value="1">Atendido</option>
              <option value="2">Reprogramado</option>
              <option value="3">Anulada</option>
            </select></td>
          <td>
            <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-eye"
                  style="color: #000000;"></i></a></button>
          </td>
        </tr>
        <tr>
          <th scope="row">CT_004</th>
          <td>2:00 pm</td>
          <td>Astrid Luna</td>
          <td>214445639</td>
          <td>Endodoncia</td>
          <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
              <option selected>Pendiente</option>
              <option value="1">Atendido</option>
              <option value="2">Reprogramado</option>
              <option value="3">Anulada</option>
            </select></td>
          <td>
            <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-eye"
                  style="color: #000000;"></i></a></button>
          </td>
        </tr>
        <tr>
          <th scope="row">CT_005</th>
          <td>3:00 pm</td>
          <td>Harumi Carmelo </td>
          <td>01447569</td>
          <td>Limpieza</td>
          <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
              <option selected>Pendiente</option>
              <option value="1">Atendido</option>
              <option value="2">Reprogramado</option>
              <option value="3">Anulada</option>
            </select></td>
          <td>
            <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-eye"
                  style="color: #000000;"></i></a></button>
          </td>
        </tr>
      </tbody>
    </table>

  </div>
</body>

</html>
