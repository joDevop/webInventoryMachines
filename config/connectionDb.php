<?php
// <development db> //
$servername = "localhost";
$username = "webmaster@inventor";
$password = "1143434718";

try {
    $conexion = new PDO("mysql:host=$servername;dbname=db_inventor_machines", $username, $password);

    // set the PDO error mode to exception
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "<script>alert('Connected successfully')</script>";
} catch (Exception $e) {

    die("Error " . $e->getMessage());
    echo "Linea del error " . $e->getLine();
}

return $conexion;
