$(function(){

  $('header button').on('click',cargaPreguntas);
  $('input[type=radio]').on('click',mandaRespuesta);
});

function cargaPreguntas()
{
  var nombre=$('input#nombre').val();
  if(nombre)
  {

    $.ajax({
      url: 'nombre.php',
      type: 'POST',
      dataType: 'JSON',
      data: {nombre: nombre}
    })
    .done(function() {
      console.log("success");
    });

    $('section.preguntas').show('slow');

  }
  else
  {
    alert("ingresa tu nombre");
  }
}




function mandaRespuesta()
{

  var res=$(this).val();
  var nombre=$('input#nombre').val();
  var numero=$(this).parent().children('h3').text();
  $.ajax({
    url: 'respuestas.php',
    type: 'POST',
    dataType: 'JSON',
    data: {nombre: nombre,
          numero:numero,
          res:res
    }
  })
  .done(function() {
    console.log("success");
  });

}
