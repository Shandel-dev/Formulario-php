<?php include_once("topo.php"); 
@session_start();?>
<link rel="stylesheet" href="../css/index.css">
<body>
    <?php include("mensagem.php"); ?>
    <h1>PÁGINA INICIAL</h1>
    <main id="pageMain">
        <a href="signUp.php">
            <i class="fa-regular fa-user"></i>
            <p>Cadastrar</p>
        </a>
        <a href="listar.php">
        <i class="fa-solid fa-database"></i>
        <p>Lista de Usuários</p>
        </a>
    </main>
</body>

</html>