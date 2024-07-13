<%
        Integer idPaciente = (Integer) request.getAttribute("idPaciente");
    %>
<div id="menu-dashboard" class="menu-dashboard">

    <div class="top-menu">
        <div class="logo">
            <img src="imagenes/logo.png" alt="">
            <span>Toothless</span>
        </div>
        <div class="toggle">
            <i class='bx bx-menu'></i>
        </div>
    </div>

    <br><br><br>

    <div class="menu" >
        <div class="enlace">
            <i class="fa-solid fa-house"></i>
            <a href="pct_index.jsp?pagina=pct_index1">
            <span>Inicio</span></a>
        </div>

        
        <div class="enlace">
            <i class="fa-solid fa-user"></i>
            <a href="pct_index.jsp?pagina=pct_ver1&idPaciente=<%= idPaciente %>">
            <span>Mi Perfil</span></a>
        </div>

        <div class="enlace">
            <i class="fa-solid fa-stethoscope"></i>
            <a href="pct_index.jsp?pagina=pct_citas">
            <span>Citas</span></a>
        </div>

        <div class="enlace">
            <i class="fa-solid fa-file-medical icoon"></i>
            <a href="pct_index.jsp?pagina=pct_recetas">
            <span>Recetas</span></a>
        </div>

        <div class="enlace">
            <i class="fa-solid fa-door-open"></i>
            <a href="login.jsp">
            <span>Salir</span></a>
        </div>
    </div>
</div>


