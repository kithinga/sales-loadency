<?php  

    include 'config.php';

    if (isset($_POST['edit-contact-status'])) {
        $s_status = $_POST['s_status'];
        $s_mc_number = $_POST['s_mc_number'];
        mysqli_query($conn,"UPDATE va2pow SET  s_status = '$s_status' WHERE s_mc_number = '$s_mc_number'");
    }
    header( 'Location:index.php' ) ;

?>