<?php

include 'connection.php';

if(isset($_POST['btnRegistroLugar'])){
    $nombreLugar = $connection->real_escape_string($_POST['nombreLugar']);
    $descripcionLugar = $connection->real_escape_string($_POST['descripcionLugar']);
    $telefonoLugar = $connection->real_escape_string($_POST['telefonoLugar']);
    $emailLugar = $connection->real_escape_string($_POST['emailLugar']);
    $facebookLugar = $connection->real_escape_string($_POST['facebook']);
    $horarioLugar = $connection->real_escape_string($_POST['horarioLugar']);

    $consulta = "INSERT INTO lugar(nombreLugar, descripcionLugar, telefono, emailLugar, facebookLugar, horarioLugar) VALUES('$nombreLugar', '$descripcionLugar', '$telefonoLugar', '$emailLugar', '$facebookLugar', '$horarioLugar')";
    $resultado = $connection->query($consulta);

    if ($resultado > 0){
        header("location: index.php");
    }
}


?>