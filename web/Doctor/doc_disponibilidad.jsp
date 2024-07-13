<%-- 
    Document   : doc_disponibilidad
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="doc_referencias.jsp" %>
     <link rel="stylesheet" href="/Doctor/css/doc_index.css">
    <link rel="stylesheet" href="/Doctor/css/doc_disponibilidad.css">
    <title>Disponibilidad</title>
</head>

<body>
    <nav>
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
            aria-controls="navegacion">
            <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
        </button>
        <div style="min-height: 150px;">


            <div class="collapse collapse-horizontal" id="navegacion">

                <div class="enlaces" style="width: 250px;">
                    <a href="doc_index.jsp">Inicio</a>
                    <a href="doc_citas.jsp">Citas</a>
                    <a href="doc_diagnostico.jsp">Diagnostico</a>
                    <a href="doc_paciente.jsp">Pacientes</a>
                    <a href="doc_disponibilidad.jsp">Disponibilidad</a>
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>
            </div>
        </div>
        <br>    
    </nav>

    <div class="container">
        <h1>Por favor Seleccione su Disponibilidad</h1>
        <br>
        <br>
        <form id="availabilityForm">
            <label for="availableDate">Fecha:</label>
            <input type="date" id="availableDate" required><br><br>
            
            <label for="startTime">Hora de inicio:</label>
            <input type="time" id="startTime" required><br><br>
            
            <label for="endTime">Hora de fin:</label>
            <input type="time" id="endTime" required><br><br>
            
            <button type="submit">Guardar Disponibilidad</button>
        </form>
        <div id="availabilityList">
            <br>
            <h2>Horas Disponibles</h2>
            <ul id="availabilityItems"></ul>
        </div>
    </div>

    <script>
        window.onload = function() {
            loadAvailability();
        };

        function loadAvailability() {
            const savedAvailability = JSON.parse(localStorage.getItem('doctorAvailability')) || [];
            const availabilityList = document.getElementById('availabilityItems');
            availabilityList.innerHTML = ''; // Limpiar lista antes de cargar

            savedAvailability.forEach((availability, index) => {
                const li = document.createElement('li');
                li.textContent = `ID: ${index + 1}, Fecha: ${availability.date}, Hora de inicio: ${availability.startTime}, Hora de fin: ${availability.endTime}`;
                
                // Botón para eliminar la disponibilidad
                const deleteButton = document.createElement('button');
                deleteButton.textContent = 'Eliminar';
                deleteButton.addEventListener('click', function() {
                    deleteAvailability(index);
                });

                li.appendChild(deleteButton);
                availabilityList.appendChild(li);
            });
        }

        function deleteAvailability(index) {
            let savedAvailability = JSON.parse(localStorage.getItem('doctorAvailability')) || [];
            savedAvailability.splice(index, 1); // Eliminar el elemento en la posición index
            localStorage.setItem('doctorAvailability', JSON.stringify(savedAvailability));
            loadAvailability(); // Actualizar lista de disponibilidades
        }

        document.getElementById('availabilityForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const availableDate = document.getElementById('availableDate').value;
            const startTime = document.getElementById('startTime').value;
            const endTime = document.getElementById('endTime').value;
            const newAvailability = { date: availableDate, startTime: startTime, endTime: endTime };

            let savedAvailability = JSON.parse(localStorage.getItem('doctorAvailability')) || [];
            savedAvailability.push(newAvailability);
            localStorage.setItem('doctorAvailability', JSON.stringify(savedAvailability));
            alert('Muchas gracias por guardar su disponibilidad.');
            this.reset();
            loadAvailability(); // Actualizar lista de disponibilidades
        });
    </script>
</body>
</html>
