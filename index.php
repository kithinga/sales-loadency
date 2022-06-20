<!DOCTYPE html>
<html lang="en">
<head>
    <title>LMIS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="sales.css">
    <!-- Css and fontawesome -->
    <script src="https://kit.fontawesome.com/4bfa3afdd7.js" crossorigin="anonymous"></script>
    <!-- Data Aos -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- Chart Js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"> </script>
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