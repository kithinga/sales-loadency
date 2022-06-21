
<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = "sales_db";
$conn = mysqli_connect($servername, $username, $password, "$dbname");
if (!$conn) {
    echo "sales db not connected";
}

$username = $_SESSION['name'];


$username = $_SESSION['name'];

$va2pow_results = mysqli_query($conn, "SELECT *, count(s_mc_number) as `collected_contacts` FROM va2pow ");
// Customer results 
$customers_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'customer'");
// Maybe results
$datenow = date('Y-m-d H:i:s');
$maybe_results = mysqli_query($conn, "SELECT * FROM va2pow   order by times_called asc limit 7");
// said no results
$said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no'");
// $said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no' ");

// USERS SELECTION for admin dashboard reports
$caller_report = mysqli_query($conn, "SELECT *, COUNT(caller_name) AS all_today_count,
-- COUNT(caller_name) AS all_today_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS daily_cus_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS daily_mb_count,
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS daily_n_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS daily_na_count from calls_tally where 
last_changed >= date(now()) and last_changed < date(now()) + interval 1 day group by caller_name order by last_changed desc");

// ALL COUNTS
// Counting the number of contacts per status
$all_admin_res = mysqli_query($conn, "SELECT
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS no_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS no_answer_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS maybe_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS customer_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_call_count
FROM calls_tally");
$data = mysqli_fetch_assoc($all_admin_res);

// GRAND TOTALS i>e ALL TIME COLLECTED CONTACTS  AND waiting calls
$total_res = mysqli_query($conn, "SELECT
COUNT(s_phone_number) AS collected_contacts,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_call_count
FROM va2pow");
$total_data = mysqli_fetch_assoc($total_res);

// SALES ASSIGNED PERSONAL DASHBOARD
// All time total calls are$res = mysqli_query($conn, "SELECT
$value_counts = mysqli_query($conn, "SELECT 
COUNT(caller_name) AS all_time_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS cus_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS mb_count,
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS n_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS na_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_count,
 COUNT(s_phone_number)AS total_contacts from calls_tally WHERE caller_name = '$username'");
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
