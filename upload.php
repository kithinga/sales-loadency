<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
  header('Location: index.php');
  exit;
} else { ?>

  <body>
    <div class="container-fluid">

      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="up-title">
            <h4>Upload contacts here</h4>
          </div>
        </div>
      </div>

      <div class="row justify-content-center">
        <div class="col-lg-6 form-col">
          <div class="upload-form">
            <form class="form-self" action="functions.php" method="post" enctype="multipart/form-data">
              <div class="input-area">
                <div class="custom-file">
                  <input type="file"  class="custom-file-input" name="file" >
                </div>
                <div class="input-group-append">
                  <p class="upload-btn"><button type="submit" name="submit">upload</button><i class="fa fa-upload"></i></p>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>

  </html>
<?php } ?>