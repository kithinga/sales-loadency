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
                    <div class="row side-nav admin-nav">
                       <h6>back home</h6>
                    </div>
                </div>
                <div class="col-lg-10 assigned-area">
                <div class="row">
                <div class="col-lg-12">
                    <div class="sales-title">
                        <h1>Sales at loadency
                        </h1>
                        <p>INSIGHTS</p>
                        <br><br>
                    </div>
                </div>
            </div>
                    <div class="row justify-content-center sales-boxes">
                        <div class="col-lg-2">
                            <div class="sales-card waiting-call shadow">
                                <h5>Not called</h5>
                                <p><?php echo $data['waiting_call_count']; ?></p>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="sales-card shad-sm customer shadow">
                                <h5>Customers</h5>
                                <p><?php echo $data['customer_count']; ?></p>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="sales-card shado-sm maybe shadow">
                                <h5>Maybe</h5>
                                <p><?php echo $data['maybe_count']; ?></p>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="sales-card shado-sm no-answer shadow">
                                <h5>No answer</h5>
                                <p><?php echo $data['no_answer_count']; ?> </p>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="sales-card shado-sm said-no">
                                <h5>Said no</h5>
                                <p><?php echo $data['no_count']; ?></p>
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



