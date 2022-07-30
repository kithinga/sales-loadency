<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>
        I will make it
    </h1>
</body>
</html>

// If contact already exists in the database with the same email
         $query = "SELECT s_mc_number FROM va2pow WHERE s_mc_number = '" . $s_mc_number  . "'";

         $check = mysqli_query($conn, $query);

         if ($check->num_rows > 0)
         {
             mysqli_query($conn, "UPDATE va2pow SET  s_company_name = '" . $s_company_name . "', street_address = '" . $street_address . "',  WHERE s_mc_number = '" . $s_mc_number . "'");
         }
         else
         {
              mysqli_query($conn, "INSERT INTO va2pow (s_company_name, street_address, s_phone_number,s_mc_number, pow, client_name, s_email,con_digit) VALUES ('" . $s_company_name . "', '" . $street_address . "', '" . $s_phone_number . "','" . $s_mc_number . "','" . $pow . "', '" . $client_name . "', '" . $s_email . "', '" .$con_digit. "')");
         }