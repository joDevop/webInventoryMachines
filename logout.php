<?php
include("./config/connectionDb.php");
session_start();
$nombreUsuario = $_SESSION['nombre_usuario'];

if (isset($_POST['logout-btn'])) {
    date_default_timezone_set('America/Bogota');
    $lastLogout = date("Y-m-d H:i:s");

    try {
        $logoutUser=$conexion->prepare("UPDATE table_user_tec SET status=0, time_logout=:lastLogout WHERE nickname_tec=:nombre_usuario");
        $logoutUser->bindParam(':lastLogout', $lastLogout, PDO::PARAM_STR);
        $logoutUser->bindParam(':nombre_usuario', $nombreUsuario, PDO::PARAM_STR);
        $logoutUser->execute();

        session_unset();
        session_destroy();

        header("Location: index.php");

    } 
    catch (PDOException $error) 
    {
        print 'ERROR: ' . $error->getMessage();
    }
}

//------------------DESCONECTARSE MEDIANTE TIEMPO INACTIVO---------------///
//Comprobamos si esta definida la sesión 'tiempo'.
if (isset($_SESSION['tiempo'])) {
    //Variable que define el tiempo de inactividad en segundos
    $inactivo = 1800;
    //Calcular el tiempo de inactividad
    $vida_session = time() - $_SESSION['tiempo'];
    //Comprobar si el tiempo de vida de la sesión es mayor a tiempo de inactividad
    if ($vida_session > $inactivo) {
        date_default_timezone_set('America/Bogota'); //OBTENER FECHA Y HORA ACTUAL
        $lastLogout = date("Y-m-d H:i:s");
        $logoutUser = $conexion->prepare("UPDATE table_user_tec SET status=0, time_logout=:lastLogout WHERE nickname_tec=:nombre_usuario");
        $logoutUser->bindParam(':lastLogout', $lastLogout, PDO::PARAM_STR);
        $logoutUser->bindParam(':nombre_usuario', $nombreUsuario, PDO::PARAM_STR);
        $logoutUser->execute();
        //Removemos sesión.
        session_unset();
        //Destruimos sesión.
        session_destroy();
        //Redirigimos pagina.
        header("Location: index.php");
        exit();
    }
} else {
    //Activamos sesion tiempo.
    $_SESSION['tiempo'] = time();
}
