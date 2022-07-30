<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
    header('Location: index.php');
    exit;
} else { ?>

    <body>
        <div class="container-fluid">


            <div class="row justify-content-center ">
                <!-- <div class="col-lg-1">
                   <div class="today-num">
                   Contacts created today
                   </div>
                </div> -->
                <div class="col-lg-7 con-area">
                    <div>
                       <div class="prett-title">
                       Contacts for each user

                       </div>
                    </div>
                    <div class="row numbers-area">
                    <?php while ($row = mysqli_fetch_array($available_contacts)) { ?>
                       <?php 
                        $con_digit = $row['con_digit']; 
                        $av_contacts = $row['av_contacts']; 
                        ?>
                        <div class="col-lg-2">
                            <div class="con-digit">
                               <h6> <i class="fa fa-user"></i> User  
                               <?php 
                                echo $con_digit;
                                 ?>
                               </h6>
                               <p><?php  echo $av_contacts; ?> <span>contacts</span></p>
                            </div>
                        </div>
                   <?php }?>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="up-title">
                        <h4>Upload contacts here <i class="fa fa-arrow-down"></i></h4>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-12 form-col">
                    <div class="upload-form">
                        <form class="form-self" action="process_contacts.php" method="post" autocomplete="off" enctype="multipart/form-data">
                            <div class="input-area">
                                <input type="text" name="s_company_name" placeholder="Company name" id="company_name" required>
                                <input type="text" name="street_address" placeholder="Street address" id="st_address" required>
                                <input type="text" name="s_phone_number" placeholder="Phone number" id="phone_number" required>
                                <input type="text" name="s_mc_number" placeholder="MC number" id="mc_number" required>
                                <input type="text" name="client_name" placeholder="Owner name" id="c_name" required>
                                <input type="number" name="pow" placeholder="Power Units" id="pow" required>
                                <input type="text" name="s_email" placeholder="Contact email" id="c_email">
                                <input type="number" name="con_digit" placeholder="Contact key  Only 1,2,3,6,7,8,9,10" id="n_number" required>
                                <button class="upload-btn" name="upload_contacts">upload contact <i class="fa fa-upload"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </body>

    </html>
<?php } ?>