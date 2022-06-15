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
                            <h1>Sales by Kithinga <span><i class="fa fa-user"></i></span></h1>
                        </div>
                    </div>
                </div>
                <div class="row assigned-card-area">
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>All time calls</h6>
                            <p>74,232</p>
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
                            <h6>Contacts assigned</h6>
                            <p>2357</p>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>No answer</h6>
                            <p>259</p>
                            <div class="naspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Maybe</h6>
                            <p>67</p>
                            <div class="mbspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card">
                            <h6>Said no</h6>
                            <p>48</p>
                            <div class="snspan shadow"></div>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="assigned-card ">
                            <h6>Customer</h6>
                            <p>27</p>
                            <div class="cspan shadow"></div>
                        </div>
                    </div>


                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="assigned-table">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Client name</th>
                                        <th scope="col">Company name</th>
                                        <th scope="col">Mc number</th>
                                        <th scope="col">Phone number</th>
                                        <th scope="col">Street address</th>
                                        <th scope="col">Pow</th>
                                        <th scope="col">Status</th>
                                        <!-- <th scope="col">Email address</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // $s_company_name = 0;
                                    // $street_address = 0;
                                    // $s_phone_number = 0;
                                    $n = 1;
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
                                        ?>
                                        <tr>
                                            <td><?php echo $n++ ?></td>
                                            <td><?php echo $client_name; ?></td>
                                            <td><?php echo $s_company_name; ?></td>
                                            <td><?php echo $s_mc_number; ?></td>
                                            <td><?php echo $s_phone_number; ?></td>
                                            <td><?php echo $street_address; ?></td>
                                            <td><?php echo $pow; ?></td>
                                            <td>
                                                <div class="dropdown">
                                                    <span>Mouse over me</span>
                                                    <div class="dropdown-content">
                                                        <p>Hello World!</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td><?php echo $s_status; ?></td>

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