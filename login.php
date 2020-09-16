<?php
include("./config/connectionDb.php");

$data = $_POST;
$message = "";

//$password_encrypt = sha1($password);

if (isset($data["login"])) {

    $nickname_log=$data['nickname'];
    $password_log=$data['password'];

        $queryUser = $conexion->prepare("SELECT *FROM table_user_tec WHERE nickname_tec =:nickname_log AND password_tec =:password_log");
        $queryUser->bindParam(':nickname_log', $nickname_log, PDO::PARAM_STR);
        $queryUser->bindParam(':password_log', $password_log, PDO::PARAM_STR);
        $queryUser->execute();
        
        if ($queryUser->rowCount() > 0) //si la query me arroja registro mayor a 0
        {
            date_default_timezone_set('America/Bogota');
            $lastLogin=date("Y-m-d H:i:s");
            $queryUpdate=$conexion->prepare("UPDATE table_user_tec SET status=1, time_login=:lastLogin WHERE nickname_tec=:nickname_log");
            $queryUpdate->bindParam(':lastLogin', $lastLogin, PDO::PARAM_STR);
            $queryUpdate->bindParam(':nickname_log', $nickname_log, PDO::PARAM_STR);
            $queryUpdate->execute();

            header("Location: table.php");

            $infoUser = $queryUser->fetch(PDO::FETCH_ASSOC);
            session_start();
            $_SESSION['nombre_usuario']=$infoUser['nickname_tec'];
            $_SESSION['id_usuario'] = $infoUser['id_tec'];

        } else {
            $message = '<label>Username OR Password is wrong</label>';
            //echo $_SESSION['message'] = 'Username OR Password is wrong!';

        }
 }  

?>
