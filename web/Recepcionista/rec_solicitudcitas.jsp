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
    
    <link rel="stylesheet" href="/Doctor/css/doc_index.css">
    <link rel="stylesheet" href="Css/recepcionista.css">
    <title>Solcitudes de Citas</title>
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
              </div>
              <div class="enlaces">
                  <a href="../login.jsp">Salir</a>
              </div>

          </div>
      </div>
  </nav>
   <!--FIN DE NAVEGACION-->
    <div class="container-fluid">
        <center>
            <h1>Solicitudes de Citas Pendientes</h1>
            <br>
        </center>
        <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th scope="col">Día</th>
                <th scope="col">Hora</th>
                <th scope="col">Nombre</th>
                <th scope="col">DNI</th>
                <th scope="col">Especialidad</th>
                <th scope="col">Estado</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>06/05/2024</td>
                <td>10:00am - 10:50am</td>
                <td>Efrain Lazo</td>
                <td>78451244</td>
                <td>Endodoncia</td>
                <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
                    <option selected>Pendiente</option>
                    <option value="1">Aprobada</option>
                    <option value="2">Rechazada</option>
                  </select></td>
              </tr>
              <tr>
                <td>06/05/2024</td>
                <td>2:00pm - 2:50pm</td>
                <td>Manuel de la Monte</td>
                <td>24478204</td>
                <td>Limpieza</td>
                <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
                    <option selected>Pendiente</option>
                    <option value="1">Aprobada</option>
                    <option value="2">Rechazada</option>
                  </select></td>
              </tr>
              <tr>
                <td>07/05/2024</td>
                <td>11:00am - 11:50am</td>
                <td>Luis Ricse </td>
                <td>65478440</td>
                <td>Extracción</td>
                <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
                    <option selected>Pendiente</option>
                    <option value="1">Aprobada</option>
                    <option value="2">Rechazada</option>
                  </select></td>
              </tr>
              <tr>
                <td>08/05/2024</td>
                <td>3:00pm - 3:50pm</td>
                <td>Astrid Luna</td>
                <td>214445639</td>
                <td>Endodoncia</td>
                <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
                    <option selected>Pendiente</option>
                    <option value="1">Aprobada</option>
                    <option value="2">Rechazada</option>
                  </select></td>
              </tr>
              <tr>
                <td>09/05/2024</td>
                <td>10:00am - 10:50am</td>
                <td>Harumi Carmelo </td>
                <td>01447569</td>
                <td>Limpieza</td>
                <td> <select class="form-select" aria-label="Default select example" style="width: min-content;">
                    <option selected>Pendiente</option>
                    <option value="1">Aprobada</option>
                    <option value="2">Rechazada</option>
                  </select></td>
              </tr>
            </tbody>
          </table>

          <div class="position-absolute bottom-0 end-0 but">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Agendar">
              Generar Nueva Cita
            </button>
          </div>
          <!--------------------------------------  Modal Registrar Empleado -------------------------->
          <div class="modal fade" id="Agendar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title fs-5" id="staticBackdropLabel">Generar Nueva Cita</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form class="row g-3">
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Nuevo Paciente</label>
                            <input class="label" type="text" placeholder="Ingresa Nombre" aria-label=".form-control-sm example">
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Nro. Documento</label>
                            <input class="label" type="text" placeholder="Documento" aria-label=".form-control-sm example">
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Especialidad</label>
                            <select id="inputState" class="form-select">
                                <option selected>Odontologia General</option>
                                <option>Ortodoncia</option>
                                <option>Odontopediatria</option>
                                <option>Estetica Dental</option>
                                <option>Rehabilitacion Oral</option>
                                <option>Endodoncia</option>
                                <option>Implantacion</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Doctor</label>
                            <select id="inputState" class="form-select">
                                <option selected>Franco Fabricio Iman Bonilla</option>
                                <option>Cleff De la Cruz</option>
                                <option>Nayeli Flor Chuquipul Gonzales</option>
                                <option>Piero Arana Salazar</option>
                                <option>Jeremy Aldheir Reynoso Durand</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputNacim" class="form-label">Fecha</label>
                            <input type="date" class="form-control" id="inputNacim">
            
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Horario</label>
                            <select id="inputState" class="form-select">
                                <option selected>9:00 - 9:50</option>
                                <option>10:00 - 10:50</option>
                                <option>14:00 - 14:50</option>
                                <option>15:00 - 15:50</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail" class="form-label">Correo</label>
                            <input type="text" class="form-control" id="inputEmail">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                  <button type="button" class="btn btn-primary" style="background-color: #032A38;">Generar</button>
                </div>
              </div>
            </div>
          </div>
    </div>
</body>
</html>
