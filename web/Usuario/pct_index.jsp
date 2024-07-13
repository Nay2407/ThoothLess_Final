<%-- 
    Document   : usu_index
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="usu_referencias.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="usu_referencias.jsp" %>
        <link rel="stylesheet" href="/Usuario/css/usu_index.css">
        <link rel="stylesheet" href="css/usu_perfil.css">

    <title>Pagina Principal</title>
</head>

<body>
    <nav>
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion"
            aria-expanded="false" aria-controls="navegacion">
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
        <center>
            <h1>Bienvenido(a)</h1>
            <br>
            <p>Aquí podrás reservar, reprogramar tus citas presenciales y acceder a tu información de manera fácil y
                segura.</p>
        </center>
        <center>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/imagenes/cepillado.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Tip</h5>
                            <p class="card-text">Para tener tus dientes sanos, debes cepillarlos al menos tres veces
                                al día y durante tres minutos. Hazlo después de cada comida para eliminar los restos
                                que quedan en tu boca.</p>
                            <!--
                        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                      -->

                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
</body>
</html>
