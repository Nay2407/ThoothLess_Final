<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%@include file="referencias.jsp" %>
    <link rel="stylesheet" href="css/estilosindex.css"  />
    <link rel="stylesheet" href="css/imagenes.css"  />
    <title>Odontologia Toothless</title>
    
    
</head>

<body style="background-color: white; font-family: sans-serif">
    
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
    <!--CARRUSEL-->
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imagenes/Recortado cD.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="imagenes/banner0.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="imagenes/Recortado cD.jpg"class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!--CONTENIDO-->
    <div class="container-fluid row">
        <div class="col-sm-6 cont">
            <h1>Creando Sonrisas</h1>
            <p>
                En Toothless queremos ayudarte a conseguir la sonrisa con la que
                siempre has soñado y ésta es la mejor carta de presentación con la
                que disponemos. En Toothless somos expertos en procedimientos de
                implantes dentales y estética dental y contamos con todos los medios
                necesarios para conseguirlo.
            </p>
        </div>
        <div class="col-sm-6 cont ">
            <br />
            <img class="sonrisa" style="box-shadow: 0px 15px 15px rgba(0, 0, 0, 25%);" src="imagenes/Sonrisa.jpg" />
        </div>
    </div>
    <br />
    <div class="container-fluid row">
        <div class="col-sm-6 cont cont1">
            <br />
            <img class="grupoodon" style="box-shadow: 0px 15px 15px rgba(0, 0, 0, 25%);" src="imagenes/grupodoctores.jpg" />
        </div>
        <div class="col-sm-6 cont cont2">
            <h1>¿Por que Toothless?</h1>
            <p>
                Somos un equipo de cirujanos dentistas especializados con más de 10
                años de experiencia, ofrecemos a nuestros pacientes confianza,
                tratamientos modernos y especializados en todas nuestras áreas para
                el cuidado de su salud dental y estética.
            </p>
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
