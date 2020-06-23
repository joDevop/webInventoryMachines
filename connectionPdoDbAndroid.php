<?php
//session_start();
$servername = "localhost";
$username = "root";
$password = "";

try {
    $conexion = new PDO("mysql:host=$servername;dbname=db_inventor_machines", $username, $password);

    // set the PDO error mode to exception
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "<script>alert('Connected successfully')</script>";
    }catch(Exception $e){
		
    die("Error " . $e->getMessage());
    echo "Linea del error " . $e->getLine();
}

return $conexion;

//catch(PDOException $e)
  //  {
    //echo "<script>alert('Connection failed: ')</script>" . $e->getMessage();
    //}

?>

