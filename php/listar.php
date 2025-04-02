<?php include_once("topo.php"); ?>
<link rel="stylesheet" href="../css/listar.css">

<body>
    <main id="pageMain">
        <h1>Lista de usuários cadastrados</h1>
        <div class="containerProfiles">
            <?php
            require_once("connect.php");
            $query = "SELECT * FROM `tbl_usuarios`
                ORDER BY `nome`;";

            $usuarios = mysqli_query($conn, $query);
            while ($user = mysqli_fetch_assoc($usuarios)) {
            ?>
                <div class="profile">
                    <i class="fa-solid fa-face-smile"></i>
                    <h2><?php echo $user["nome"]; ?></h2>
                    <p><?php echo $user["email"]; ?></p>
                    <a href="javascript:sweet_message('Senha do Usuário em hash: <br><span><?php echo $user['senha']; ?></span>')">Senha?</a>
                    <a href="javascript:sweet_confirm('Deseja deletar o usuário <?php echo $user['nome'];?> ?', <?php echo $user['id_user'];?>)">Excluir Usuário</a>
                </div>
            <?php
            }
            ?>
        </div>
    </main>
    <script>
        function excluirUser(id) {
            alert("Id do usuário: " + id);
        }
    </script>
</body>

</html>