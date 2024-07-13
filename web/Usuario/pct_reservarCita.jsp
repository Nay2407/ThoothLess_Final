<%-- 
    Document   : usu_reservarCita
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
    <!--CONTENIDO-->
    <div class="container">
        <h1> Reserva tu Cita</h1>
        <form class="row g-3">
            <div class="col-md-6">
                <label for="inputState" class="form-label">Paciente</label>
                <select id="inputState" class="form-select">
                    <option selected>Juan Alberto Perez Rodriguez</option>
                    <option>Lucia Perez Fernandez</option>
                </select>
            </div>
            <div class="form-floating col-6 ">
                <input type="number" readonly class="form-control-plaintext" id="floatingPlaintextInput"
                    placeholder="1234578" value="12345678">
                <label for="floatingPlaintextInput">Documento de Identidad</label>
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
        <div class="position-absolute bottom-0 end-0 but">
            <a class="btn" href="usu_reservarCita.jsp" role="button">Agendar Cita</a>
        </div>
    </div>
</body>

</html>
