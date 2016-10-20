<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="estilo.css">
</head>
<body>
  <header>
    <input type="text"  id="nombre">
    <button type="button" name="button">Comenzar Examen</button>
  </header>
  <section class="preguntas">
    <?php
    include "conecta.php";
    $query="select * from preguntas";
    $res=mysql_query($query);
    $html="";
    while($columna=mysql_fetch_assoc($res))
    {
      $html=$html.'<article class="">';
      $html=$html.' <h3>'.$columna['id'].'</h3>  <h2>'.$columna['pregunta'].'</h2>';
      $html=$html.' <input type="radio" name="name'.$columna['id'].'" value="a"> <span>'.$columna['opcA'].'</span>';
      $html=$html.' <input type="radio" name="name'.$columna['id'].'" value="b"> <span>'.$columna['opcB'].'</span>';
      $html=$html.' <input type="radio" name="name'.$columna['id'].'" value="c"> <span>'.$columna['opcC'].'</span>';
      $html=$html.' <input type="radio" name="name'.$columna['id'].'" value="d"> <span>'.$columna['opcD'].'</span>';
      $html=$html.'</article>';


    }
    echo $html;
     ?>
  </section>


<script src="jquery.js"></script>
<script src="examen.js"></script>
</body>
</html>
