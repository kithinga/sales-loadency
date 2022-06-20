
<?php 
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
	header('Location: index.php');
	exit;
}
else{?>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Import CSV File into MySQL using PHP</title>
</head>

<body>
  <div class="container">
    <form action="functions.php" method="post" enctype="multipart/form-data">
      <div class="input-group">
        <div class="custom-file">
          <input type="file" class="custom-file-input" id="customFileInput" aria-describedby="customFileInput" name="file">
          <label class="custom-file-label" for="customFileInput">Select file</label>
        </div>
        <div class="input-group-append">
           <input type="submit" name="submit" value="Upload" class="btn btn-primary">
        </div>
      </div>
  </form>
  </div>

</body>

</html>
<?php }?>
