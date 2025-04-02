<?php 
session_start();
include_once("topo.php");?>
<link rel="stylesheet" href="../css/signUp.css">

<body>
    <?php include("mensagem.php"); ?>
    <a href="javascript:history.go(-1)" class="btn_back"><i class="fa-solid fa-circle-left"></i></a>
    <form action="processa.act.php" method="post" class="formMain">
        <h1 class="titulo">Cadastre-se</h1>
        <div class="labelInput">
            <label for="inome">Nome:</label>
            <input type="text" name="nome" id="inome" required class="inputUser">

        </div>
        <div class="labelInput">
            <label for="iemail">Email: </label>
            <input type="email" name="email" id="iemail" required class="inputUser">

        </div>
        <div class="labelInput">
            <label for="ipass">Crie uma senha: </label>
            <input type="password" name="senha" id="ipass" required class="inputUser">
        </div>
        <input type="submit" value="Finalizar Cadastro">
    </form>
    <script>
        const titulo = document.querySelector("h1");

        titulo.addEventListener("click", (e) =>{
            sweet_message("Titulo clicado com sucesso")
        })
    </script>
</body>
</html>