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
$icon = $_FILES["icon"]['name'];

$rename_icon = md5(rand()) . '.' . $icon;
$path = "upload/$rename_icon";

date_default_timezone_set('America/Bogota');
$actual_date = date("Y-m-d H:i:s");

if(file_exists($path . $rename_icon))
{
    $store = $rename_icon;
    $_SESSION['status']= "image already exist '$store'";
    header('Location: table.php');    
    //validar ip si existe tambien    
}
else
{
    $registro = $conexion->prepare("INSERT INTO table_machines(type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,campus,location,create_date,imagen,comment) 
        VALUES (:type,:manufacturer,:model,:serial,:ram_slot_00,:ram_slot_01,:hard_drive,:cpu,:ip,:mac,:anydesk,:campus,:location,:actual_date,:icon,:comment);");

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
    $registro->bindparam(':icon', $icon);

    if ($registro->execute()) {
        move_uploaded_file($_FILES["icon"]["tmp_name"], $path . $rename_icon);
        //$_SESSION['success'] = "image was uploaded successfully!";
        return header("Location:table.php");
    } else {
        $_SESSION['success'] = "uppps!... there was an error while uploading the image";
        return header("Location:table.php");
    }

}

?>