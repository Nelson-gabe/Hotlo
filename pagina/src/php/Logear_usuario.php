<?php
    include 'conexion.php';

    $correo = $post['correo'];
    $contrasenia = $post['contrasenia'];

    $verificar_login = mysqli_query($conectar, "SELECT *from usuarios WHERE correo_electronico= '$correo'
    and contrasenia= '$contrasenia'");

    if(mysqli_num_rows($verificar_login) > 0){
        echo '
            <script>
                alert("Bienvenido a nuestro sistema");
            </script>      
        
        ';
        header("location: ../pages/index.html");
        exit();
    }else{
        echo '
            <script>
                alert("Usuario o Contraseña incorrecta");
                window.location = "../pages/Login.html";
            </script>      
        ';
        exit();
    }
?>