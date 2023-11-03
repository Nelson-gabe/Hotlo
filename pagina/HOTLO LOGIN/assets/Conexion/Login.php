<?php

// (nombre servidor, usuario, contraseÃ±a, base de datos)
$conectar = mysqli_connect("localhost","root","","proyecto_2");
$login = "insert into datos(correo,contrasenia)
             values($correo,$contrasenia)";

mysql_query($conectar,$login);


?>