<?php
include "conecta.php";
$query="select * from preguntas";
$res=mysql_query($query);
$cont=0;
$arrayName= array();
$preguntas= array();
while($columna=mysql_fetch_assoc($res))
{
  $arrayName[$columna['id']] = $number = array('numero' => $columna['id'],
  'pregunta' => $columna['pregunta'] );

}
echo json_encode($arrayName);
 ?>
