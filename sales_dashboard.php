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
                        <!-- <button class="shadow"><i class="fa fa-home"></i>Back home</button> -->
                        <!-- Button trigger modal -->
                        <button type="button" class="shadow-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            <i class="fa fa-user"></i>Add new user
                        </button>
                        <button type="button" class="shadow-sm maybe-btn" >
                            <i class="fa-solid fa-bars-progress"></i>Potential clients
                        </button>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-10 assigned-area">
                    <div class="row analysis-cards-dash">
                        <div class="col-lg-12">
                            <div class="sales-title">
                                <h1>Sales dashboard
                                </h1>
                                <p>FOR SALES INSIGHTS</p>
                                <br>
                            </div>
                        </div>
                    </div>
                    <?php include_once "maybe.php"; ?>

                    <?php 
                    // Contacts called
                       $called = ($total_data['collected_contacts'] - $total_data['waiting_call_count']);
                    ?>

                    <div class="row analysis-cards">
                        <div class="col-lg-6">
                            <div class="row justify-content-center sales-boxes no-gutters">
                                <div class="col-lg-3 ani">
                                    <div class="sales-card waiting-call ">
                                        <h5>Collected contacts</h5>
                                        <i class="fa-solid fa-list-check"></i>
                                        <p><?php echo $total_data['collected_contacts']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5>Called</h5>
                                        <i class="fa-solid fa-phone-volume"></i>
                                        <p><?php echo $called ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card waiting-call ">
                                        <h5>Not called</h5>
                                        <i class="fa-solid fa-calendar-days"></i>
                                        <p><?php echo $total_data['waiting_call_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm customer ">
                                        <h5>Customers</h5>
                                        <i class="cdirer fa fa-users" aria-hidden="true"></i>
                                        <p class="cdirer"><?php echo $data['customer_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm maybe ">
                                        <h5>Maybe</h5>
                                        <i class="mbdirer fa-solid fa-arrows-spin"></i>
                                        <p class="mbdirer"><?php echo $data['maybe_count']; ?></p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm no-answer">
                                        <h5>No answer</h5>
                                        <i class="nadirer fa-solid fa-stopwatch"></i>
                                        <p class="nadirer"><?php echo $data['no_answer_count']; ?> </p>
                                    </div>
                                </div>
                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5>Said no</h5>
                                        <i class="nodirer fa-solid fa-phone-slash"></i>
                                        <p class="nodirer"><?php echo $data['no_count']; ?></p>
                                    </div>
                                </div>

                                <div class="col-lg-3 ani">
                                    <div class="sales-card shado-sm said-no">
                                        <h5> Dropped clients</h5>
                                        <i class="fa fa-level-down" aria-hidden="true"></i>
                                        <p><?php echo "0" ?></p>
                                    </div>
                                </div>

                                <div class="col-lg-12 ani">
                                    <div class="sales-card day-card shado-sm said-no">
                                        <h1> Calls Today</h1>
                                        <i class="fa fa-phone"></i>
                                        <p><?php echo $all_tc['all_today_count']; ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row justify-content-center sales-boxes-2 no-gutters">
                                <div class="users-table">
                                    <h6>Users daily reports</h6>
                                    <table class="table  table-hover ">
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
                                                    <td><?php echo number_format($daily_cus_count); ?></td>
                                                </tr>
                                            <?php
                                            } ?>
                                            <tr class="last-td">
                                                <td colspan="2"></td>
                                                <td><?php echo $all_tc['all_today_count'] ?></td>
                                                <td class="mbdirer"><?php echo  $usdt['mb_usdt'] ?></td>
                                                <td class="nadirer"><?php echo  $usdt['na_usdt'] ?></td>
                                                <td class="nodirer"><?php echo  $usdt['no_usdt'] ?></td>
                                                <td class="cdirer"><?php echo  $usdt['c_usdt'] ?></td>
                                            </tr>
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
        <script src="custom.js"></script>
    </body>
<?php }
?>

<?php include "modals.php"; ?>