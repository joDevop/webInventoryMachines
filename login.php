<?php 
include("./config/connectionDb.php");

$data = $_POST;

if(!empty($data)) {

    $email = mysqli_real_escape_string($conexion,$data['email']);
    $password = mysqli_real_escape_string($conexion,$data['password']);
    $password_encrypt = sha1($password);

    $sql = "SELECT id FROM table_user_tec WHERE email_tec = '$email' AND password_tec = '$password' ";

    $result = $conexion->query($sql);
    $rows = $result->num_rows;
    if($rows > 0) {
        $row = $result->FETCH_ASSOC();
        $_SESSION['id_tec'] = $row["id"];
        header("Location: table.php");
    }else {
        echo $_SESSION['message'] = 'Email or password are required!';
        header("location: index.php");
    }
}

?>
