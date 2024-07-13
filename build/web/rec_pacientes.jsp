<%-- 
    Document   : rec_pacientes
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
    <link rel="stylesheet" href="./Doctor/css/doc_index.css">
  <link rel="stylesheet" href="Css/recepcionista.css">
    <title>Pacientes</title>
</head>
<body>
     <!--FIN DE NAVEGACION-->
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
                  <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
                
                  
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
                  <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
                 
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
                  <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
                  
                  
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
          <!-------------------------------- Modal Editar Empleado ------------------------------------------->
          <div class="modal fade" id="EditarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title fs-5" id="staticBackdropLabel">Editar Paciente</h4>
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
