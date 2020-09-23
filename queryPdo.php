<?php

include_once("./config/connectionDb.php");

$query00 = $conexion->query("SELECT id_machine,type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,location,comment,create_date,update_at,imagen,id,campus_v1a 
FROM table_machines INNER JOIN table_campus_v1a WHERE table_campus_v1a.id = table_machines.campus_id ORDER BY id_machine DESC");
$machines = $query00->fetchAll(PDO::FETCH_OBJ);
$total = $query00->rowCount();
//echo $total;
foreach ($machines as $row);


$query01 = $conexion->query("SELECT id,campus_v1a FROM table_campus_v1a");
$allCampus =$query01->fetchAll(PDO::FETCH_OBJ);
foreach ($allCampus as $campu);

//crear otra consulta  INNER JOIN donde obtenga el valor de la sede para mostrar en el select de modal-update

$conexion = null;


?>

