<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>
<%@page import="java.util.LinkedList" %>
<%@include file="ad_referencias.jsp" %>

<%
    Paciente pct = new Paciente();
    LinkedList<Paciente> lista = new LinkedList<>();
    lista = pct.listar();
    
    Persona p = new Persona();
%>

<br>
<h3>Lista de Pacientes</h3>
<a href="rec_index.jsp?pagina=pct_nuevo" class="btn" style="background-color: #032A38; color: white">Nuevo Paciente</a>
<table id="myTable" class="display table">
    <thead>
        <tr>
            <th>#</th>
            <th>Usuario</th>
            <th>Nombre</th>
             <th>Apellido</th>
            <th>Sexo</th>
            <th>Correo</th>
            <th>Ver</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>
    </thead>
    <tbody>
        <%
            int n=0;
            for (Paciente pcta : lista) {
            n=n+1;
            
        %>        
        <tr>
            <td>
                <%=n %>
            </td>
            
            <td>
                <%= pcta.getUsuario()%>
            </td>
            <td>
                <% p.ver(pcta.getIdPersona()); %>
                <%= p.getNombre()%>
            </td>
            <td>
                <%= p.getApellido()%>
            </td>
            <td>
                <%= p.getGenero()%>
            </td>
            <td>
                <%= p.getCorreo()%>
            </td>
            
           
            <td><a href="rec_index.jsp?pagina=pct_verRec&idPaciente=<%= pcta.getIdPaciente()%>" class="btn" style="background-color: #032A38; color: white">ver</a></td>
            <td><a href="rec_index.jsp?pagina=pct_editarRec&idPaciente=<%= pcta.getIdPaciente()%>" class="btn" style="background-color: #032A38; color: white">Editar</a></td>
            <td><a href="rec_index.jsp?pagina=pct_eliminarRec&idPaciente=<%= pcta.getIdPaciente()%>" class="btn" style="background-color: #032A38; color: white">Eliminar</a></td>
        </tr>
        <%
            }
        %>        
    </tbody>
</table>
