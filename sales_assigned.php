<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
    header('Location: index.php');
    // echo "<script type='text/javascript'>document.location.href='login.php';</script>";
    exit;
}

if ($_SESSION['user_role'] == 'user') { ?>

    <?php $active_digit = null; 
    // echo $_SESSION['ses_dig']; ?>
    <body>
        <div class="container-fluid">
            <div class="row no-gutters">
                <div class="col-lg-2">
                    <div class="row side-nav ">
                        <div class="bg-nav">
                            <div class="shadow"><a href="#"><button class=""><i class="fa fa fa-users"></i> Won customers </button></a></div>
                            <!-- <button type="button" class="shadow maybe-btn clients-btn">
                            <i class="mbdirer fa-solid fa-bars-progress"></i>Potential clients     
                            </button>
                            <button type="button" class="shadow assigned-btn">
                            <i class="fa fa-list"></i>Assigned contacts  
                            </button> -->
                            <br>
                            <br>
                            <p></p>
                            <div class="grid-2-t">
                                
                            </div>
                            <div class="digits-2-grid row">
                                  <!-- Fill the numbers selector tils here -->
                                <div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-10 assigned-area">
                    <div class="assigned-title row">
                        <div class="col">
                            <div>
                                <h1> Sales by <?= $_SESSION['name'] ?> <span>
                                </span></h1>
                            </div>
                        </div>
                    </div>
                    <div class="row assigned-card-area " data-aos="fade-left" data-aos-duration="2400">

                        <div class="">
                            <div class="assigned-card">
                                <h6>All time calls</h6>
                                <p class="otc"> <?php echo $dat2['all_time_count'] ?></p>
                            </div>
                        </div>
                        <div class="">
                            <div class="assigned-card">
                                <h6>Calls today</h6>
                                <p> <?php echo $da['today_count'] ?></p>
                            </div>
                        </div>

                     
                        <div class="">
                            <a href="no_answer.php">
                            <div class="assigned-card">
                                <h6>No answer</h6>
                                <p class="nadirer"><?php echo $dat2['na_count'] ?></p>
                                <div class="naspan shadow"></div>
                            </div>
                            </a>
                        </div>
                        <div class="">
                            <a href="said_no.php">
                            <div class="assigned-card">
                                <h6>Said no</h6>
                                <p class="nodirer"><?php echo $dat2['n_count'] ?></p>
                                <div class="snspan shadow"></div>
                            </div>
                            </a>
                        </div>
                     
                        <div class="">
                            <a href="brokers.php">
                            <div class="assigned-card">
                                <h6>Brokers</h6>
                                <p class="brdirer"><?php echo $dat2['br_count'] ?></p>
                                <div class="brspan shadow"></div>
                            </div>
                            </a>
                        </div>

                        <div class="2">
                           <a href="maybe.php">
                           <div class="assigned-card">
                                <h6>Maybe</h6>
                                <p class="mbdirer"><?php echo $dat2['mb_count'] ?></p>
                                <div class="mbspan shadow"></div>
                            </div>
                           </a>
                        </div>
                        <div class="">
                           <a href="won_customer.php">
                           <div class="assigned-card ">
                                <h6>Won customers</h6>
                                <p class="cdirer"><?php echo $dat2['cus_count'] ?></p>
                                <div class="cspan shadow"></div>
                            </div>
                           </a>
                        </div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col-lg-12">
                         
                            <div class="assigned-table  assigned-maybe-area">
                                <h5>Assigned contacts</h5>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Client name</th>
                                            <th scope="col">Company name</th>
                                            <th scope="col">Mc number</th>
                                            <th scope="col">Phone number</th>
                                            <th scope="col">Last called</th>
                                            <th scope="col">Times <br> called</th>
                                            <!-- <th scope="col">Previous <br> caller</th> -->
                                            <th scope="col">Call status</th>
                                            <th scope="col">Street address</th>
                                            <th scope="col">Pow</th>
                                            <th scope="col">Email address</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php
                                        $n = 1;
                                        $times_called = 0;
                                        ?>

                                        <?php while ($row = mysqli_fetch_array($to_call_results)) { ?>
                                            <?php
                                            $s_mc_number = $row['s_mc_number'];
                                            $s_company_name = $row['s_company_name'];
                                            $client_name = $row['client_name'];
                                            $street_address = $row['street_address'];
                                            $s_phone_number = $row['s_phone_number'];
                                            $pow = $row['pow'];
                                            $s_status = $row['s_status'];
                                            $s_email = $row['s_email'];
                                            $times_called = $row['times_called'];
                                            $last_changed = $row['last_changed'];
                                            $date = date('Y-m-d H:i:s');
                                            // $called_by = $row['caller_name'];
                                            $status_comments = $row['status_comments'];

                                            $now = time(); // 
                                            $your_date = strtotime($last_changed);
                                            $datediff = $now - $your_date;

                                            $days = round(abs($datediff) / (24 * 60 * 60));
                                            ?>
                                            <tr>
                                                <td><?php echo $n++ ?></td>
                                                <td class=""><?php echo $client_name; ?></td>
                                                <td class="c-name"><?php echo $s_company_name; ?></td>
                                                <td class="c-name-no"><?php echo $s_mc_number; ?></td>
                                                <td class="c-name-no"><?php echo $s_phone_number; ?></td>
                                                <td><?php echo $days; ?> <small> days ago</small></td>
                                                <td><?php echo $times_called; ?></td>
                                             
                                                <td class="status-box " title="Current status is - <?php echo $s_status ?>">
                                                    <form class="edit-status-form" method="post" action="update_status.php">
                                                        <input class="edit-status-input" type="hidden" name="s_mc_number" value="<?php echo $s_mc_number; ?>" />
                                                        <input class="edit-status-input" type="hidden" name="client_name" value="<?php echo $client_name; ?>" />
                                                        <input class="edit-status-input" type="hidden" name="s_company_name" value="<?php echo $s_company_name; ?>" />
                                                        <input class="edit-status-input" type="hidden" name="times_called" value="<?php echo $times_called + 1; ?>" />
                                                        <input class="edit-status-input" type="hidden" name="last_changed" value="" />
                                                        <!-- tally tester -->
                                                        <input class="edit-status-input" type="hidden" name="s_phone_number" value="<?php echo $s_phone_number ?>" />
                                                        <input class="edit-status-input" type="hidden" name="caller_name" value="<?= $_SESSION['name'] ?>" />
                                                        <input class="edit-status-input" type="hidden" name="street_address" value="<?php echo $street_address ?>" />
                                                        <input class="edit-status-input" type="hidden" name="pow" value="<?php echo $pow ?>" />
                                                        <input class="edit-status-input" type="hidden" name="s_email" value="<?php echo $s_email ?>" />

                                                        <!-- <input class="edit-status-input" type="text" name="con_digit" value="" /> -->

                                                        <div class="dropdown">
                                                            <button class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span> <?php echo $s_status ?></span>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-content" aria-labelledby="dropdownMenuButton1">
                                                                <p><i class="fa fa-phone"></i> <?php echo $s_phone_number; ?></p>
                                                                <label for="sele">Current-status</label>
                                                                <select name='s_status' id="sele" class="edit-status-input">
                                                                    <option value='<?php echo $s_status ?>' selected><?php echo $s_status ?></option>
                                                                    <option value='no-answer'>no-answer</option>
                                                                    <option value='said-no'>said-no</option>
                                                                    <option value='customer'>customer</option>
                                                                    <option value='maybe'>maybe</option>
                                                                    <option value='broker'>broker</option>
                                                                </select>
                                                                <label for="voice_mail">Left voice mail <i class="fa fa-email"></i></label>
                                                                <select name='voice_mail' id="voice" class="edit-status-input">
                                                                    <option value='yes'>Yes / no</option>
                                                                    <option value='yes'>yes</option>
                                                                    <option value='no'>no</option>
                                                                </select>
                                                                <label for="stat-com">Status-comments</label>
                                                                <textarea name="status_comments" id="stat-com" class="edit-status-textarea"></textarea>
                                                                <button class="edit-status-btn" type="submit" name="edit-contact-status">Update status</button>
                                                            </ul>
                                                        </div>
                                                    </form>
                                                    <!-- <i class="fa fa-caret-down"></i> -->
                                                </td>

                                                <td class="c-name"><?php echo $street_address; ?></td>
                                                <td><?php echo $pow; ?></td>
                                                <td><?php echo $s_email; ?></td>
                                            </tr>
                                        <?php
                                        } ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- include personal maybe count -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            AOS.init();
        </script>
        <script src="custom.js"></script>
    </body>
<?php } else {
    header('Location: index.php');
}
?>