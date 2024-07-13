<%-- 
    Document   : nosotros
    Created on : 29 may 2024, 1:42:43
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="referencias.jsp" %>
    <title>Nosotros</title>
    
    
</head>

<body style="background-color: white; font-family: sans-serif">
    <!--CABECERA-->
    <header>
        <div style="padding: 3px 20px;">
            <img class="logo" style="display: inline-block;" src="imagenes/logo.png" />
            <a style="display: inline-block;" href="index.jsp">Toothless</a>
        </div>
        <div>
            <a href="login.jsp">Iniciar Sesion</a>
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


    <div class="banner">
        <img class="banner" src="imagenes/banner.jpg" />
    </div>


    <div class="container-fluid row">
        <div class="col-sm-6 cont">
            <h1>Visión</h1>
            <p>
                Somos una empresa de excelencia en el servicio dental para nuestra sociedad,
                con profesionales competentes y actualizados.
                Contribuyendo con respeto para que el Perú siempre sonría.
            </p>
        </div>
        <div class="col-sm-6 cont">
            <h1>Misión</h1>
            <p>
                Seguir inspirando confianza a los pacientes, superando las expectativas
                de nuestros servicios, promoviendo el concepto odontológico de cultura
                de prevención y cuidado oral, buscando la oportunidad de atender más
                pacientes con alta responsabilidad social.
            </p>
        </div>
    </div>

    <div class="container-fluid row">
        <div class="col-sm-6 cont">
            <h1>Espacios cómodos y seguros</h1>
            <p>
                Sabemos que la confianza es lo primero. Por eso, llevamos a cabo todos los tratamientos
                con el mismo compromiso y dedicación. Queremos que se sienta cómodo durante toda su atención
                con nosotros. Además, adecuamos los protocolos de bioseguridad del más alto nivel en cada sede;
                resaltando el uso de Equipos de Protección Personal (EPP) y procesos de desinfección y
                esterilización.
            </p>
        </div>
        <div class="col-sm-6 cont">
            <img class="imagen1" src="imagenes/space_zen.jpg" />
        </div>

    </div>
    <!--TARJETA DE DOCTORES-->
    <div class="container-fluid row info">
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/doctores.jpg" class="card-img-top">
            <div class="card-body">
                <p class="image-name">Dr. Franco Iman</p>
                <p>Rehabilitación oral, estética e implantes</p>
                <p>Universidad Peruana de Ciencias Aplicadas</p>
            </div>
        </div>
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/doctores.jpg" class="card-img-top">
            <div class="card-body">
                <p class="image-name">Dra. Nayeli Chuquipul</p>
                <p>Ortodoncia y ortopedia maxilofacial</p>
                <p >Pontificia Universidad Catolica del Peru</p>
            </div>
        </div>
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/doctores.jpg" class="card-img-top">
            <div class="card-body">
                <p class="image-name">Dr. Piero Arana</p>
                <p >Endodoncia</p>
                <p >Universidad Cayetano Heredia</p>
            </div>
        </div>
    </div>
    <div class="container-fluid row info">
        <div class="card col-sm-6" style="width: 18rem;">
            <img src="imagenes/doctores.jpg" class="card-img-top">
            <div class="card-body">
                <p class="image-name">Dr. Cleeff De La Cruz</p>
                <p>Odontología Integral</p>
                <p >Universidad Ricardo Palma</p>
            </div>
        </div>
        <div class="card col-sm-6" style="width: 18rem;">
            <img src="imagenes/doctores.jpg" class="card-img-top">
            <div class="card-body">
                <p class="image-name">Dr. Jeremy Reynoso</p>
                <p >Periodoncia e implantología</p>
                <p >Universidad Privada del Norte</p>
            </div>
        </div>
    </div>
    
    <!--PIE-->
    <div class="container-fluid row pie">
        <div class="col-sm-4">
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="servicios.jsp">Servicios</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
            </ul>
        </div>
        <div class="col-sm-4">
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
        <div class="col-sm-4 link1">
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
    <!--termina-->
</body>

</html>
