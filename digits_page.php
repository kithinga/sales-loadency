<?php
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
    header('Location: index.php');
    exit;
}

if ($_SESSION['user_role'] == 'user') { ?>

    <body>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <br><br><br><br>
                    <div class="grid-t">
                        <h5>Hello, <span> <?php echo  $_SESSION['name'] ?> </span></h5>
                        <P>Please select a digit to proceed !</P>
                    </div>
                    <div class="digits-grid row">
                    <?php while ($row = mysqli_fetch_array($get_digits)) { ?>
                            <div class="col-lg-3 col-ch">
                            <div class="dg-unit ">
                                <form action="sales_assigned.php" method="post" enctype="multipart/form">
                                    <?php
                                    $con_digit = $row['con_digit'];
                                    ?>
                                    <input type="hidden" name="con_digit" value="<?php echo $con_digit; ?>">
                                    <button type="submit" name="select-digit">
                                        <p><?php echo $con_digit; ?></p>
                                    </button>
                                </form>
                            </div>
                            </div>
                        <?php } ?>
                        <div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            AOS.init();
        </script>
    </body>
<?php } else {
    header('Location: index.php');
}
?>