<?php
    $servername='localhost';
    $username='root';
    $password='';
    $dbname = "sales_db";
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
      if(!$conn){
          echo "sales db not connected";
        }
?>