<%-- 
    Document   : usu_perfil
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
    <link rel="stylesheet" href="css/usu_index.css">
    <link rel="stylesheet" href="css/usu_perfil.css">
    
    <title>Mi Perfil</title>
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
        <h1>Mi Perfil</h1>
        <form class="row g-4">
            <div class="form-floating col-12 ">
                <input type="number" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="1234578" value="12345678">
                <label for="floatingPlaintextInput">Documento de Identidad</label>
            </div>
            <div class="form-floating col-6">
                <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="Juan Alberto" value="Juan Alberto">
                <label for="floatingPlaintextInput">Nombre</label>
            </div>
            <div class="form-floating col-6">
                <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="Perez Rodriguez" value="Perez Rodriguez">
                <label for="floatingPlaintextInput">Apellido</label>
            </div>
            <div class="form-floating col-12">
                <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="Masculino" value="Masculino">
                <label for="floatingPlaintextInput">Sexo</label>
            </div>
            <div class="form-floating col-6">
                <input type="date" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="20/01/1995" value="20/01/1995">
                <label for="floatingPlaintextInput">Fecha de Nacimiento</label>
            </div>
            <div class="form-floating col-6">
                <input type="int" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="987654321" value="987654321">
                <label for="floatingPlaintextInput">Telefono</label>
            </div>
            <div class="form-floating col-12">
                <input type="email" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="juan.perez@gmail.com" value="juan.perez@gmail.com">
                <label for="floatingPlaintextInput">Correo</label>
            </div>
            <div class="form-floating col-12">
                <input type="text" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="AA.HH El chavo" value="AA.HH El chavo">
                <label for="floatingPlaintextInput">Direccion</label>
            </div>
        </form>

        <div class="position-absolute bottom-0 end-0 but">
            <button style="background-color: #032A38;" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#RegistrarEmpleado">
                Editar Perfil
            </button>
        </div>
        <!--------------------------------------  Modal Editar Perfil -------------------------->
        <div class="modal fade" id="RegistrarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title fs-5" id="staticBackdropLabel">Editar Perfil</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="row g-3">
                            <div class="col-md-6">
                                <label for="inputDni" class="form-label">Documento de Identidad</label>
                                <input type="int" class="form-control" id="inputDni">
                            </div>
                            <div class="col-md-12">
                                <label for="inputNombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="inputNombre">
                            </div>
                            <div class="col-12">
                                <label for="inputApellido" class="form-label">Apellido</label>
                                <input type="text" class="form-control" id="inputApellido" placeholder="Lopez">
                            </div>
                            <div class="col-md-5">
                                <label for="inputState" class="form-label">Sexo</label>
                                <select id="inputState" class="form-select">
                                    <option selected>Masculino</option>
                                    <option>Femenino</option>
                                </select>
                            </div>
                            <div class="col-md-7">
                                <label for="inputNacim" class="form-label">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" id="inputNacim">
                            </div>
                            <div class="col-5">
                                <label for="inputTelefono" class="form-label">Telefono</label>
                                <input type="int" class="form-control" id="inputTelefono" placeholder="+51987654321">
                            </div>
                            <div class="col-md-12">
                                <label for="inputEmail" class="form-label">Correo</label>
                                <input type="text" class="form-control" id="inputEmail">
                            </div>
                            <div class="col-md-12">
                                <label for="inputAddres" class="form-label">Direccion</label>
                                <input type="text" class="form-control" id="inputAddres">
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
    </div>
</body>

</html>
