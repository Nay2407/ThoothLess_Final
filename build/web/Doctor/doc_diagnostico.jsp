<%-- 
    Document   : doc_diagnostico
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
    <title>Diagnostico</title>
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
    <div class="container-fluid">
        <center>
          <h1>Asignar Diagnostico</h1>
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
              <th scope="col">Nro De Diagnostico</th>
              <th scope="col">Nombre</th>
              <th scope="col">DNI</th>
              <th scope="col">Pronostico</th>
              <th scope="col">Añadir observación</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">DG_001</th>
              <td>Efrain Lazo</td>
              <td>78451244</td>
              <td>Reservado</td>
              
              <td>
                <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-file-medical" 
                    style="color: #000000;"></i></a></button>
              </td>
            </tr>
            <tr>
              <th scope="row">DG_002</th>

              <td>Manuel de la Monte</td>
              <td>24478204</td>
              <td>Reservado</td>
              
              <td>
                <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-file-medical" 
                    style="color: #000000;"></i></a></button>
              </td>
            </tr>
            <tr>
              <th scope="row">DG_003</th>

              <td>Luis Ricse </td>
              <td>65478440</td>
              <td>Reservado</td>
              
              <td>
                <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-file-medical" 
                    style="color: #000000;"></i>
                </a></button>
              </td>
            </tr>
            <tr>
              <th scope="row">DG_004</th>

              <td>Astrid Luna</td>
              <td>214445639</td>
              <td>Reservado</td>
              <td>
                <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-file-medical" 
                    style="color: #000000;"></i></a></button>
              </td>
            </tr>
            <tr>
              <th scope="row">DG_005</th>

              <td>Harumi Carmelo </td>
              <td>01447569</td>
              <td>Reservado</td>
              <td>
                <button type="button" class="btn"><a href="doc_detallecita.jsp"><i class="fa-solid fa-file-medical" 
                    style="color: #000000;"></i>
                </a></button>
              </td>
            </tr>
          </tbody>
        </table>

         <!-- Button trigger modal  YES O RIGTH-->
      <div class="position-absolute bottom-0 end-0 but">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Agendar">
          Asignar diagnostico
        </button>
      </div>
      <!--------------------------------------  Modal Registrar Empleado -------------------------->
      <div class="modal fade" id="Agendar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title fs-5" id="staticBackdropLabel">Asignar Diagnostico</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3">
                    
                <div class="col-md-6">
                    <label for="inputText" class="form-label">Código de cita</label>
                    <input type="text" class="form-control" id="inputEmail">
                </div>
                <div class="col-md-6">
                  <label for="inputText" class="form-label">Pronostico</label>
                  <input type="text" class="form-control" id="inputEmail">
               </div>
               
                    <div class="col-md-12">
                        <label for="inputText" class="form-label">Diagnostico</label>
                        <input type="text" class="form-control" id="inputEmail">
                    </div>

                  <div class="col-md-12">
                    <label for="inputText" class="form-label">Recomendaciones</label>
                    <input type="text" class="form-control" id="inputEmail">
                  </div>

                </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" style="background-color: #032A38;">Asignar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
