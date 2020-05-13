<?php

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conexion = new PDO("mysql:host=$servername;dbname=bd_inventory_machines_viva1a", $username, $password);

    // set the PDO error mode to exception
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "<script>alert('Connected successfully')</script>";
    }
catch(PDOException $e)
    {
    echo "<script>alert('Connection failed: ')</script>" . $e->getMessage();
    }

?>