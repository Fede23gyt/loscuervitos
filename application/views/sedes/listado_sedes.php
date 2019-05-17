<div class="container">
	<h2>LISTADO DE SEDES</h2>

	<table class="table .table-hover">
    <thead>
    	<tr>
    		<td>Id</td>
    		<td>Nombre Sede</td>
    		<td>Estado</td>
    	</tr>
    </thead>
	<?php
    foreach ($sedes->result() as $row) { ?>
    <tbody>
    	<tr>
            <td><?php echo $row->id_sede; ?></td>
            <td><?php echo $row->nombre_sede; ?></td>
            <td><?php echo $row->estado; ?></td>
        </tr>
    </tbody>
    <?php }	?>
    </table>
</div>