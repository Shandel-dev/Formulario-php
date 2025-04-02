<?php
    define("SERVER", 'localhost');
    define("USUARIO", 'root');
    define("SENHA", '');
    define("DATABASE", 'db_formPw');
    
    $conn = mysqli_connect(SERVER, USUARIO, SENHA, DATABASE);
    mysqli_query($conn, "SET NAMES UTF8");
?>