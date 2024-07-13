<%-- 
    Document   : servicios
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

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
<br>
<br>
 <!--inicio de cards-->
 <div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="imagenes/saludb1.png" class="card-img-top" alt="Descripción de la imagen">      <div class="card-body">
        <h5 class="card-title"><strong>Vizualiza tu salud Bucal</strong></h5>
        <p class="card-text">Visualiza tu salud dental de forma interactiva con nuestro odontograma en línea.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="imagenes/receta-doctor2.png" class="card-img-top" alt="Descripción de la imagen">
      <div class="card-body">
        <h5 class="card-title"><strong>Recetas Médicas</strong></h5>
        <p class="card-text">Accede fácilmente a tus recetas médicas en línea y gestiona tu tratamiento de manera conveniente desde cualquier lugar.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <div class="card-body">
        <img src="imagenes/cita-doctor2.png" class="card-img-top" alt="Descripción de la imagen">
        <h5 class="card-title"> <strong> Citas Médicas</strong></h5>
        <p class="card-text">Revisa tu agenda de citas o agenda una nueva cita en línea,Nuestro equipo de expertos en salud está disponible para brindarte el mejor cuidado dental posible.</p>
      </div>
    </div>
  </div>
</div>
<br>
<br>
    <!--Fin de cards-->
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
  
</body>

</html>
