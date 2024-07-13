<%-- 
    Document   : recomendaciones
    Created on : 29 may 2024, 1:42:51
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="referencias.jsp" %>
    <title>Recomendaciones</title>
    
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
    <!--CONTENIDO-->
    <center>
        <div>
            <div>
                <h1>Cuidados recomendados</h1>
                <p>
                    En esta sección te daremos algunos consejos sobre como debes cuidar tu salud bucal
                </p>
            </div>
        </div>
    </center>
    <div class=" container-fluid info row">
        <!--Cepillado-->
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/pasta.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Cepillado: técnica y frecuencia</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cepillado">
                    Ver más
                </button>
            </div>
        </div>
        <div class="modal fade" id="cepillado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="cepilladoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="cepilladoLabel">Cepillado: técnica y frecuencia</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>El cepillado de los dientes es lo que permitirá eliminar la placa dental antes de que se
                            convierta en sarro. También ayuda a reducir la cantidad de bacterias en la boca.
                            Debe hacerse al menos dos veces al día y antes de dormir. Para ello se debe elegir un
                            buen cepillo dental, se recomienda que sea de cerdas suaves. En cuanto a la pasta
                            dental, debe tener flúor, ya que ayuda a remineralizar el esmalte.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!--dental-->
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/hilodental.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">El uso de la seda dental es sencillo</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#SedaDental">
                    Ver más
                </button>
            </div>
        </div>
        <div class="modal fade" id="SedaDental" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="SedaDentalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="SedaDentalLabel">El uso de la seda dental es sencillo</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <ol style="margin-left: 60px;">
                            <li>
                                <p class="espaciadoderecho">Toma un trozo de hijo de 35 centímetros y sostenlo entre las
                                    manos
                                    de modo que quede un espacio de cinco centímetros para trabajar.</p>
                            </li>
                            <li>
                                <p class="espaciadoderecho">A continuación, sostén la parte del hilo con la que vas a
                                    trabajar
                                    con los dedos índice y pulgar. Lleva el hilo al espacio interdental y
                                    limpia ambos dientes. Ten cuidado de no hacer mucha presión en las encías.</p>
                            </li>
                            <li>
                                <p class="espaciadoderecho">Repite esta acción en cada espacio interdental, moviendo
                                    cada
                                    vez el
                                    hilo para
                                    utilizar un espacio que esté limpio.</p>
                            </li>
                        </ol>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!--ENGUAJE BUCAL-->
        <div class="card col-sm-4" style="width: 18rem;">
            <img src="imagenes/enjuague.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Enjuague bucal</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#enjuage">
                    Ver más
                </button>
            </div>
        </div>
        <div class="modal fade" id="enjuage" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="enjuageLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="enjuageLabel">Enjuague bucal: cómo y cuándo usarlo</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="trescuartos" style="margin-left: 15px;">
                            Inclúyelo en tu rutina diaria de limpieza, después del cepillado y el hilo dental.
                            Para que sea más efectivo, sigue estos pasos:
                        </p>

                        <ol style="margin-left: 40px;">
                            <li>
                                <p class="espaciadoderecho2">Vierte 20 ml de enjuague bucal en un vaso.</p>
                            </li>
                            <li>
                                <p class="espaciadoderecho2">Enjuaga la boca durante unos 30 segundos, asegurándote de
                                    cubrir
                                    todas las áreas.</p>
                            </li>
                            <li>
                                <p class="espaciadoderecho2">Evita tragar el enjuague bucal. Una vez que hayas enjuagado
                                    durante
                                    el tiempo recomendado, escupe el líquido en el lavabo.</p>
                            </li>
                            <li>
                                <p class="espaciadoderecho2">Evita comer o beber durante al menos 30 minutos después de
                                    usar
                                    el
                                    enjuague bucal.</p>
                            </li>
                        </ol>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid row info">
        <!--ALIMENTOOS BENEFICIOSOS-->
        <div class="card col-sm-6" style="width: 18rem;">
            <img src="imagenes/alimentosgood.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Alimentos beneficiosos para los dientes</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#GoodAlimentos">
                    Ver más
                </button>
            </div>
        </div>
        <div class="modal fade" id="GoodAlimentos" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="GoodAlimentosLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="GoodAlimentosLabel">Alimentos beneficiosos para los dientes
                        </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="trescuartos">
                            Debes consumir suficientes frutas y verduras para mantener tus dientes sanos. Incluye
                            manzanas,
                            zanahorias, apio, kiwi, sandía, vegetales de hojas verdes. Los cereales también aportan
                            beneficios a la salud dental.
                            El queso, el yogur y la leche aportan calcio y proteínas que promueven la salud de los
                            dientes.
                            De
                            igual manera,
                            el pescado, el huevo y la carne de res tienen nutrientes beneficiosos.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!--ALIMENTOOS malos-->
        <div class="card col-sm-6" style="width: 18rem;">
            <img src="imagenes/alimentosbad.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Alimentos que debes evitar</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#SedaDental">
                    Ver más
                </button>
            </div>
        </div>
        <div class="modal fade" id="SedaDental" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="SedaDentalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="SedaDentalLabel">Alimentos que debes evitar</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="trescuartos">
                            En cuanto a lo que debes evitar están los alimentos ultraprocesados y bebidas azucaradas. La
                            bollería, galletas, el pan, los refrescos, entre otros aceleran la producción de ácidos que
                            destruyen el esmalte.
                            Las bebidas ácidas como el zumo de limón o naranja también pueden dañar los dientes si no
                            lavas tu
                            boca después de consumirlos.
                            Morder caramelos duros o hielo puede provocar fracturas en los dientes.
                            Si consumes algunos de estos alimentos y bebidas, cepilla los dientes luego para evitar la
                            acción de
                            los ácidos.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
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
</body>

</html>
