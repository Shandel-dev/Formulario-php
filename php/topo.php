<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario em PHP</title>
    <link rel="stylesheet" href="../css/root.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<script>
    function sweet_message(msg){
        tempo = msg.length / 6 * 750
        Swal.fire({
            position: "top-end",
            title: "Título",
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
</script>
