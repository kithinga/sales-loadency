<?php
// include mysql database configuration file
include_once 'config.php';

if (isset($_POST['submit']))
{
    // Allowed mime types
    $fileMimes = array(
        'text/x-comma-separated-values',
        'text/comma-separated-values',
        'application/octet-stream',
        'application/vnd.ms-excel',
        'application/x-csv',
        'text/x-csv',
        'text/csv',
        'application/csv',
        'application/excel',
        'application/vnd.msexcel',
        'text/plain'
    );

    // Validate whether selected file is a CSV file
    if (!empty($_FILES['file']['name']) && in_array($_FILES['file']['type'], $fileMimes))
    {

            // Open uploaded CSV file with read-only mode
            $csvFile = fopen($_FILES['file']['tmp_name'], 'r');

            // Skip the first line
            fgetcsv($csvFile);

            // Parse data from CSV file line by line
             // Parse data from CSV file line by line
            while (($getData = fgetcsv($csvFile, 10000, ",")) !== FALSE)
            {
                // $client_name = "qsada90";
                // $s_email = "236765z@gmail.com";
                $cid = $getData[0];
                $s_company_name = $getData[1];
                $street_address = $getData[2];
                $s_phone_number = $getData[3];
                $s_mc_number = $getData[4];
                $pow = $getData[5];
                $client_name = $getData[6];
                $s_email = $getData[7];
                $s_status = $getData[8];
            
                // If user already exists in the database with the same email
                $query = "SELECT s_mc_number FROM va2pow WHERE s_mc_number = '" . $getData[4] . "'";

                $check = mysqli_query($conn, $query);

                if ($check->num_rows > 0)
                {
                    mysqli_query($conn, "UPDATE va2pow SET cid = '" . $cid . "', s_company_name = '" . $s_company_name . "', street_address = '" . $street_address . "',  WHERE s_mc_number = '" . $s_mc_number . "'");
                }
                else
                {
                     mysqli_query($conn, "INSERT INTO va2pow (cid,s_company_name, street_address, s_phone_number,s_mc_number, pow, client_name, s_email,s_status) VALUES ( '" . $cid . "', '" . $s_company_name . "', '" . $street_address . "', '" . $s_phone_number . "','" . $s_mc_number . "','" . $pow . "', '" . $client_name . "', '" . $s_email . "', '" . $s_status . "')");

                }
            }

            // Close opened CSV file
            fclose($csvFile);

            header("Location: index.php");
        
    }
    else
    {
        echo "Please select valid file";
    }
}