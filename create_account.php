
<?php
 include "config.php";
 include "shared_header.php";
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
             <div class="col-lg-6">
                <div class="cr-a">
                    <h2>CREATE AN ACCOUNT</h2>
                </div>
             </div>
        </div>
        <div class="row justify-content-center">
       
            <div class="col-lg-6">
                <div class="login " data-aos="fade-right"data-aos-duration="1500">
                    <p></p>
                <h1>Register</h1>
			    <form action="register.php" method="post" autocomplete="off">
				<label for="username">
					<i class="fas fa-user"></i>
				</label>
				<input type="text" name="username" placeholder="Username" id="username" required><br>
				<label for="password">
					<i class="fas fa-lock"></i>
				</label>
				<input type="password" name="password" placeholder="Password" id="password" required><br>
				<label for="email">
					<i class="fas fa-envelope"></i>
				</label>
				<input type="email" name="email" placeholder="Email" id="email" required><br>
				<button type="submit">Register</button>
			</form>
                </div>
            </div>
        </div>
    </div>
    <script>
  AOS.init();
</script>
</body>

</html>
