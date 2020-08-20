<?php
include_once("./config/connectionDb.php");

//por 'name' en html
$id = $_POST['id'];
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
$update_at = $_POST['update_at'];
$icon_img = $_FILES["icon"]['tmp_name'];
$location = $_POST['location'];
$comment = $_POST['comment'];

$path = "upload/";

$registro = $conexion->prepare("UPDATE table_machines SET type_machine=:type_update,manufacturer=:fact_update,model=:model_update,serial=:serial_update,ram_slot_00=:ramslot00_update,ram_slot_01=:ramslot01_update,hard_drive=:disk_update,cpu=:cpu_update,ip_range=:ip_update,mac_address=:mac_update,anydesk=:anydesk_update,campus=:campus_update,location=:location_update,update_at=:at_update_update,imagen=:icon_update,comment=:comment_update WHERE id_machine=:id_update");
//por 'id' en html
$registro->bindparam(':id_update', $id);
$registro->bindparam(':type_update', $type);
$registro->bindparam(':fact_update', $manufacturer);
$registro->bindparam(':model_update', $model);
$registro->bindparam(':serial_update', $serial);
$registro->bindparam(':ramslot00_update', $ram_slot_00);
$registro->bindparam(':ramslot01_update', $ram_slot_01);
$registro->bindparam(':disk_update', $hard_drive);
$registro->bindparam(':cpu_update', $cpu);
$registro->bindparam(':ip_update', $ip);
$registro->bindparam(':mac_update', $mac);
$registro->bindparam(':anydesk_update', $anydesk);
$registro->bindparam(':campus_update', $campus);
$registro->bindparam(':at_update_update', $update_at);
$registro->bindparam(':icon_update', $icon_img);
$registro->bindparam(':location_update', $location);
$registro->bindparam(':comment_update', $comment);

if ($registro->execute()) {
    move_uploaded_file($_FILES["icon"]["tmp_name"], $path .$_FILES["icon"]["tmp_name"]);
    return header("Location:table.php");
} else {
    return "error";
}

?>
