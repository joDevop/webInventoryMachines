<?php

include_once("./config/connectionDb.php");

$id = $_POST['id'];


$registro = $conexion->prepare("DELETE FROM table_machines WHERE id_machine=:id");

$registro->bindparam(':id', $id);

if ($registro->execute()) {
    return header("Location:table.php");
} else {
    return "error";
}

?>
