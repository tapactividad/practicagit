<?php 

	$nombre = $_POST['nombre'];
	$Apa = $_POST['Apa'];
	

	$contenido="
	asunto: $nombre
			Comentario: $Apa
			
	";
	
		$archivo = fopen("datos/$Apa.txt", "w");
		fwrite($archivo, $contenido);

	echo "<h2>SECCION DE COMENTARIOS:</h2>";
	echo "asunto:" . $nombre . "<br/>";
	echo "Comentario:" . $Apa ."<br/>";
	
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>Comentarios </title>
 	<meta charset="utf-8">
 </head>
 <body>
 <h2><center><font face="Arial" color="green">Comentario gurdado Correctamente.</center></h2>
 	<h5><center><font face="Arial" color="red"></font><a href="index.html">Regresar al inicio</a></h5></center>
 </body>
 </html>