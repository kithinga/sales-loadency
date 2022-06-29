<?php

// DEVELOPER DB CON
// $servername = 'localhost';
// $username = 'root';
// $password = '';
// $dbname = "sales_db";


// NAMECHEAP DB CON
$servername = 'localhost';
$username = 'loadpwyf_kithinga';
$password = 'dev1151@loadency';
$dbname = "loadpwyf_sales_db";

$conn = mysqli_connect($servername, $username, $password, "$dbname");
if (!$conn) {
    echo "sales db not connected";
}

$username = $_SESSION['name'];

$va2pow_results = mysqli_query($conn, "SELECT *, count(s_phone_number) as `collected_contacts` FROM va2pow ");
// Customer results 
$customers_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'customer'");
// Maybe results
$datenow = date('Y-m-d H:i:s');
// echo $_SESSION['ses_dig']; 

$con_digit =  $_SESSION['ses_dig'];

if(isset($_POST['select-digit'])){
    $con_digit = $_POST['con_digit']; 
}

$get_digits = mysqli_query($conn, "SELECT con_digit  FROM va2pow  group by con_digit");

$active_digit_res = mysqli_query($conn, "SELECT con_digit  FROM va2pow  where con_digit = '$con_digit' ");

$to_call_results = mysqli_query($conn, "SELECT * FROM va2pow  where con_digit = '$con_digit'  order by times_called asc limit 8 ");
// said no results
$said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no'");
// $said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no' ");

$maybe_clients = mysqli_query($conn, "SELECT * FROM calls_tally  WHERE s_status = 'maybe' ");
$personal_maybe_clients = mysqli_query($conn, "SELECT * FROM calls_tally  WHERE s_status = 'maybe' and caller_name = '$username' ");


// 

// USERS SELECTION for admin dashboard reports
$caller_report = mysqli_query($conn, "SELECT *, 
COUNT(caller_name) AS all_today_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS daily_cus_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS daily_mb_count,
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS daily_n_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS daily_na_count from calls_tally where 
last_changed >= date(now()) and last_changed < date(now()) + interval 1 day group by caller_name order by last_changed desc");
// Users daily totals
$users_daily_totals = mysqli_query($conn, "SELECT
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS no_usdt,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS na_usdt,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS mb_usdt,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS c_usdt
FROM calls_tally where last_changed >= date(now()) and last_changed < date(now()) + interval 1 day");
$usdt = mysqli_fetch_assoc($users_daily_totals);

// ALL COUNTS
// Counting the number of contacts per status
$all_admin_res = mysqli_query($conn, "SELECT
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS no_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS no_answer_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS maybe_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS customer_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_call_count
FROM calls_tally"); $data = mysqli_fetch_assoc($all_admin_res);


// GRAND TOTALS i>e ALL TIME COLLECTED CONTACTS  AND waiting calls
$total_res = mysqli_query($conn, "SELECT
COUNT(s_phone_number) AS collected_contacts,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_call_count
FROM va2pow");
$total_data = mysqli_fetch_assoc($total_res);


// GRAND TOTAL IN CALLS_TALLY TABLE
$calls_tally_total = mysqli_query($conn, "SELECT
COUNT(tally_id) AS calls_done, SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS maybe_tally FROM calls_tally ");
$calls_tally = mysqli_fetch_assoc($calls_tally_total);


// SALES ASSIGNED PERSONAL DASHBOARD
// The declaration of receiving digit id

// All time total calls 
$value_counts = mysqli_query($conn, "SELECT 
COUNT(caller_name) AS all_time_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS cus_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS mb_count,
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS n_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS na_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_count,
 COUNT(s_phone_number)AS total_contacts from calls_tally WHERE caller_name = '$username' ");
$dat2 = mysqli_fetch_assoc($value_counts);


// USER COUNT FOR TODAY AND YESTERDAY
$today_count = mysqli_query($conn, "SELECT COUNT(caller_name) AS today_count from calls_tally 
where last_changed >= date(now()) and last_changed < date(now()) + interval 1 day AND caller_name = '$username'");
$da = mysqli_fetch_assoc($today_count);
// USER COUNT FOR TODAY AND YESTERDAY
$all_today_count = mysqli_query($conn, "SELECT COUNT(caller_name) AS all_today_count from calls_tally where 
last_changed >= date(now()) and last_changed < date(now()) + interval 1 day");
$all_tc= mysqli_fetch_assoc($all_today_count);

?>
