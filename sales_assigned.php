<?php include "config.php" ?>
<?php include "shared_header.php" ?>



<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-1">
                <div class="row side-nav">
                    <div class="home-button"><button class="">Back home <i class="fa fa-home"></i></button></div>
                </div>
            </div>
            <div class="col-lg-11 assigned-area">
                <div class="assigned-title row">
                    <div class="col">
                        <div>
                            <h1>SALES BY KITHINGA <span><i class="fa fa-user"></i></span></h1>
                        </div>
                    </div>
                </div>
                <div class="row assigned-card-area ">
                <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Collected contacts</h6>
                            <p class="coll-c"><?php echo $dat2['total_contacts']?></p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>All time calls</h6>
                            <p> <?php echo $dat2['all_time_count']?></p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Past week calls</h6>
                            <p>832</p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Calls today</h6>
                            <p>132</p>
                        </div>
                    </div>
                  
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>No answer</h6>
                            <p class="nadirer">259</p>
                            <div class="naspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Maybe</h6>
                            <p class="mbdirer">67</p>
                            <div class="mbspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Said no</h6>
                            <p class="nodirer">48</p>
                            <div class="snspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card ">
                            <h6>Won customers</h6>
                            <p class="cdirer">27</p>
                            <div class="cspan shadow"></div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="assigned-table">
                            <h5>ASSIGNED CONTACTS</h5>

                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Client name</th>
                                        <th scope="col">Company name</th>
                                        <th scope="col">Mc number</th>
                                        <th scope="col">Phone number</th>
                                        <th scope="col">Last called</th>
                                        <th scope="col">Times called</th>
                                        <th scope="col">Called by</th>
                                        <th scope="col">Call status</th>
                                        <th scope="col">Street address</th>
                                        <th scope="col">Pow</th>
                                        <!-- <th scope="col">Email address</th> -->
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $n = 1;
                                    $times_called = 0;
                                    ?>

                                    <?php while ($row = mysqli_fetch_array($maybe_results)) { ?>
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
                                        
                                        $now = time(); // 
                                        $your_date = strtotime($last_changed);
                                        $datediff = $now - $your_date;
          
                                        $minutes = round(abs($datediff) / 60);
                                      
                                        ?>
                                        <tr>
                                        
                                            <td><?php echo $n++ ?></td>
                                            <td><?php echo $client_name; ?></td>
                                            <td><?php echo $s_company_name; ?></td>
                                            <td><?php echo $s_mc_number; ?></td>
                                            <td><?php echo $s_phone_number; ?></td>
                                            <td><?php echo $minutes; ?> <small> mins ago</small></td>

                                            <td><?php echo $times_called; ?></td>
                                            <td>Tesfae</td>
                                            <td class="status-box " title="Current status is - <?php echo $s_status ?>">
                                                <form class="edit-status-form" method="post" action="update_status.php">
                                                    <input class="edit-status-input" type="hidden" name="s_mc_number" value="<?php echo $s_mc_number; ?>" />
                                                    <input class="edit-status-input" type="hidden" name="times_called" value="<?php echo $times_called + 1; ?>" />
                                                    <input class="edit-status-input" type="hidden" name="last_changed" value="" />

                                                    <div class="dropdown">
                                                        <span> <?php echo $s_status ?></span>
                                                        <div class="dropdown-content">
                                                            <p><i class="fa fa-phone"></i> <?php echo $s_phone_number; ?></p>
                                                            <label for="sele">Current-status</label>
                                                            <select name='s_status' id="sele" class="edit-status-input">
                                                                <option value='<?php echo $s_status ?>' selected><?php echo $s_status ?></option>
                                                                <option value='no-answer'>no-answer</option>
                                                                <option value='said-no'>said-no</option>
                                                                <option value='customer'>customer</option>
                                                                <option value='maybe'>maybe</option>
                                                            </select>
                                                            <label for="stat-com">Status-comments</label>
                                                            <!-- <textarea name="status_comments" id="stat-com" class="edit-status-textarea"></textarea> -->
                                                            <button class="edit-status-btn" type="submit" name="edit-contact-status">Update status</button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <!-- <i class="fa fa-caret-down"></i> -->
                                            </td>
                                            
                                            <td><?php echo $street_address; ?></td>
                                            <td><?php echo $pow; ?></td>
                                        </tr>
                                    <?php
                                    } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>