<?php

include_once("./config/connectionDb.php");

//$json = array();

$query00 = $conexion->query("SELECT id_machine,type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,campus,location,comment,create_date,update_at,imagen FROM table_machines ORDER BY id_machine DESC");
$machines = $query00->fetchAll(PDO::FETCH_OBJ);
$total = $query00->rowCount();
//echo $total;

foreach ($machines as $row);

$query01 = $conexion->query("SELECT id,nickname_tec,campus_tec,position_job FROM table_user_tec");
$tec_users = $query01->fetchAll(PDO::FETCH_OBJ);

foreach ($tec_users as $row);

//$query03 = $conexion->query("SELECT count(1) FROM table_user_tec");
//echo $query03->fetchColumn();

?>