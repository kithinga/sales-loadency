<?php  

    include 'config.php';

    if (isset($_POST['edit-contact-status'])) {
        $s_status = $_POST['s_status'];
        $s_mc_number = $_POST['s_mc_number'];
        $times_called = $_POST['times_called'];
        $now = date('Y-m-d H:i:s');
        $last_changed = $now;
      
        mysqli_query($conn, "UPDATE va2pow SET  s_status = '$s_status', times_called = '$times_called', last_changed = '$last_changed' WHERE s_mc_number = '$s_mc_number'");
    }
    
    header( 'Location:sales_assigned.php' ) ;

?>