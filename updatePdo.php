<?php
include_once("./config/connectionDb.php");

//*name
$id = $_POST['id'];
$type = $_POST['type'];
$ip = $_POST['ip'];
$mac = $_POST['mac'];
$campus = $_POST['campus'];
$observa = $_POST['observation'];

$registro = $conexion->prepare("UPDATE table_machines SET type_machine=:type_update,ip_range=:ip_update,mac_address=:mac_update,campus=:campus_update,observ=:observation_update WHERE id_machine=:id_update");
//*id
$registro->bindparam(':id_update', $id);
$registro->bindparam(':type_update', $type);
$registro->bindparam(':ip_update', $ip);
$registro->bindparam(':mac_update', $mac);
$registro->bindparam(':campus_update', $campus);
$registro->bindparam(':observation_update', $observa);

if ($registro->execute()) {
    return header("Location:table.php");
} else {
    return "error";
}

?>
