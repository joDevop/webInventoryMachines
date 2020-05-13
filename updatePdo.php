<?php

include_once("connectionPdoDbAndroid.php");
//*name
$id = $_POST['id'];
$type = $_POST['type'];
$ip = $_POST['ip'];
$mac = $_POST['mac'];
$campus = $_POST['campus'];

$registro = $conexion->prepare("UPDATE berry_atril_machines SET machine_detail=:type_update,ip_range=:ip_update,mac_address=:mac_update,campus=:campus_update WHERE id_machine=:id_update");
//*id
$registro->bindparam(':id_update', $id);
$registro->bindparam(':type_update', $type);
$registro->bindparam(':ip_update', $ip);
$registro->bindparam(':mac_update', $mac);
$registro->bindparam(':campus_update', $campus);

if ($registro->execute()) {
    return header("Location:index.php");
} else {
    return "error";
}

?>
