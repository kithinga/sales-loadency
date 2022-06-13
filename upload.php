<?php include "config.php";?>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="upload_form">
                    <form action="sales_database.php" method="post" enctype="multipart/form-data">
                        <input type="file" name="csvfile" required="required">
                        <input type="submit" value="upload">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>


