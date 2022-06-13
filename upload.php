 <?php
    include "config.php";
    ?>

 <body>

     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-12">
                 <div class="div">
                     <form action="" method="post" name="frmCSVImport" id="frmCSVImport" enctype="multipart/form-data" onsubmit="return validateFile()">
                         <div Class="input-row">
                             <label>Coose your file. <a href="./import-template.csv" download>Download
                                     template</a></label> <input type="file" name="file" id="file" class="file" accept=".csv,.xls,.xlsx">
                             <div class="import">
                                 <button type="submit" id="submit" name="import" class="btn-submit">Import
                                     CSV and Save Data</button>
                             </div>
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     </div>
 </body>