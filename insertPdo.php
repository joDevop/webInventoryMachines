<?php

include_once("./config/connectionDb.php");

$type = $_POST['type'];
$manufacturer = $_POST['fact'];
$model = $_POST['model'];
$serial = $_POST['serial'];
$ram_slot_00 = $_POST['ram-slot00'];
$ram_slot_01 = $_POST['ram-slot01'];
$hard_drive = $_POST['hard-drive'];
$cpu = $_POST['cpu'];
$ip = $_POST['ip'];
$mac = $_POST['mac'];
$anydesk = $_POST['anydesk'];
$campus = $_POST['campus'];
$location = $_POST['location'];
$comment = $_POST['comment'];

date_default_timezone_set('America/Bogota');
$actual_date = date("Y-m-d H:i:s");

$registro = $conexion->prepare("INSERT INTO table_machines(type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,campus,location,create_date,comment) 
        VALUES (:type,:manufacturer,:model,:serial,:ram_slot_00,:ram_slot_01,:hard_drive,:cpu,:ip,:mac,:anydesk,:campus,:location,:actual_date,:comment);");

$registro->bindparam(':type', $type);
$registro->bindparam(':manufacturer', $manufacturer);
$registro->bindparam(':model', $model);
$registro->bindparam(':serial', $serial);
$registro->bindparam(':ram_slot_00', $ram_slot_00);
$registro->bindparam(':ram_slot_01', $ram_slot_01);
$registro->bindparam(':hard_drive', $hard_drive);
$registro->bindparam(':cpu', $cpu);
$registro->bindparam(':ip', $ip);
$registro->bindparam(':mac', $mac);
$registro->bindparam(':anydesk', $anydesk);
$registro->bindparam(':campus', $campus);
$registro->bindparam(':location', $location);
$registro->bindparam(':actual_date', $actual_date);
$registro->bindparam(':comment', $comment);

if ($registro->execute()) {
    return header("Location:table.php");
} else {
    return "error";
}

?>
