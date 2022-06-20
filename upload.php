
<?php 
include "config.php";
include "shared_header.php";

if (!isset($_SESSION['loggedin'])) {
	header('Location: index.php');
	exit;
}
else{?>
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
