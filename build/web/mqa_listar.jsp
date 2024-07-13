<%@page import="modelos.Maquina" %>
<%@page import="java.util.LinkedList" %>

<%
    Maquina mqa = new Maquina();
    LinkedList<Maquina> lista = new LinkedList<>();
    lista = mqa.listar();
%>

<br>
<h3>Lista de maquinas</h3>
<a href="ad_inventario.jsp?pagina=mqa_nuevo" class="btn" style="background-color: #032A38; color: white">Ingresar nueva Maquina</a>
<table id="myTable" class="display">
    <thead>
        <tr>
            <th>idMaquina</th>
            
            <th>Nombre</th>
            <th>Proveedor</th>
            <th>Garantia</th>
            <th>Estado</th>
            
            <th>Ver</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (Maquina mq : lista) {
        %>        
        <tr>
            <td>
                <%= mq.getIdMaquina()%>
            </td>
            <td>
                <%= mq.getNombre()%>
            </td>
            <td>
                <%= mq.getproveedor()%>
            </td>
            <td>
                <%= mq.getgarantia()%>
            </td>
            <td>
                <%= mq.getEstado()%>
            </td>
            <td><a href="ad_inventario.jsp?pagina=mqa_ver&idMaquina=<%= mq.getIdMaquina()%>" class="btn" style="background-color: #032A38; color: white">ver</a></td>
            <td><a href="ad_inventario.jsp?pagina=mqa_editar&idMaquina=<%= mq.getIdMaquina()%>" class="btn" style="background-color: #032A38; color: white">Editar</a></td>
            <td><a href="ad_inventario.jsp?pagina=mqa_eliminar&idMaquina=<%= mq.getIdMaquina()%>" class="btn" style="background-color: #032A38; color: white">Eliminar</a></td>
        </tr>
        <%
            }
        %>        
    </tbody>
</table>
