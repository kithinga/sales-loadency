<?php  
    include 'config.php';
    if (isset($_POST['edit-contact-status'])) {
        $s_status = $_POST['s_status'];
        $voice_mail = $_POST['voice_mail'];
        $client_name = $_POST['client_name'];
        $s_company_name = $_POST['s_company_name'];
        $s_mc_number = $_POST['s_mc_number'];
        $times_called = $_POST['times_called'];
        $s_phone_number = $_POST['s_phone_number'];
        $status_comments = $_POST['status_comments'];
        $street_address = $_POST['street_address'];
        $pow = $_POST['pow'];
        $now = date('Y-m-d H:i:s');
        $last_changed = $now;
        $caller_name = $_SESSION['name'];
        $s_email = $_POST['s_email'];
        $con_digit = $_POST['con_digit'];
   
        mysqli_query($conn, "UPDATE va2pow SET  s_status = '$s_status', times_called = '$times_called', last_changed = '$last_changed', status_comments = '$status_comments' WHERE s_mc_number = '$s_mc_number'");

        // Inserting into calls tally table after update
        mysqli_query($conn,"INSERT INTO calls_tally(voice_mail,street_address,times_called, s_company_name, client_name,s_status, s_mc_number, caller_name, s_phone_number, pow, status_comments,s_email)VALUES('$voice_mail','$street_address','$times_called','$s_company_name','$client_name','$s_status','$s_mc_number','$caller_name','$s_phone_number','$pow','$status_comments','$s_email')");
    }
    $_SESSION['sess_digit'] = $con_digit;
    header( 'Location:sales_assigned.php' ) ;

    // EDIT MAYBE CONTACT STATUS
    if (isset($_POST['maybe-edit-contact-status'])) {
        $tally_id = $_POST['tally_id'];
        $s_status = $_POST['s_status'];
        $s_mc_number = $_POST['s_mc_number'];
        $times_called = $_POST['times_called'];
        $s_phone_number = $_POST['s_phone_number'];
        $s_email = $_POST['s_email'];
        $status_comments = $_POST['status_comments'];
        $pow = $_POST['pow'];
        $now = date('Y-m-d H:i:s');
        $last_changed = $now;
        $caller_name = $_SESSION['name'];
        $con_digit = $_POST['con_digit']; 
     
        mysqli_query($conn, "UPDATE calls_tally SET s_email = '$s_email', s_status = '$s_status', times_called = '$times_called', caller_name = '$caller_name', last_changed = '$last_changed', status_comments = '$status_comments' WHERE tally_id = '$tally_id'");
        if($current_page = 'maybe_page'){
            header( 'Location:maybe.php' );
        }
    }
 
?>