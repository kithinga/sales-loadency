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
// All said-no 
$said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no'");
// $said_no_results = mysqli_query($conn, "SELECT *  FROM va2pow  WHERE s_status = 'said-no' ");

// Counting the number of contacts per status
$res = mysqli_query($conn, "SELECT
SUM(CASE WHEN s_status = 'said-no' THEN 1 ELSE 0 END) AS no_count,
SUM(CASE WHEN s_status = 'no-answer' THEN 1 ELSE 0 END) AS no_answer_count,
SUM(CASE WHEN s_status = 'maybe' THEN 1 ELSE 0 END) AS maybe_count,
SUM(CASE WHEN s_status = 'customer' THEN 1 ELSE 0 END) AS customer_count
FROM va2pow");
$data = mysqli_fetch_assoc($res);
