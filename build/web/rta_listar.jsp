<%-- 
    Document   : rta_listar
    Created on : 13 jul 2024, 0:31:45
    Author     : User
--%>
<%@page import="java.util.List"%>
<%@page import="modelos.Citas, modelos.Paciente,modelos.Persona, modelos.Receta, modelos.Empleado, modelos.DetalleReceta"%>
<%@page import="java.util.LinkedList" %>
<%@include file="ad_referencias.jsp" %>

<%
    
    Receta rta = new Receta();
    LinkedList<Receta> lista = new LinkedList<>();
    lista = rta.listar();
    Empleado e = new Empleado();
    Paciente p = new Paciente();
    DetalleReceta dr = new DetalleReceta();
%>

<br>
<h3>Lista de Recetas</h3>
<table id="myTable" class="display table">
    <thead>
        <tr>
            <th>#</th>
            <th>Fecha</th>
            <th>Num Cita</th>
            <th>Dentista</th>
            <th>Paciente</th>
            <th>Dosificacion</th>
            <th>Medicamento</th>
        </tr>
        </tr>
    </thead>
    <tbody>
        <%
            int n=0;
            for (Receta rtaa : lista) {
            n=n+1;
            
        %>        
        <tr>
            <td>
                <%=n %>
            </td>
            <td>
                <%= rtaa.getFecha()%>
            </td>
            <td>
                <%= rtaa.getCITA_idCITA()%>
            </td>
            <td>
                <% e.ver(rtaa.getCITA_idCITA()); %>
                <%= e.getUsuario()%>
            
            </td>
            <td>
                <% p.ver(rtaa.getCITA_idCITA()); %>
                <%= p.getUsuario()%>
            </td>
            <td>
                <% dr.ver(dr.getRECETA_idRECETA()); %>
                <%= dr.getDosificacion()%>
            </td>
            <td>

                <%= dr.getMedicamento()%>
            </td>
        </tr>
        <%
            }
        %>        
    </tbody>
</table>