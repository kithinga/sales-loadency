<body>
    <div class="container-fluid">
        <div class="row my-header">
            <div class="col-lg-9">
                <div class="small-logo">
                    <a href="index.php">
                        <h4>LMIS</h4>
                    </a>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="logout-sec">
                   <a href="sales_assigned.php">  <button class="shadow-sm"> <span><i class="fa fa-user"></i><?=$_SESSION['name'];?></span></button></a>
                    <a href="logout.php"><button  class="shadow-sm">
                      <i class="fas fa-sign-out-alt"></i>Logout
                 </button></a>
                </div>
            </div>
        </div>
    </div>
</body>