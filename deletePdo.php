<?php

include_once("connectionPdoDbAndroid.php");

$id = $_POST['id'];


$registro = $conexion->prepare("DELETE FROM berry_atril_machines WHERE id_machine=:id");

$registro->bindparam(':id', $id);

if ($registro->execute()) {
    return header("Location:table.php");
} else {
    return "error";
}

?>
