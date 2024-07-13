<%-- 
    Document   : usu_recetas
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
    <link rel="stylesheet" href="/Usuario/css/usu_citas.css">
    <link rel="stylesheet" href="/Usuario/css/usu_index.css">
    <link rel="stylesheet" href="css/usu_perfil.css">
    <title>Recetas</title>
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
    <div class="container">
        <h1> Recetas</h1>
        <div class="table-responsive-sm">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">N° Cita</th>
                        <th scope="col">Paciente</th>
                        <th scope="col">Relación</th>
                        <th scope="col">Especialidad</th>
                        <th scope="col">Doctor</th>
                        <th scope="col">Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>02/06/2024</td>
                        <td>01</td>
                        <td>Juan Alberto Perez Rodriguez</td>
                        <td>Titular</td>
                        <td>Endodoncia</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        <td>
                            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#receta"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></button>
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>15/06/2024</td>
                        <td>02</td>
                        <td>Lucia Perez Fernandez</td>
                        <td>Hija</td>
                        <td>Estetica Dental</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        
                        <td>
                            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#receta"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></button>
                        </td>
                    </tr>
                    </tr>
                    <tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>15/04/2024</td>
                        <td>03</td>
                        <td>Juan Alberto Perez Rodriguez</td>
                        <td>Titular</td>
                        <td>Enjuage Bucal</td>
                        <td>Franco Fabricio Iman Bonilla</td>
                        
                        <td>
                            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#receta"><i class="fa-solid fa-eye"
                                        style="color: #000000;"></i></button>
                        </td>
                    </tr>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--------------------------------------  Modal Editar Perfil -------------------------->
        <div class="modal fade" id="receta" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title fs-5" id="staticBackdropLabel">Receta</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>1. Amoxicilina 500mg</p>
                        <p>2. Naproxeno Sodico 550mg</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
