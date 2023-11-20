<?php

    include 'conexion.php';

    $nombre = $post['nombre'];
    $correo = $post['correo'];
    $usuario = $post['usuario'];
    $contrasenia = $post['contrasenia'];
    $contrasenia = hash('sha512', $contrasenia); //encriptar contraseña

    $insertar = "insert into usuarios(nombre,correo_electronico,usuario,contrasenia)
                 values($nombre,'$correo','$usuario','$contrasenia')";

    $ejecutar = mysqli_query($conectar, $insertar);

    //evitar repitir correo de la base de datos
    $consulta_correo = "SELECT *from usuarios WHERE correo_electronico ='$correo' ");
    $verificar_correo = mysqli_query($conectar, $consulta_correo);

    // verificar correo
    if(mysqli_num_rows($verificar_correo) > 0){
        echo '
            <script>
                alert("Correo Electronico esta en uso");
                window.location = "../pages/Login.html";
            </script>      
        
        ';
        exit();
    }

    //evitar repitir usuario de la base de datos
    $consulta_usuario = "SELECT *from usuarios WHERE usuario ='$usuario' ");
    $verificar_usuario = mysqli_query($conectar, $consulta_usuario);

    // verificar correo
    if(mysqli_num_rows($verificar_usuario) > 0){
        echo '
            <script>
                alert("Usuario esta en uso, crea otro");
                window.location = "../pages/Login.html";
            </script>      
        
        ';
        exit();
    }

    // notificacion alertas
    if($ejecutar){
        echo '
            <script>
                alert("Usuario Registrado Correctamente");
                window.location = "../pages/index.html";
            </script>      
        
        ';
    }else{
        echo '
            <script>
                alert("No se logro Registrar usuario");
                window.location = "../pages/index.html";
            </script>      
        
        ';
    }

    mysqli_close($conectar);
?>