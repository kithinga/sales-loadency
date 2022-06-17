<?php

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = "sales_db";
$conn = mysqli_connect($servername, $username, $password, "$dbname");
if (!$conn) {
    echo "sales db not connected";
}

$va2pow_results = mysqli_query($conn, "SELECT *, count(s_mc_number) as `collected_contacts` FROM va2pow ");
// Customer results 
$customers_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'customer'");
// Maybe results
$datenow = date('Y-m-d H:i:s');
$maybe_results = mysqli_query($conn, "SELECT * FROM va2pow  WHERE s_status = 'maybe'");
// said no results
$said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no'");
// $said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no' ");
// Counting the number of contacts per status
$res = mysqli_query($conn, "SELECT
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS no_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS no_answer_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS maybe_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS customer_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_call_count
FROM va2pow");
$data = mysqli_fetch_assoc($res);


// SALES ASSIGNED PERSONAL DASHBOARD
// All time total calls are$res = mysqli_query($conn, "SELECT
$value_counts = mysqli_query($conn, "SELECT SUM(times_called) AS all_time_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS cus_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS mb_count,
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS n_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS na_count,
SUM(CASE WHEN s_status = 'waiting-call' THEN 1 ELSE 0 END) AS waiting_count,

 COUNT(s_phone_number)AS total_contacts from va2pow");
$dat2 = mysqli_fetch_assoc($value_counts);

?>
