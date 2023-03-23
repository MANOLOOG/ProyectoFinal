<?php
error_reporting(0);
include 'connection.php';

if(isset($_POST['btnRegistroPlantel'])){
    $nombrePlantel = $connection->real_escape_string($_POST['nombrePlantel']);
    $clavePlantel = $connection->real_escape_string($_POST['clavePlantel']);
    $direccionPlantel = $connection->real_escape_string($_POST['direccionPlantel']);
    $telefonoPlantel = $connection->real_escape_string($_POST['telefonoPlantel']);
    $responsable = $connection->real_escape_string($_POST['responsable']);

    $qry = "INSERT INTO plantel(nombrePlantel, clavePlantel, direccionPlantel, telefonoPlantel, responsablePlantel) VALUES('$nombrePlantel', '$clavePlantel', '$direccionPlantel', '$telefonoPlantel', '$responsable')";
    $result = $connection->query($qry);

    if($result>0){
        header("location:index.php");

    }else{
        echo "ERROR";
    }
}


?>