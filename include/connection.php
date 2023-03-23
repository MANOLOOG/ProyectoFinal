<?php

$server = "localhost";
$user = "root";
$password = "";
$bd = "practicas";

$connection = mysqli_connect($server, $user, $password, $bd);

if($connection->connect_errno){
    die('Error al conectar la base de datos: ' . $connection->connect_error);
}


?>