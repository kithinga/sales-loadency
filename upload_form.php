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
        <div class="col-lg-9 form-col">
          <div class="upload-form">
            <form class="form-self" action="process_contacts.php" method="post" enctype="multipart/form-data">
              <div class="input-area">
                     <input type="text" name="s_company_name" placeholder="Company name" id="company_name" required>
                     <input type="text" name="street_address" placeholder="Street address" id="st_address" required>
                     <input type="text" name="s_phone_number" placeholder="Phone number" id="phone_number" required>
                     <input type="text" name="s_mc_number" placeholder="MC number" id="mc_number" required>
                     <input type="text" name="pow" placeholder="Power Units" id="pow" required>
                     <input type="text" name="s_email" placeholder="Contact email" id="c_email" required>
                     <input type="text" name="s_email" placeholder="Only 1,2,3,6,7,8,9,10" id="n_number" required>
                     <button class="btn btn-primary">submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </body>

  </html>
<?php } ?>