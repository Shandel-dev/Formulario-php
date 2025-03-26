<?php 
session_start();
include_once("topo.php");
include_once("mensagem.php");?>
<link rel="stylesheet" href="../css/signUp.css">

<body>
    <h1>Cadastre-se</h1>
    <form action="processa.act.php" method="post">
        <label for="inome">Nome:</label>
        <input type="text" name="nome" id="inome" required>

        <label for="iemail">Email: </label>
        <input type="email" name="email" id="iemail" required>
        
        <label for="ipass">Crie uma senha: </label>
        <input type="password" name="senha" id="ipass" required>

        <input type="submit" value="Finalizar cadastro">
    </form>
    <script>
        const titulo = document.querySelector("h1");

        titulo.addEventListener("click", (e) =>{
            sweet_message("Titulo clicado com sucesso")
        })
    </script>
</body>
</html>