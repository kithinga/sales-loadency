<?php  
 $db =  mysqli_connect("localhost","root","","sales_db");

 if($db){
     $file=$_FILES['salescsv']['temp_name'];
     $handle =fopen($file,"r");
     $i=0;
    while(($cont=fgetcsv($handle,1000,","))!==false){
         $one =$cont[0];
         $two =$cont[1];
         $three =$cont[2];
         $four =$cont[3];
         $query ="CREATE TABLE $table ($one varchar(50),$two varchar(50)$three varchar(50)$four varchar(50));";
         echo $query,"<br>";
    }
 }

 else{
     echo "connection failed";
 }
?>