<?php  
 $db =  mysqli_connect("localhost","root","","sales_db");

 if($db)
 {
     $file=$_FILES['csvfile']['tmp_name'];
     $handle=fopen($file,"r");
     while(($cont=fgetcsv($handle,1000,","))!==false)
     {
        $one=$cont[0];
        $two =$cont[1];
        $three =$cont[2];
        $four =$cont[3];
        $five =$cont[4];
     }
 }
 else
 {
     echo "connection failed";
 }
?>