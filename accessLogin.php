<?php 
include_once("connectionPdoDbAndroid.php");

if(isset($_POST["login"])){
    if(empty($_POST["email"]) || empty($_POST["password"])){

        $_POST["password"] = md5($_POST("password"));

        $message = '<label>All fields are required</label>';
    }else{
        $query = "SELECT * FROM usuarios WHERE email = :email AND password = :password";
        $statement =  $conexion->prepare($query);
        $statement->execute(
            array(
                'email' => $_POST["email"],
                'password' => $_POST["password"]
            )
        );
        $count = $statement->rowCount();
        if($count > 0)
        {
            $_SESSION["email"] = $_POST["email"];
            header("location:table.php");
        }else{
            $message = '<label>Wrong Data</label>';
        }
    }
}

        //print json_encode($_SESSION);
        //$conexion=null;
