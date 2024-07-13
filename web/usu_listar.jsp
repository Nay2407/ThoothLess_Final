<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>
<%@page import="java.util.LinkedList" %>
<%@include file="ad_referencias.jsp" %>

<%
    Empleado e = new Empleado();
    LinkedList<Empleado> lista = new LinkedList<>();
    lista = e.listar();
    
    Persona p = new Persona();
%>

<br>
<h3>Lista de Empleados</h3>
<a href="ad_empleados.jsp?pagina=usu_nuevo" class="btn" style="background-color: #032A38; color: white">Nuevo Empleado</a>
<table id="myTable" class="display">
    <thead>
        <tr>
            <th>#</th>
            <th>Usuario</th>
            <th>Nombre</th>
             <th>Apellido</th>
            <th>Sexo</th>
            <th>Rol</th>
            <th>Correo</th>
   
            <th>Ver</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>
    </thead>
    <tbody>
        <%
            int n=0;
            for (Empleado ux : lista) {
            n=n+1;
            
        %>        
        <tr>
            <td>
                <%=n %>
            </td>
            
            <td>
                <%= ux.getUsuario()%>
            </td>
            <td>
                <% p.ver(ux.getIdPersona()); %>
                <%= p.getNombre()%>
            </td>
            <td>
                <%= p.getApellido()%>
            </td>
            <td>
                <%= p.getGenero()%>
            </td>
            <td>
                <%= ux.getRol()%>
            </td>
            <td>
                <%= p.getCorreo()%>
            </td>
            
           
            <td><a href="ad_index.jsp?pagina=usu_ver&idEmpleado=<%= ux.getIdEmpleado()%>" class="btn" style="background-color: #032A38; color: white">ver</a></td>
            <td><a href="ad_index.jsp?pagina=usu_editar&idEmpleado=<%= ux.getIdEmpleado()%>" class="btn" style="background-color: #032A38; color: white">Editar</a></td>
            <td><a href="ad_index.jsp?pagina=usu_eliminar&idEmpleado=<%= ux.getIdEmpleado()%>" class="btn" style="background-color: #032A38; color: white">Eliminar</a></td>
        </tr>
        <%
            }
        %>        
    </tbody>
</table>
