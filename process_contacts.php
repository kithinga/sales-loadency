
<!-- CODE USED TO INSERT CONTACTS INTO DB -->
<?php  
    include 'config.php';
    if (isset($_POST['upload_contacts'])) {

        $cid = $POST['cid'];
        $s_company_name = $POST['s_company_name'];
        $street_address = $POST['street_address'];
        $s_phone_number = $POST['s_phone_number'];
        $s_mc_number = $POST['s_mc_number'];
        $pow = $POST['pow'];
        $client_name = $POST['client_name'];
        $s_email = $POST['s_email'];
        $s_status = $POST['s_status'];
        $con_digit = $POST['con_digit'];
   
         // If contact already exists in the database with the same email
         $query = "SELECT s_mc_number FROM va2pow WHERE s_mc_number = '" . $s_mc_number  . "'";

         $check = mysqli_query($conn, $query);

         if ($check->num_rows > 0)
         {
             mysqli_query($conn, "UPDATE va2pow SET cid = '" . $cid . "', s_company_name = '" . $s_company_name . "', street_address = '" . $street_address . "',  WHERE s_mc_number = '" . $s_mc_number . "'");
         }
         else
         {
              mysqli_query($conn, "INSERT INTO va2pow (cid, s_company_name, street_address, s_phone_number,s_mc_number, pow, client_name, s_email,s_status,con_digit) VALUES ( '" . $cid . "', '" . $s_company_name . "', '" . $street_address . "', '" . $s_phone_number . "','" . $s_mc_number . "','" . $pow . "', '" . $client_name . "', '" . $s_email . "', '" . $s_status . "', '" .$con_digit. "')");
         }
    }
    $_SESSION['sess_digit'] = $con_digit;
    header( 'Location:upload_form.php' ) ;

?>