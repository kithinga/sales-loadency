<?php
// include "config.php";
?>

<head>
  <link href="sales.css" rel="stylesheet" type="text/css" />
  <script src="jquery-3.2.1.min.js"></script>
  <script type="text/javascript">
    function validateFile() {
      var csvInputFile = document.forms["frmCSVImport"]["file"].value;
      if (csvInputFile == "") {
        error = "No source found to import. Please choose a CSV file. ";
        $("#response").html(error).addClass("error");;
        return false;
      }
      return true;
    }
  </script>
</head>

<body>
  <div class="container-fluid">
    <div class="row justify-content-center">
       <div class="index-top">
        
       </div>
      <div class="col-lg-8">
        <div class="big-logo">
          <div class="lmis" data-aos="fade-right"data-aos-duration="1500">LMIS.</div>
            <!-- <p>Loadency management information system</p> -->
        </div>
      </div>
       <div class="login-btn" data-aos="zoom-in"data-aos-duration="2000">
        <h6>Loadency sales system</h6>
        <br>
          <a href="login.php"><button >LOGIN</button></a>
          <a href="create_account.php"><button class="register-btn">REGISTER</button></a>
       </div>
    </div>
  </div>
  <script>
  AOS.init();
</script>
</body>