<?php include "config.php" ?>
<?php include "shared_header.php" ?>

<body>
    <div class="container-fluid">
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

        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="collected-contacts shadow">
                            <?php
                            $mc = 0;
                            $mc_count = 0;
                            ?>
                            <?php while ($row = mysqli_fetch_array($va2pow_results)) { ?>
                                <?php
                                $mc = $row['collected_contacts'];
                                $mc_count += $mc;
                                ?>
                                <h2>Collected contacts <span class=""> <?php echo $mc_count; ?> </span><small>CONTACTS</small> </h2>
                            <?php
                            } ?>

                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="sales-card waiting-call shadow">
                            <h5>Not called</h5>
                            <p><?php echo $data['waiting_call_count']; ?></p>
                        </div>
                    </div>
                    
                </div>
                <div class="row justify-content-center sales-boxes">
                    <div class="col-lg-3">
                        <div class="sales-card shad-sm customer shadow">
                            <h5>Customers</h5>
                            <p><?php echo $data['customer_count']; ?></p>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="sales-card shado-sm maybe shadow">
                            <h5>Maybe</h5>
                            <p><?php echo $data['maybe_count']; ?></p>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="sales-card shado-sm no-answer shadow">
                            <h5>No answer</h5>
                            <p><?php echo $data['no_answer_count']; ?> </p>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="sales-card shado-sm said-no">
                            <h5>Said no</h5>
                            <p><?php echo $data['no_count']; ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br><br><br>
        <div class="row justify-content-center ">
            <div class="col-lg-8 sales-listing">
                <div class="">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header customer-bt" id="interested-title">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                    CUSTOMERS
                                </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="customers-table">
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
                                                    $n=1;
                                                ?>

                                                <?php while ($row = mysqli_fetch_array($customers_results)) { ?>
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
                        <div class="accordion-item">
                            <h2 class="accordion-header maybe-bt" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                    MAYBE
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="maybe-table">
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
                                                    $n=1;
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
                        <div class="accordion-item">
                            <h2 class="accordion-header no-answer-bt" id="flush-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    NO ANSWER
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="no-answer-table">
                                        vcbvcb
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header said-no-bt" id="flush-headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                    SAID NO
                                </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="said-no-table">
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
                                                    $n=1;
                                                ?>

                                                <?php while ($row = mysqli_fetch_array($said_no_results)) { ?>
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
            </div>
        </div>
    </div>
</body>