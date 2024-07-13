
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="referencias.jsp" %>
    <title>Odontologia Toothless</title>
    
    
</head>

<body style="background-color: white; font-family: sans-serif">
    <!--Empieza la cabecera-->
    <!--CABECERA-->
    <header>
        <div style="padding: 3px 20px;">
            <img class="logo" style="display: inline-block;" src="imagenes/logo.png" />
            <a style="display: inline-block;" href="index.jsp">Toothless</a>
        </div>
        <div>
            <a href="login.jsp" target="_blank">Iniciar Sesion</a>
        </div>
    </header>
    <div class="lista">
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="recomendaciones.jsp">Recomendaciones</a></li>
            <li><a href="nosotros.jsp">Nosotros</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>

        </ul>
    </div>
    <!--Termina cabecera con la barra de inicio servicio y mas-->
    <div class="titulo" style="text-align: center;">
        <h1> ¡Contáctanos y solicita una cita! </h1>
    </div>
    <!--
    <div>
        <img src="imagenes/dental.png" style="padding-left: 350px;">
    </div>
        -->



    <div class="row g-3" >

        <div class="form-control col-md-3">
            <form class=" container ">
                <div class="col-md-3">
                    <label for="inputText" class="form-label">Nombre y Apellido</label>
                    <input type="text" class="form-control" id="inputEmail">
                </div>
                <div class="col-md-3">
                    <label for="inputText" class="form-label">Celular</label>
                    <input type="text" class="form-control" id="inputEmail">
                </div>

                <div class="col-md-3">
                    <label for="inputText" class="form-label">Especialidad</label>
                    <input type="text" class="form-control" id="inputEmail">
                </div>

                <div class="col-md-3">
                    <label for="inputText" class="form-label">Mensaje</label>
                    <input type="text" class="form-control" id="inputEmail">
                </div>
            </form>
        </div>
        <div class="col-sm-9">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1950.5412292021829!2d-76.9857429!3d-12.1065074!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c7bfd5d649a9%3A0xe56d8d4bc71714ea!2sAv.%20Alejandro%20Velasco%20Astete%20801%2C%20Lima%2015037!5e0!3m2!1ses!2spe!4v1714289168799!5m2!1ses!2spe"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>


    </div>



    <!--aqui es la parte de abajo-->
    <div class="pie">
        <div class="link">
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="servicios.jsp">Servicios</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
            </ul>
        </div>
        <div class="link">
            <ul>
                <li>
                    <a href="https://maps.app.goo.gl/g2h5WTW8rdhTJeSD9" target="_blank">
                        Alejandro Velasco Astete 801-Piso 2, San Borja</a>
                </li>
                <li>
                    <a href="https://www.google.com/intl/es-419/gmail/about/" target="_blank">odonto.toothless@gmail.com
                    </a>
                </li>
                <li>
                    <a href="https://api.whatsapp.com/send?phone=51970632068" target="_blank">+51970632068</a>
                </li>
            </ul>
        </div>
        <div class="link1">
            <ul>
                <li> <a href="https://www.facebook.com/" target="_blank"><i class="fa-brands fa-facebook"
                            style="color: #ffffff;"></i></a></li>
                <li> <a href="https://www.instagram.com/" target="_blank"> <i class="fa-brands fa-instagram"
                            style="color: #ffffff;"></i></a></li>
                <li><a href="https://api.whatsapp.com/send?phone=51970632068" target="_blank"><i
                            class="fa-brands fa-whatsapp" style="color: #ffffff;"></i></a></li>
            </ul>
        </div>
    </div>
</body>

</html>
