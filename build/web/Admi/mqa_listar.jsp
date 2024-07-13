<%@page import="Clases.Maquina" %>
<%@page import="java.util.LinkedList" %>

<%
    Maquina usr = new Maquina();
    LinkedList<Maquina> lista = new LinkedList<>();
    lista = usr.listar();
%>

<br>
<h3>Maquina</h3>
<a href="ad_inventario.jsp?pagina=mqa_nuevo" class="btn btn-primary">Nuevo</a>
<table class="table table-light table-hover table-striped">
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
            <td><a href="ad_inventario.jsp?pagina=mqa_ver&maquina=<%= mq.getNombre()%>" class="btn btn-info">ver</a></td>
            <td><a href="ad_inventario.jsp?pagina=mqa_editar&maquina=<%= mq.getNombre()%>" class="btn btn-warning">Editar</a></td>
            <td><a href="ad_inventario.jsp?pagina=mqa_eliminar&maquina=<%= mq.getNombre()%>" class="btn btn-danger">Eliminar</a></td>
        </tr>
        <%
            }
        %>        
    </tbody>
</table>
