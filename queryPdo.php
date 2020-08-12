<?php

include_once("./config/connectionDb.php");

//$json = array();

$consulta = $conexion->query("SELECT id_machine,type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,campus,location,comment,create_date,update_date FROM table_machines ORDER BY id_machine DESC");
$machines = $consulta->fetchAll(PDO::FETCH_OBJ);

foreach ($machines as $row);
//$json['berry_atril_machines'][] = $machines;
        //echo json_encode($json);
        //print_r($machines);

?>