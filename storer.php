<!-- DIGITS SELCTOR FROM ASSIGNED PAGE -->

<?php while ($row = mysqli_fetch_array($get_digits)) { ?>
    <div class="col-lg-3 col-ch">
        <div class="dg-2-unit ">
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