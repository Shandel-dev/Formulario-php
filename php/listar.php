<?php include_once("topo.php"); ?>
<link rel="stylesheet" href="../css/listar.css">

<body>
    <a href="javascript:history.go(-1)" class="btn_back"><i class="fa-solid fa-circle-left"></i></a>
    <?php include_once("mensagem.php");?>
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
                    <a href="javascript:sweet_message('Senha do Usuário em hash: <br><span><?php echo $user['senha']; ?></span>')" style="background-color: #FC9E4F;">Senha?</a>
                    <a href="javascript:sweet_confirm('Deseja deletar o usuário <span><?php echo $user['nome'];?></span> ?', <?php echo $user['id_user'];?>)" style="background-color: #F4442E;">Excluir Usuário</a>
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