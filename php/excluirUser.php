<?php
    require_once("connect.php");
    @session_start();

    $id = $_GET["id"];
    $msg = "";
    $query = "SELECT * FROM `tbl_usuarios` WHERE `id_user` = '$id'";
    $usuarios = mysqli_query($conn, $query);
    $user = mysqli_fetch_assoc($usuarios);

    $query_delete = "DELETE FROM `tbl_usuarios` WHERE `id_user` = '$id';";
    
    if(mysqli_query($conn, $query_delete)){
        $msg = "Usuário <span>" . $user['nome'] . "</span> excluído com sucesso!";
    } else{
        $msg = "Falha na exclusão do usuário " . mysqli_error($conn);
    }
    $_SESSION["msg"] = $msg;
    header("location: listar.php");
    exit();
?>