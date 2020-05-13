<?php

include_once("connectionPdoDbAndroid.php");

$type = $_POST['type'];
$ip = $_POST['ip'];
$mac = $_POST['mac'];
$campus = $_POST['campus'];

date_default_timezone_set('America/Bogota');
$actual_date = date("Y-m-d H:i:s");

$registro = $conexion->prepare("INSERT INTO berry_atril_machines(machine_detail,ip_range,mac_address,campus,create_date) 
        VALUES (:type,:ip,:mac,:campus,:actual_date);");

$registro->bindparam(':type', $type);
$registro->bindparam(':ip', $ip);
$registro->bindparam(':mac', $mac);
$registro->bindparam(':campus', $campus);
$registro->bindparam(':actual_date', $actual_date);

if ($registro->execute()) {
    return header("Location:index.php");
} else {
    return "error";
}

?>
