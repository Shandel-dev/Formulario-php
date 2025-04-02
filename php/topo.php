<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario em PHP</title>
    <link rel="stylesheet" href="../css/root.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>

<script>
    function sweet_message(msg) {
        tempo = msg.length / 6 * 750
        Swal.fire({
            position: "top-end",
            title: "<i class='fa-solid fa-message'></i> Mensagem...",
            html: `${msg}`,
            showConfirmButton: false,
            timer: tempo,
            backdrop: false,
            timerProgressBar: true,
            showCloseButton: true,
            theme: "auto",
            customClass: {
                popup: 'swat-message_popup',
                timerProgressBar: 'swat-message_timer'
            },
        })
    }

    function sweet_confirm(msg, id) {
        Swal.fire({

            title: "Deletar?",
            html: `${msg}`,
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Sim, delete este registro!",
            backdrop: false,
            customClass: {
                popup: 'swat-message_popup',
            },
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = "excluirUser.php?id=" + id;
            }
        });
    }
</script>