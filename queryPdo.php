<?php

include_once("connectionPdoDbAndroid.php");

//$json = array();

$consulta = $conexion->query("SELECT id_machine,machine_detail,ip_range,mac_address,campus,create_date FROM berry_atril_machines ORDER BY id_machine DESC");
$machines = $consulta->fetchAll(PDO::FETCH_OBJ);

foreach ($machines as $row);
//$json['berry_atril_machines'][] = $machines;
        //echo json_encode($json);
        //print_r($machines);

?>