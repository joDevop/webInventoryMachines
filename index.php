<?php

include_once("accessLogin.php");

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/bb00059a3e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/styles.css" />

    <title>Inventario de Maquinas | Login</title>
    <link rel="icon" type="image/svg" href="img\ic_seo-and-web.svg" />
</head>

<body>

    <div class="box box_login shadow">
        <div class="header">
            <img src="img/ic_seo-and-web.svg">
        </div>

        <?php

        if (isset($message)) {
            echo '<div class="text-center mtop16"><label class="alert alert-danger text-center">' . $message . '</label></div>';
        }

        ?>

        <div class="inside">
            <form method="post">
                <label for="email">Correo Electrónico:</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fas fa-envelope"></i></div>
                    </div>
                    <input type="email" class="form-control" id="" name="email" aria-label="Username" aria-describedby="basic-addon1" value="jortega@viva1a.com.co">
                </div>

                <label for="password" class="mtop16">Password:</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fas fa-key"></i></div>
                    </div>
                    <input type="password" class="form-control" id="" name="password" aria-label="Username" aria-describedby="basic-addon1" value=".\jortega">
                </div>

                <input type="submit" name="login" class="btn btn-success mtop16" value="Acceder" />
            </form>

        </div>
    </div>

</body>

</html>