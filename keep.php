<?php  
 $db =  mysqli_connect("localhost","root","","sales_db");

 if($db){
     $file=$_FILES['csvfile']['temp_name'];
     $handle =fopen($file,"r");
     $i=0;
    while(($cont=fgetcsv($handle,1000,","))!==false){
        $table =rtrim($_FILES['salescsv']['name'],".csv");
        if($i==0){
         $one =$cont[0];
         $two =$cont[1];
         $three =$cont[2];
         $four =$cont[3];
         $five =$cont[4];
         $query ="CREATE TABLE $table ($one varchar(50),$two varchar(50),$three varchar(50),$four varchar(50),$five varchar(50));";
         echo $query,"<br>";
         mysqli_query($db,$query);
        }
        else{
            $query = "INSERT into $table ($one,$two,$three,$four,$five) VALUES ('$cont[0]','$cont[1]','$cont[2]','$cont[3]','$cont[4]')";
            echo $query,"<br>";
        }
        $i++;
    }
 }

 else{
     echo "connection failed";
 }
?>