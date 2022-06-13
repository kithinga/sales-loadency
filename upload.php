<?php include "config.php";?>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="upload_form">
                    <form action="upload.php" method="POST">
                        <input type="file" name="salescsv" required="required">
                        <input type="submit" value="upload">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>


