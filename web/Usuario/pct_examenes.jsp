<%-- 
    Document   : usuexamenes
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
        <link rel="stylesheet" href="css/usu_perfil.css">

    <title>Examenes</title>
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

    </div>

</body>

</html>
