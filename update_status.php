<?php  
    include 'config.php';
    if (isset($_POST['edit-contact-status'])) {
        $s_status = $_POST['s_status'];
        $s_mc_number = $_POST['s_mc_number'];
        $times_called = $_POST['times_called'];
        $s_phone_number = $_POST['s_phone_number'];
        $status_comments = $_POST['status_comments'];
        $pow = $_POST['pow'];
        $now = date('Y-m-d H:i:s');
        $last_changed = $now;
        $caller_name = $_SESSION['name'];
   
        // $tally_id = $_POST['tally_id'];
        // $name = $_POST['name'];
        mysqli_query($conn, "UPDATE va2pow SET  s_status = '$s_status', times_called = '$times_called', caller_name = '$caller_name', last_changed = '$last_changed', status_comments = '$status_comments' WHERE s_mc_number = '$s_mc_number'");
        // Inserting into tally table after update
        mysqli_query($conn,"INSERT INTO calls_tally(s_status, s_mc_number, caller_name, s_phone_number, pow, status_comments)VALUES('$s_status','$s_mc_number','$caller_name','$s_phone_number','$pow','$status_comments')");
    }
    header( 'Location:sales_assigned.php' ) ;


    // EDIT MAYBE CONTACT STATUS
    if (isset($_POST['maybe-edit-contact-status'])) {
        $tally_id = $_POST['tally_id'];
        $s_status = $_POST['s_status'];
        $s_mc_number = $_POST['s_mc_number'];
        $times_called = $_POST['times_called'];
        $s_phone_number = $_POST['s_phone_number'];
        $status_comments = $_POST['status_comments'];
        $pow = $_POST['pow'];
        $now = date('Y-m-d H:i:s');
        $last_changed = $now;
        $caller_name = $_SESSION['name'];
        // $name = $_POST['name'];
        mysqli_query($conn, "UPDATE calls_tally SET  s_status = '$s_status', times_called = '$times_called', caller_name = '$caller_name', last_changed = '$last_changed', status_comments = '$status_comments' WHERE tally_id = '$tally_id'");

    }
    header( 'Location:sales_dashboard.php' ) ;
?>