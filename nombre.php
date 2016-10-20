<?php
include 'conecta.php';
$nombre=$_POST['nombre'];
$query="insert into alumno(nombre) value ('$nombre')";
mysql_query($query);
?>
