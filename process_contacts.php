
<!-- CODE USED TO INSERT CONTACTS INTO DB -->
<?php  
    include 'config.php';
    $s_company_name = "";
    $street_address =  "";
    $s_phone_number =  "";
    $s_mc_number =  "";
    $pow =  "";
    $client_name =  "";
    $s_email =  "";
    $s_status =  "";
    $con_digit =  "";

    if (isset($_POST['upload_contacts'])) {
    
        $s_company_name = $_POST['s_company_name'];
        $street_address = $_POST['street_address'];
        $s_phone_number = $_POST['s_phone_number'];
        $s_mc_number = $_POST['s_mc_number'];
        $pow = $_POST['pow'];
        $client_name = $_POST['client_name'];
        $s_email = $_POST['s_email'];
        // $s_status = $POST['s_status'];
        $con_digit = $_POST['con_digit'];
   
        mysqli_query($conn, "INSERT INTO va2pow (s_company_name, street_address, s_phone_number,s_mc_number, pow, client_name, s_email,con_digit) VALUES ('$s_company_name', '$street_address','$s_phone_number','$s_mc_number','$pow','$client_name','$s_email','$con_digit')"); 
    }
    $_SESSION['sess_digit'] = $con_digit;
    header( 'Location:upload_form.php' ) ;

?>