<?php  
 $db =  mysqli_connect("localhost","root","","sales_db");

 if($db){
     print_r($_FILES['csvfile']);
 }

 else{
     echo "connection failed";
 }
?>