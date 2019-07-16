<section class="content-header">
    <h1>Listado de Sedes</h1>
</section>  
 <!-- Main content -->
<section class="content">
    <div class="box-footer">
        <button type="submit" class="btn btn-info pull-left">Agregar Sede</button>
    </div>
<div class="row">
<div class="col-xs-6">
<div class="box">
    <!-- /.box-header -->
    <div class="box-body">
        <table id="lista_sedes" class="table table-bordered table-striped">
            <thead>
                <tr>
                  <th>Id</th>
                  <th>Nombre Sede</th>
                  <th>Estado</th>
                  <th colspan="2">Acciones</th>
                </tr>
            </thead>
            <?php foreach ($sedes->result() as $row) { ?>
            <tbody>
                <tr>
                    <td><?php echo $row->id_sede; ?></td>
                    <td><?php echo $row->nombre_sede; ?></td>
                    <td><?php echo $row->estado; ?></td>
                    <td>
                        <button type="button" class="btn btn-block btn-warning btn-sm">Editar</button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-block btn-danger btn-sm">Eliminar</button>
                  </td>
                </tr>

            </tbody>
            <?php }   ?>
        </table>
    </div>
</div>
</div>
</div></section>
<script>
  $(function () {
    $('#lista_sedes').DataTable()
  })
</script>