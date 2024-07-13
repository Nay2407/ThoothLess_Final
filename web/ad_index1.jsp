<body>
    <div class="container">
        <center>
            <h1>Bienvenido(a)</h1>
            <br>
        </center>

        <div class="row">
            <div class="col-md-4">
                <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-body">
                        <h1>15</h1>
                        <div class="mt-2 pt-2 border-top">
                            <h3>Citas Totales</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-body">
                        <h1>24</h1>
                        <div class="mt-2 pt-2 border-top">
                            <h3>Pacientes</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-body">
                        <h1>5</h1>
                        <div class="mt-2 pt-2 border-top">
                            <h3>Doctores</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row chart-container">
            <div class="col-md-4">
                <canvas id="lineChart" width="400" height="400"></canvas>
            </div>
            <div class="col-md-4">
                <canvas id="barChart" width="400" height="400"></canvas>
            </div>
            <div class="col-md-4">
                <canvas id="pieChart" width="400" height="400"></canvas>
            </div>
        </div>
    </div>

    <script>
        var ctxLine = document.getElementById('lineChart').getContext('2d');
        var lineChart = new Chart(ctxLine, {
            type: 'line',
            data: {
                labels: ['Semana 1', 'Semana 2', 'Semana 3', 'Semana 4', 'Mayo', 'Junio'],
                datasets: [{
                    label: '# de Citas del mes',
                    data: [15, 20, 30, 40, 35, 50],
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        var ctxBar = document.getElementById('barChart').getContext('2d');
        var barChart = new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
                datasets: [{
                    label: '# de Pacientes del mes',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        var ctxPie = document.getElementById('pieChart').getContext('2d');
        var pieChart = new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: ['Masculino', 'Femenino'],
                datasets: [{
                    label: '# de Pacientes',
                    data: [60, 40],
                    backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)'],
                    borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)'],
                    borderWidth: 1
                }]
            }
        });
    </script>
</body>

