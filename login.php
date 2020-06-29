<?php 
include_once("connectionPdoDbAndroid.php");

$data = $_POST;

if (empty($data['email']) || empty($data['password'])) {
    die('Email or password are required!');
}

$email = $data['email'];
$password = $data['password'];

$statement = $conexion->prepare('SELECT * FROM table_user_tec WHERE email_tec = :email_tec');
$statement->execute([':email_tec' => $email]);
$result = $statement->fetchAll(PDO::FETCH_ASSOC);

//print_r($result);

if (empty($result)) {
    die('No such user with the username!');
}

$user = array_shift($result);
//print_r($user);

//_tec => campos en la bd
if ($user['email_tec'] === $email && $user['password_tec'] === $password) {
    echo 'You have been succesfully logged in!';
}else {
die('Incorrect username or password!');
}


