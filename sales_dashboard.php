<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
    header('Location: index.php');
    exit;
} else { ?>

    <body>
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-2 adm-bg">
                    <div class="row  admin-nav">
                        <button class="shadow"><i class="fa fa-home"></i>Back home</button>
                        <!-- Button trigger modal -->
                        <button type="button" class="shadow-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            <i class="fa fa-user"></i>Add new user
                        </button>

                        <!-- Modal -->


                    </div>
                </div>
                <div class="col-lg-10 assigned-area">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sales-title">
                                <h1>Admin dashboard
                                </h1>
                                <p>INSIGHTS</p>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="row analysis-cards">
                        <div class="col-lg-6">
                            <div class="row justify-content-center sales-boxes no-gutters">
                                <div class="col-lg-3 ani">
                                    <div class="sales-card waiting-call ">
                                        <h5>Collected contacts</h5>
                                        <p><?php echo $total_data['collected_contacts']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card waiting-call ">
                                        <h5>Not called</h5>
                                        <p><?php echo $total_data['waiting_call_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm customer ">
                                        <h5>Customers</h5>
                                        <p><?php echo $data['customer_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm maybe ">
                                        <h5>Maybe</h5>
                                        <p><?php echo $data['maybe_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm no-answer">
                                        <h5>No answer</h5>
                                        <p><?php echo $data['no_answer_count']; ?> </p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5>Said no</h5>
                                        <p><?php echo $data['no_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5>Calls <br> yesterday</h5>
                                        <p><?php echo $data['no_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5>Calls <br> Today</h5>
                                        <p><?php echo $all_tc['all_today_count']; ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row justify-content-center sales-boxes no-gutters">
                                <div class="users-table">
                                    <h6>Users daily reports</h6>
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">User</th>
                                                <th scope="col">Calls Today</th>
                                                <th scope="col">Maybe</th>
                                                <th scope="col">No answer</th>
                                                <th scope="col">Said no</th>
                                                <th scope="col">Customer</th>
                                                <!-- <th scope="col">Email address</th> -->
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php
                                            $n = 1;
                                            $times_called = 0;
                                            ?>

                                            <?php while ($row = mysqli_fetch_array($caller_report)) { ?>
                                                <?php
                                                $caller_name = $row['caller_name'];
                                                $calls_today = $row['all_today_count'];
                                                $daily_mb_count = $row['daily_mb_count'];
                                                $daily_na_count = $row['daily_na_count'];
                                                $daily_n_count = $row['daily_n_count'];
                                                $daily_cus_count = $row['daily_cus_count'];
                                                ?>
                                                <tr>
                                                    <td><?php echo $n++ ?></td>
                                                    <td><?php echo $caller_name; ?></td>
                                                    <td><?php echo $calls_today; ?></td>
                                                    <td><?php echo $daily_mb_count; ?></td>
                                                    <td><?php echo $daily_na_count; ?></td>
                                                    <td><?php echo $daily_n_count; ?></td>
                                                    <td><?php echo $daily_cus_count; ?></td>
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
        </div>
        </div>
        <script>
            AOS.init();
        </script>
    </body>
<?php }
?>

<?php include "modals.php"; ?>