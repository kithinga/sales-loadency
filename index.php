<?php include "config.php"  ?>

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
      <div class="col-lg-8">
          <div class="user-buttons">
            <div class="user-start">
               ds
            </div>
          <button type="button" class="btn btn-primary">Primary</button>
        <button type="button" class="btn btn-secondary">Secondary</button>
        <button type="button" class="btn btn-success">Success</button>
        <button type="button" class="btn btn-danger">Danger</button>
        <button type="button" class="btn btn-warning">Warning</button>
        <button type="button" class="btn btn-info">Info</button>
        <button type="button" class="btn btn-light">Light</button>
        <button type="button" class="btn btn-dark">Dark</button>
          </div>
      </div>
    </div>
  </div>
</body>