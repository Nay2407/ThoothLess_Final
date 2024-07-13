<%@page import="modelos.Citas, modelos.Paciente,modelos.Persona, modelos.Empleado"%>
<%@page import="java.util.LinkedList" %>
<%@include file="ad_referencias.jsp" %>

<%

    Citas cta = new Citas();
    LinkedList<Citas> lista = new LinkedList<>();
    lista = cta.listar();

    Empleado e = new Empleado();
%>

<br>
<h3>Lista de Citas</h3>
<table id="myTable" class="display table">
    <thead>
        <tr>
            <th>#</th>
            <th>Paciente</th>
            <th>Recepcionista</th>
            <th>Dentista</th>
            <th>Especialidad</th>
            <th>Tratamiento</th>
            <th>Hora</th>
            <th>Descripcio</th>
            <th>Fecha</th>
            <th>Estado</th>
        </tr>
    </thead>
    <tbody>
        <%
            int n = 0;
            for (Citas ctaa : lista) {
                n = n + 1;

        %>        
        <tr>
            <td>
                <%=n%>
            </td>

            <td>
                <%= ctaa.getPACIENTE_idPaciente()%>
            </td>
            <td>
                <% e.ver(ctaa.getRECEPCIONISTA_idEmpleado());%>
                <%= e.getUsuario()%>

            </td>
            <td>
                <% e.ver(ctaa.getDENTISTA_idEmpleado());%>
                <%= e.getUsuario()%>
            </td>
            <td>
                <%= ctaa.getESPECIALIDAD_idESPECIALIDAD()%>
            </td>
            <td>
                <%= ctaa.getTRATAMIENTO_idTRATAMIENTO()%>
            </td>
            <td>
                <%= ctaa.getHora()%>
            </td>
            <td>
                <%= ctaa.getDescripcion()%>
            </td>
            <td>
                <%= ctaa.getFecha()%>
            </td>
            <td>
                <%= ctaa.getEstado()%>
            </td>


        </tr>
        <%
            }
        %>        
    </tbody>
</table>