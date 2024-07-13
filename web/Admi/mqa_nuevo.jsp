<form action="mqa_procesa.jsp" method="post">
  
    
    
    
    nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" required> <br><br><!-- comment -->
    proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" required> <br>
    garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" required> <br>
    estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" required> <br>
    
    <input type="hidden" name="pagina" value="mqa_nuevo">
    <a href="ad_inventario.jsp?pagina=mqa_listar" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>

