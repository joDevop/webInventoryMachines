<?php 
include("./config/connectionDb.php");

$data = $_POST;

if(isset($data['login'])) {

    $email = $data['email'];
    $password = $data['password'];

    if(empty($email) || empty($password)){
        $_SESSION['message'] = 'Email or password are required!';
        header("location: index.php");
    }else{
        $statement = $conexion->prepare('SELECT * FROM table_user_tec WHERE email_tec = :email_tec');
        $statement->execute([':email_tec' => $email]);
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);

if (empty($result)) {
    die('No such user with the username!');
    //$_SESSION['message'] = 'No such user with the username!';
    //header("location: index.php");
}

$user = array_shift($result);
       //print_r($user);

//_tec => campos en la bd
if ($user['email_tec'] === $email && $user['password_tec'] === $password) {
    //echo 'You have been succesfully logged in!';
    $_SESSION['email_tec'] = $user['email_tec'];
    $_SESSION['name_tec'] = $user['name_tec'];
    $_SESSION['last_name_tec'] = $user['last_name_tec'];
    $_SESSION['position_job'] = $user['position_job'];
    $_SESSION['campus_tec'] = $user['campus_tec'];
    header("location:table.php");
}else {
    $_SESSION['message'] = 'Incorrect username or password!';
    header("location: index.php");
}

    }
    
}

?>


