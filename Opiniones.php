<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" type="text/css" href="Estiloxslt.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
        <title>Opiniones de los visitantes</title>
     </head>
    
    <body>
    <div align="center" class="cabecera">
         <div class="email">
            <p>
               jurasicFM@gmail.com 
            </p>
         </div>
         
         <h1 style="margin-bottom: 0px;">JurasicFM<img height="170" width="150" src="dinosaurio_2.png"></h1></br><p class="eslogan">Desde la prehistoria poniendo m&uacute;sica</p>
         <hr>
            <a href="emisora.html" style="font-size: 5mm;">Inicio</a></p>
         <hr>
      </div>
       <div class="cuerpo">
        <div class="contenidocuerpo">
            <h3>Formulario</h3>
            <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
                 Tu comentario:<br>
                 <textarea cols="55" rows="4" name="comentario"></textarea><br>
                 Tu nombre:<br>
                 <input type="text" name="nombre"/><br>
                 Tu e-mail:<br>
                 <input type="text" name="mail"/><br>
                 <input type="submit" value="Publicar"/><br>
            </form>    
            <h3>Opiniones de los Visitantes</h3><br>
            
            <?php
                 //variable que contiene el archivo
                 $file = "Comentarios.txt";
                 //comprobar si todo esta definido
                 if (isset($_POST['comentario']) && $_POST['nombre']!="" && $_POST['mail']!=""){
                     $comentario = $_POST['comentario'];
                     $nombre = $_POST['nombre'];
                     $mail = $_POST['mail'];
                     
                     //abrir el archivo para lectura y escritura
                     $fp = fopen($file,"r+");
                     
                     $old = fread($fp,filesize($file));
                     $maill = "<a href=\mailto:$mail\">$mail</a>";
                     $fechaEntrada = date("d-m-y");
                     //ocultar caracteres de html
                     $comentario = htmlspecialchars($comentario);
                 //    $comentario = stripslashes(n12br($comentario));
                     $comentario = stripslashes($comentario);
                     //entrada del libro de visitas
                     $entrada = "<p><b>$nombre</b>($maill) escrito el <i>$fechaEntrada</i>;<br>$comentario</p>\n";
                     rewind($fp);
                     //escribir la nueva entrada antes de las anteriores
                     fputs($fp, "$entrada \n $old");
                     //cerrar el archivo
                     fclose($fp);
                 }else{
                     echo "ERROR Por favor rellene todos los campos.";
                 }
                 //mostrar el archivo completo
                readfile($file);
             ?>
             </div>
        </div>
    </body>
</html>