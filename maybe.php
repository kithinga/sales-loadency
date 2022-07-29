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
    ?>
    <body>
        <!-- Maybe clients fro each user. -->
        <div class="maybe-nav">
            <?php include 'assigned_nav.php' ?>
        </div>
        <div class="col-lg-12 assigned-area maybe-area" data-aos="fade-up" data-aos-duration="2600">
            <div class="assigned-title row">
                <div class="col">
                    <div class="row convert">
                        <div class="col-lg-12">
                            <div class="sales-title">
                                <h1>Contacts which said maybe</h1>
                                <p>product of numbers</p>
                                <span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="home-arrow row justify-content-center">
                        <!-- <div class="col-lg-2"><a href="#"> <button class="shadow-lg"><i class="fa fa-home"></i>back home</button></a></div> -->
                        <div class="col-lg-4">
                            <h4>POTENTIAL CLIENTS <span> <?php echo $calls_tally['maybe_tally'] ?></span> / <?php echo $calls_tally['calls_done'] ?> </h4>
                        </div>
                    </div>
                    <div class="assigned-table aa-table">
                        <h5>Potential clients</h5>
                        <table class="table table-bordered table-hover">
                            <thead class="the-th">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Client name</th>
                                    <th scope="col">Company name</th>
                                    <th scope="col">Mc number</th>
                                    <th scope="col">Phone number</th>
                                    <th scope="col">Times <br> called</th>
                                    <th class="status-box-1">Last called</th>
                                    <th scope="col">Previous comments</th>
                                    <th scope="col">Previous <br> caller</th>
                                    <th scope="col">Call status</th>
                                    <th scope="col">Street address</th>
                                    <th scope="col">Pow</th>
                                    <th scope="col">Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $n = 1;
                                $times_called = 0;
                                $s_email = 'no email';
                                ?>

                                <?php while ($row = mysqli_fetch_array($personal_maybe_clients)) { ?>
                                    <?php
                                    $s_mc_number = $row['s_mc_number'];
                                    $tally_id = $row['tally_id'];
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
                                    $called_by = $row['caller_name'];
                                    $status_comments = $row['status_comments'];
                                    $now = time(); // 
                                    $your_date = strtotime($last_changed);
                                    $datediff = $now - $your_date;
                                    $days = round(abs($datediff) / (24 * 60 * 60));
                                    ?>
                                    <tr>
                                        <td class="cirle-num">
                                            <p><?php echo $n++ ?></p>
                                        </td>
                                        <td class="c-name-no"><?php echo $client_name; ?></td>
                                        <td class="cn-name"><?php echo $s_company_name; ?></td>
                                        <td class="c-name-no"><?php echo $s_mc_number; ?></td>
                                        <td class="c-name-no"><?php echo $s_phone_number; ?></td>
                                        <td class="c-name-no"><?php echo $times_called; ?></td>
                                        <td class="c-name-no"><?php echo $days; ?> <small> days ago</small></td>
                                        <td class="c-name-no n-bo"><?php echo $status_comments; ?></td>
                                        <td class="c-name-no"><?php echo $called_by ?></td>
                                        <td class="status-box " title="Current status is - <?php echo $s_status ?>">
                                            <form class="edit-status-form" method="post" action="update_status.php">
                                                <input class="edit-status-input" type="hidden" name="tally_id" value="<?php echo $tally_id; ?>" />
                                                <input class="edit-status-input" type="hidden" name="s_mc_number" value="<?php echo $s_mc_number; ?>" />
                                                <input class="edit-status-input" type="hidden" name="times_called" value="<?php echo $times_called + 1; ?>" />
                                                <input class="edit-status-input" type="hidden" name="last_changed" value="" />
                                                <!-- tally tester -->
                                                <input class="edit-status-input" type="hidden" name="s_phone_number" value="<?php echo $s_phone_number ?>" />
                                                <input class="edit-status-input" type="hidden" name="caller_name" value="<?= $_SESSION['name'] ?>" />
                                                <input class="edit-status-input" type="hidden" name="pow" value="<?php echo $pow ?>" />
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
                                                            <option value='dropped'>dropped</option>
                                                            <br>
                                                        </select>
                                                        <label for="stat-com">Status-comments</label>
                                                        <textarea name="status_comments" id="stat-com" class="edit-status-textarea"><?php echo $status_comments; ?></textarea>
                                                        <button class="edit-status-btn" type="submit" name="maybe-edit-contact-status">Update status</button>
                                                    </ul>
                                                </div>
                                            </form>
                                            <!-- <i class="fa fa-caret-down"></i> -->
                                        </td>
                                        <td><?php echo $street_address; ?></td>
                                        <td><?php echo $pow; ?></td>
                                        <td><?php echo $s_email; ?></td>

                                    </tr>
                                <?php
                                } ?>
                            </tbody>
                        </table>
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