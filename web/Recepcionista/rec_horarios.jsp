<%-- 
    Document   : rec_horarios
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="rec_referencias.jsp" %>
    <link rel="stylesheet" href="/Doctor/css/doc_index.css">
    <link rel="stylesheet" href="Css/recepcionista.css">
    <title>Horarios</title>
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
                    <a href="rec_index.jsp">Inicio</a>
                    <a href="rec_solicitudcitas.jsp">Solicitudes de Citas</a>
                    <a href="rec_horarios.jsp">Horario</a>
                    <a href="rec_pacientes.jsp">Pacientes</a>
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>

            </div>
        </div>
    </nav>
     <!--FIN DE NAVEGACION-->
    <div class="container">
        <center><strong style="font-size: 30px;">Horario de los Médicos</strong></center>
        <br>
        <div class="card-group row">
            <div class="card col-md-4"; style="background-color: #b3e7ff;">
                <img src="../imagenes/doctores.jpg" alt="Doc">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;">Dr. Franco Iman</h5>
                    <p class="card-text">Especialista: Rehabilitación oral, estética e implantes.</p>
                    <p class="card-text">Horarios del Médico:</p>
                    <p class="card-text"><small class="text-body-secondary">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseOne" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            Días Lunes
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                            aria-expanded="false" aria-controls="collapseTwo">
                                            Días Jueves
                                        </button>
                                    </h2>
                                    <div id="collapseTwo" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>9:50AM - 12:30PM</p>
                                            <p>2:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                            aria-expanded="false" aria-controls="collapseThree">
                                            Días Viernes
                                        </button>
                                    </h2>
                                    <div id="collapseThree" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                            aria-expanded="false" aria-controls="collapseFour">
                                            Días Sábados
                                        </button>
                                    </h2>
                                    <div id="collapseFour" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </small></p>
                </div>
            </div>
            <div class="card col-md-4" style="background-color: #b3e7ff;">
                <img src="../imagenes/doctores.jpg" class="card-img-top" alt="Doc">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;">Dra. Nayeli Chuquipul</h5>
                    <p class="card-text">Especialista: Ortodoncia y ortopedia maxilofacial</p>
                    <p class="card-text">Horarios del Médico:</p>
                    <p class="card-text"><small class="text-body-secondary">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseFive" aria-expanded="false"
                                            aria-controls="collapseFive">
                                            Días Lunes
                                        </button>
                                    </h2>
                                    <div id="collapseFive" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>9:50AM - 12:30PM</p>
                                            <p>1:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseSix"
                                            aria-expanded="false" aria-controls="collapseSix">
                                            Días Martes
                                        </button>
                                    </h2>
                                    <div id="collapseSix" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseSeven"
                                            aria-expanded="false" aria-controls="collapseSeven">
                                            Días Jueves
                                        </button>
                                    </h2>
                                    <div id="collapseSeven" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseEight"
                                            aria-expanded="false" aria-controls="collapseEight">
                                            Días Viernes
                                        </button>
                                    </h2>
                                    <div id="collapseEight" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </small></p>
                </div>
            </div>
            <div class="card col-md-4" style="background-color: #b3e7ff">
                <img src="../imagenes/doctores.jpg" class="card-img-top" alt="Doc">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;">Dr. Cleeff de la Cruz</h5>
                    <p class="card-text">Especialista: Odontología Integral</p>
                    <p class="card-text">Horarios del Médico:</p>
                    <p class="card-text"><small class="text-body-secondary">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseNine" aria-expanded="false"
                                            aria-controls="collapseNine">
                                            Días Miércoles
                                        </button>
                                    </h2>
                                    <div id="collapseNine" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>9:50AM - 12:30PM</p>
                                            <p>1:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseTen"
                                            aria-expanded="false" aria-controls="collapseTen">
                                            Días Jueves
                                        </button>
                                    </h2>
                                    <div id="collapseTen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseEleven"
                                            aria-expanded="false" aria-controls="collapseEleven">
                                            Días Viernes
                                        </button>
                                    </h2>
                                    <div id="collapseEleven" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseTwelve"
                                            aria-expanded="false" aria-controls="collapseTwelve">
                                            Días Sábados
                                        </button>
                                    </h2>
                                    <div id="collapseTwelve" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </small></p>
                </div>
            </div>
            <div class="card col-sm-6" style="background-color: #b3e7ff">
                <img src="../imagenes/doctores.jpg" class="card-img-top" alt="Doc">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;">Dr. Piero Arana</h5>
                    <p class="card-text">Especialista: Endodoncia y Limpieza Dental</p>
                    <p class="card-text">Horarios del Médico:</p>
                    <p class="card-text"><small class="text-body-secondary">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseThirteen" aria-expanded="false"
                                            aria-controls="collapseThirteen">
                                            Días Lunes
                                        </button>
                                    </h2>
                                    <div id="collapseThirteen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>9:50AM - 12:30PM</p>
                                            <p>1:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseFourteen"
                                            aria-expanded="false" aria-controls="collapseFourteen">
                                            Días Martes
                                        </button>
                                    </h2>
                                    <div id="collapseFourteen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseFifteen"
                                            aria-expanded="false" aria-controls="collapseFifteen">
                                            Días Jueves
                                        </button>
                                    </h2>
                                    <div id="collapseFifteen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseSixteen"
                                            aria-expanded="false" aria-controls="collapseSixteen">
                                            Días Viernes
                                        </button>
                                    </h2>
                                    <div id="collapseSixteen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </small></p>
                </div>
            </div>
            <div class="card " style="background-color: #b3e7ff">
                <img src="../imagenes/doctores.jpg" class="card-img-top" alt="Doc">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;">Dr. Jeremy Reynoso</h5>
                    <p class="card-text">Especialista: Periodoncia e implantología</p>
                    <p class="card-text">Horarios del Médico:</p>
                    <p class="card-text"><small class="text-body-secondary">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseSeventeen" aria-expanded="false"
                                            aria-controls="collapseSeventeen">
                                            Días Lunes
                                        </button>
                                    </h2>
                                    <div id="collapseSeventeen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>9:50AM - 12:30PM</p>
                                            <p>1:50AM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseEighteen"
                                            aria-expanded="false" aria-controls="collapseEighteen">
                                            Días Miércoles
                                        </button>
                                    </h2>
                                    <div id="collapseEighteen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>1:50AM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseNineTeen"
                                            aria-expanded="false" aria-controls="collapseNineTeen">
                                            Días Viernes
                                        </button>
                                    </h2>
                                    <div id="collapseNineTeen" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 4:30PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseTwenty"
                                            aria-expanded="false" aria-controls="collapseTwenty">
                                            Días Sábados
                                        </button>
                                    </h2>
                                    <div id="collapseTwenty" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <strong>Cronograma del Médico</strong>
                                            <p>8:50AM - 12:30PM</p>
                                            <p>2:50PM - 5:30PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </small></p>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
