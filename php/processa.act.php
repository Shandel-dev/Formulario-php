<?php

@session_start();
require_once("connect.php");

$email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL);
$msg = "";
$pagDestino = "index.php";

if(verificarEmail($conn, $email)){
    $nome = filter_input(INPUT_POST, "nome", FILTER_SANITIZE_SPECIAL_CHARS);
    $senha = $_POST['senha'];
    $senha_hash = password_hash($senha, PASSWORD_BCRYPT);
    
    list($msg, $pagDestino) = inserirDados($conn, $nome, $email, $senha_hash);
}else{
    $msg = "Email já existente!";
    $pagDestino = "signUp.php";
}

function verificarEmail($connect, $email){
    $smt = $connect->prepare("SELECT * FROM `tbl_usuarios` WHERE `email` = ?");
    $smt->bind_param("s", $email);
    $smt->execute();
    $resul = $smt->get_result();

    if($resul->num_rows == 0){
        return true;
    }else{
        return false;
    }
}

function inserirDados($connect, $nome, $email, $senha){
    $query = "INSERT INTO `tbl_usuarios`
    (`nome`, `email`, `senha`) VALUES
    ('$nome', '$email', '$senha');";

    if(mysqli_query($connect, $query)){
        return ["Usuário <span>" . $nome . "</span> cadastrado com sucesso!", "index.php"];
    } else{
        return ["Falha ao cadastrar!", "signUp.php"];
    }

}
$_SESSION["msg"] = $msg;
header("location: $pagDestino");
exit();
?>