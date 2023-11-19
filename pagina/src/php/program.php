<?php
    $cedula=$_POST["cedula"];
    $nombre=$_POST["nombre"];
    $apellido = $_POST["apellido"];

    // (nombre servidor, usuario, contraseña, base de datos)
    $conectar = mysqli_connect("localhost","root","","prueba");
    $insertar = "insert into datos(cedula,nombre,apellido)
                 values($cedula,'$nombre','$apellido')";

    mysqli_query($conectar,$insertar);
    
    $consultar = "select *from datos";
    $resultado = mysqli_query($conectar,$consultar); //devuelve un arreglo

    // foreach($resultado as $resul){
    //     echo $resul["cedula"]," ", $resul["nombre"]," ", $resul["apellido"]," ";
    //     echo "<br>";
    // }

    echo "<table border='|'>";
    echo "<tr>";
    echo "<th> Cedula </th>";
    echo "<th> Nombre </th>";
    echo "<th> Apellido </th>";
    echo "</tr>";

    
    foreach($resultado as $resul){
        echo "<tr>";
        echo "<td>". $resul["cedula"] . "</td>";
        echo "<td>". $resul["nombre"]. "</td>";
        echo "<td>". $resul["apellido"]. "</td>";
        echo "</tr>";
    }


    

    echo "<br>";
    echo "<br>";
    echo "<br>";
    echo "<br>";

    echo "<a href='index.html'>Volver al formulario</a>";
    
?>