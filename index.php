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