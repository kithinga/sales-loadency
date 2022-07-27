<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
    header('Location: index.php');
    // echo "<script type='text/javascript'>document.location.href='login.php';</script>";
    exit;
}

if ($_SESSION['user_role'] == 'user') { ?>

    <?php $active_digit = null;
    ?>

    <body>




        <script>
            AOS.init();
        </script>
        <script src="custom.js"></script>
    </body>
<?php } else {
    header('Location: index.php');
}
?>