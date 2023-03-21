<?php
error_reporting(0);
include 'connection.php';

if(isset($_POST['btnRegistro'])){
    $nombre = $connection->real_escape_string($_POST['Nombre']);
    $apellidoP = $connection->real_escape_string($_POST['ApellidoP']);
    $apellidoM = $connection->real_escape_string($_POST['ApellidoM']);
    $user = $connection->real_escape_string($_POST['Username']);
    $direccion = $coonection->real_escape_string($_POST['Direccion']);
    $telefono = $connection->real_escape_string($_POST['Telefono']);
    $fecha = $connection->real_escape_string($_POST['Fecha']);
    $email = $connection->real_escape_string($_POST['Email']);
    $pass = $connection->real_escape_string($_POST['Password']);
    if($nombre == "" || $apellidoP =="" || $apellidoM=="" || $user=="" || $email=="" || $pass =="" || $direccion == "" || $telefono =="" || $fecha ==""){

        $alerta.="Alguno de los campos estan vacios ";
    }else{

        $registro = "INSERT INTO usuarios(nombre, apellidoP, apellidoM, username, direccion, telefono, fecha, email, password) VALUES('$nombre', '$apellidoP', '$apellidoM','$user', '$direccion', '$telefono', '$fecha','$email', '$pass')";
        $registros = $connection->query($registro);

        if($registros>0){
            header("location:index.php");
            echo "Registro exitoso";
        }else{
            header("location:index.php");
            echo "Error al registrar";
        }

        

    }

}

?>