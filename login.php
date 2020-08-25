<?php
include("./config/connectionDb.php");

$data = $_POST;
$message = "";
//$password_encrypt = sha1($password);

if (isset($data["login"])) {

    if (empty($data["nickname"]) || empty($data["password"])) {
        $message = '<label>All field is required</label>';
        //echo $_SESSION['message'] = 'Email or password are required!';
    } else {
        $query = "SELECT *FROM table_user_tec WHERE nickname_tec = :nickname AND password_tec = :password";
        $statement = $conexion->prepare($query);
        $statement->execute(
            array(
                'nickname' => $data["nickname"],
                'password' => $data["password"]
            )
        );

        $count = $statement->rowCount();
        if ($count > 0) {
            $_SESSION["nickname"] = $data["nickname"];
            header("Location: table.php");
        } else {
            $message = '<label>Username OR Password is wrong</label>';
            //echo $_SESSION['message'] = 'Username OR Password is wrong!';

        }
    }
}
