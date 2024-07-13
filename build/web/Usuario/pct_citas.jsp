<%-- 
    Document   : usu_citas
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="usu_referencias.jsp" %>
    <link rel="stylesheet" href="/Usuario/css/usu_index.css">
    <link rel="stylesheet" href="/Usuario/css/usu_citas.css">
    <link rel="stylesheet" href="css/usu_perfil.css">
    <title>Citas</title>
</head>

<body>
    <!--NAVEGACION-->
    <nav >
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
            aria-controls="navegacion">
            <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
        </button>
        <div style="min-height: 150px;">
            <div class="collapse collapse-horizontal" id="navegacion">
                <div class="enlaces" style="width: 250px;">
                    <a href="usu_index.jsp">Inicio</a>
                    <a href="usu_perfil.jsp">Mi Perfil</a>
                    <a href="usu_citas.jsp">Citas</a>
                    <a href="usu_recetas.jsp">Recetas</a>
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>
            </div>
        </div>
    </nav>
    <!--CONTENIDO-->
    <div class="container">
        <h1> Listas de Citas</h1>
        <div class="table-responsive-sm">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Paciente</th>
                        <th scope="col">Relación</th>
                        <th scope="col">Especialidad</th>
                        <th scope="col">Doctor</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>02/06/2024</td>
                        <td>Juan Alberto Perez Rodriguez</td>
                        <td>Titular</td>
                        <td>Endodoncia</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        <td>Reservado</td>
                        <td>
                            <button type="button" class="btn"><a href="usu_detallecita.jsp"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></a></button>
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>15/06/2024</td>
                        <td>Lucia Perez Fernandez</td>
                        <td>Hija</td>
                        <td>Estetica Dental</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        <td>Reservado</td>
                        <td>
                            <button type="button" class="btn"><a href="usu_detallecita.jsp"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></a></button>
                        </td>
                    </tr>
                    </tr>
                    <tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>15/04/2024</td>
                        <td>Juan Alberto Perez Rodriguez</td>
                        <td>Titular</td>
                        <td>Enjuage Bucal</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        <td>Atendido</td>
                        <td>
                            <button type="button" class="btn"><a href="usu_detallecita.jsp"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></a></button>
                        </td>
                    </tr>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Button trigger modal -->
      <div class="position-absolute bottom-0 end-0 but">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Agendar">
          Agendar Cita
        </button>
      </div>
      <!--------------------------------------  Modal Registrar Empleado -------------------------->
      <div class="modal fade" id="Agendar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title fs-5" id="staticBackdropLabel">Agendar Cita</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputState" class="form-label">Paciente</label>
                        <select id="inputState" class="form-select">
                            <option selected>Juan Alberto Perez Rodriguez</option>
                            <option>Lucia Perez Fernandez</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="inputState" class="form-label">Relación</label>
                        <select id="inputState" class="form-select">
                            <option selected>Titular</option>
                            <option>Conyuje</option>
                            <option>Hijo/a</option>
                            <option>Hermano/a</option>
                            <option>Madre</option>
                            <option>Padre</option>
                            <option>Otro</option>
                        </select>
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
                            <option selected>10:00 - 11:00</option>
                            <option>14:00 - 15:00</option>
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
              <button type="button" class="btn btn-primary" style="background-color: #032A38;">Agendar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>

</html>
