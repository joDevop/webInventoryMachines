<?php 
include_once("connectionPdoDbAndroid.php");

if(isset($_POST["login"])){
    if(empty($_POST["email"]) || empty($_POST["password"])){

        //$_POST["password"] = md5($_POST("password"));

        $message = '<label>All fields are required</label>';
    }else{
        $query = "SELECT *FROM table_user_tec WHERE email_tec = :email AND password_tec = :password";
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
            $message = '<label>Email o contraseña son erroneos!</label>';
        }
    }
}

        //print json_encode($_SESSION);
        //$conexion=null;
        ?>
