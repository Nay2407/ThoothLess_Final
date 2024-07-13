<%-- 
    Document   : doc_paciente
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
     <link rel="stylesheet" href="css/doc_index.css">
    <title>Pacientes</title>
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
    <main class="container">
        <div class="position-relative">
          <center>
            <h1>Lista de Pacientes</h1>
            <br>
          </center>
          <div class="position-absolute bottom-0 end-0 ">
            <form class="d-flex " role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-secondary" type="submit">Buscar</button>
          </form>
          </div>
        </div>
        <div>
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Apellido</th>
                  <th scope="col">Sexo</th>
                  <th scope="col">Telefono</th>
                  <th scope="col">Correo</th>
                  <th scope="col">Estatus</th>
                  <th scope="col">Accion</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Pedro</td>
                  <td>Gonzales</td>
                  <td>Masculino</td>
                  <td>987654321</td>
                  <td>ejemplo@gmail</td>
                  <td>Activo</td>
                  <td>
                    <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-eye"
                      style="color: #000000;"></i></button> 
                  
                    
                  </td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>Pedro</td>
                  <td>Gonzales</td>
                  <td>Masculino</td>
                  <td>987654321</td>
                  <td>ejemplo@gmail</td>
                  <td>Activo</td>
                  <td>
                    <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-eye"
                      style="color: #000000;"></i></button>
                   
                  </td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>Pedro</td>
                  <td>Gonzales</td>
                  <td>Masculino</td>
                  <td>987654321</td>
                  <td>ejemplo@gmail</td>
                  <td>Activo</td>
                  <td>
                    <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-eye"
                      style="color: #000000;"></i></button>
                    
                  </td>
                </tr>
              </tbody>
            </table>
          <!-- Button trigger modal -->
          <div class="position-absolute bottom-0 end-0 but">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#RegistrarPaciente">
              Registrar Paciente
            </button>
          </div>
          <!--------------------------------------  Modal Registrar Empleado -------------------------->
          <div class="modal fade" id="RegistrarPaciente" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title fs-5" id="staticBackdropLabel">Registrar Paciente</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form class="row g-3">
                    <div class="col-md-12">
                      <label for="inputUsuario4" class="form-label">Nombre</label>
                      <input type="text" class="form-control" id="inputUsuario">
                    </div>
                    <div class="col-md-6">
                      <label for="inputNombre" class="form-label">Apellido</label>
                      <input type="text" class="form-control" id="inputNombre">
                    </div>
                    <div class="col-6">
                      <label for="inputApellido" class="form-label">Teléfono</label>
                      <input type="text" class="form-control" id="inputApellido" placeholder="Lopez">
                    </div>
                    <div class="col-md-4">
                      <label for="inputState" class="form-label">
                        Sexo
                      </label>
                      <select id="inputState" class="form-select">
                        <option selected>Masculino</option>
                        <option>Femenino</option>
                      </select>
                    </div>
                    <div class="col-8">
                      <label for="inputCorreo" class="form-label">Correo</label>
                      <input type="email" class="form-control" id="inputCorreo" placeholder="example@gmail">
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                  <button type="button" class="btn btn-primary" style="background-color: #032A38;">Registrar</button>
                </div>
              </div>
            </div>
          </div>
          <!-------------------------------- Modal Ver Paciente ------------------------------------------->
          <div class="modal fade" id="EditarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title fs-5" id="staticBackdropLabel">Detalle de Paciente</h4>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="form-floating col-sm-6">
                            <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                                placeholder="Pedro" value="Pedro">
                            <label for="floatingPlaintextInput">Nombre</label>
                        </div>
                        <div class="form-floating col-sm-6">
                            <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                                placeholder="Gonzales" value="Gonzales">
                            <label for="floatingPlaintextInput">Apellido</label>
                        </div>
                        <div class="form-floating col-sm-4">
                            <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                                placeholder="Masculino" value="Masculino">
                            <label for="floatingPlaintextInput">Sexo</label>
                        </div>
                        <div class="form-floating col-sm-4">
                            <input type="int" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                                placeholder="987654321" value="987665432">
                            <label for="floatingPlaintextInput">Telefono</label>
                        </div>
                        <div class="form-floating col-sm-4">
                            <input type="email" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                                placeholder="example@gmail.com" value="example@gmail.com">
                            <label for="floatingPlaintextInput">Correo</label>
                        </div>
                    </div>
                    <div>
                        <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Cita</th>
                              <th scope="col">Estado</th>
                              <th scope="col">Especialidad</th>
                              <th scope="col">Doctor</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>1</td>
                              <td>Reservado</td>
                              <td>Endodoncia</td>
                              <th>Franco Iman</th>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>20</td>
                                <td>Atendido</td>
                                <td>Endodoncia</td>
                                <td>Franco Iman</td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>3</td>
                              <td>Atendido</td>
                              <td>Ortodoncia</td>
                              <td>Franco Iman</td>

                            </tr>
                          </tbody>
                        </table>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                  <button type="button" class="btn btn-primary">Registrar</button>
                </div>
              </div>
            </div>
          </div>
          <!---------------------------------Eliminar--------------------------------->
          <div class="modal" id="EliminarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">¿Seguro que desea eliminar al Paciente?</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                  <button type="button" class="btn btn-primary">Si</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </main>
</body>
</html>
