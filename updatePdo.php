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
//$icon_img = $_FILES["icon"]['tmp_name'];
$location = $_POST['location'];
$comment = $_POST['comment'];

$path = "upload/";

$update_data = $conexion->prepare("UPDATE table_machines SET type_machine=:type_update,manufacturer=:fact_update,model=:model_update,serial=:serial_update,ram_slot_00=:ramslot00_update,ram_slot_01=:ramslot01_update,hard_drive=:disk_update,cpu=:cpu_update,ip_range=:ip_update,mac_address=:mac_update,anydesk=:anydesk_update,campus=:campus_update,location=:location_update,update_at=:at_update_update,comment=:comment_update WHERE id_machine=:id_update");
//por 'id' en html
$update_data->bindparam(':id_update', $id);
$update_data->bindparam(':type_update', $type);
$update_data->bindparam(':fact_update', $manufacturer);
$update_data->bindparam(':model_update', $model);
$update_data->bindparam(':serial_update', $serial);
$update_data->bindparam(':ramslot00_update', $ram_slot_00);
$update_data->bindparam(':ramslot01_update', $ram_slot_01);
$update_data->bindparam(':disk_update', $hard_drive);
$update_data->bindparam(':cpu_update', $cpu);
$update_data->bindparam(':ip_update', $ip);
$update_data->bindparam(':mac_update', $mac);
$update_data->bindparam(':anydesk_update', $anydesk);
$update_data->bindparam(':campus_update', $campus);
$update_data->bindparam(':at_update_update', $update_at);
//$update_data->bindparam(':icon_update', $icon_img);
$update_data->bindparam(':location_update', $location);
$update_data->bindparam(':comment_update', $comment);

if ($update_data->execute()) {
    //move_uploaded_file($_FILES["icon"]["tmp_name"], $path .$_FILES["icon"]["tmp_name"]);
    $conexion->null;
    return header("Location:table.php");
    exit;
} else {
    $conexion->null;
    return "error";
    exit;
}
