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

    $stmt = $conexion->prepare("SELECT ip_range,mac_address FROM table_machines WHERE ip_range = :ip");
    $stmt->bindParam(':ip', $ip);
    $stmt->execute();

    if($stmt->rowCount() > 0)
    {
    $_SESSION['status'] = "IP already exist '$ip'";
    return header("Location:table.php");
    } 
    else 
    {

if(file_exists($path . $rename_icon))
{
    //$store = $rename_icon;
    $_SESSION['status']= "image already exist '$rename_icon'";
        return header("Location:table.php");       
}
else
{
    $registro = $conexion->prepare("INSERT INTO table_machines(type_machine,manufacturer,model,serial,ram_slot_00,ram_slot_01,hard_drive,cpu,ip_range,mac_address,anydesk,campus,location,create_date,imagen,comment) 
        VALUES (:type,:manufacturer,:model,:serial,:ram_slot_00,:ram_slot_01,:hard_drive,:cpu,:ip,:mac,:anydesk,:campus,:location,:actual_date,:icon,:comment);");

    $registro->bindparam(':type', $type, PDO::PARAM_STR);
    $registro->bindparam(':manufacturer', $manufacturer, PDO::PARAM_STR);
    $registro->bindparam(':model', $model, PDO::PARAM_STR);
    $registro->bindparam(':serial', $serial, PDO::PARAM_STR);
    $registro->bindparam(':ram_slot_00', $ram_slot_00, PDO::PARAM_STR);
    $registro->bindparam(':ram_slot_01', $ram_slot_01, PDO::PARAM_STR);
    $registro->bindparam(':hard_drive', $hard_drive, PDO::PARAM_STR);
    $registro->bindparam(':cpu', $cpu, PDO::PARAM_STR);
    $registro->bindparam(':ip', $ip, PDO::PARAM_STR);
    $registro->bindparam(':mac', $mac, PDO::PARAM_STR);
    $registro->bindparam(':anydesk', $anydesk, PDO::PARAM_STR);
    $registro->bindparam(':campus', $campus, PDO::PARAM_STR);
    $registro->bindparam(':location', $location, PDO::PARAM_STR);
    $registro->bindparam(':actual_date', $actual_date, PDO::PARAM_STR);
    $registro->bindparam(':comment', $comment, PDO::PARAM_STR);
    $registro->bindparam(':icon', $icon);

    if ($registro->execute()) {
        move_uploaded_file($_FILES["icon"]["tmp_name"], $path . $rename_icon);
        //$_SESSION['success'] = "image was uploaded successfully!";
        //$conexion->commit();
        $conexion->null;
        return header("Location:table.php");
        exit;
    } else {
        $_SESSION['success'] = "uppps!... there was an error while uploading the image";
        $conexion->null;
        $conexion->rollBack();
        return header("Location:table.php");
        exit;
        
    }

}
}

?>