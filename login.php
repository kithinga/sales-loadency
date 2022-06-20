<?php
 include "main_header.php";
?>
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
</head>
<body>
    <div class="container-fluid">
    <div class="row justify-content-center">
             <div class="col-lg-6">
                <div class="cr-a">
                    <h2>LOGIN TO LOADENCY SALES</h2>
                </div>
             </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="login " data-aos="fade-right"data-aos-duration="1500">
                    <h1>Login</h1>
                    <form action="authenticate.php" method="post">
                        <label for="username">
                            <i class="fas fa-user"></i>
                        </label>
                        <input type="text" name="username" placeholder="Username" id="username" required><br>
                        <label for="password">
                            <i class="fas fa-lock"></i>
                        </label>
                        <input type="password" name="password" placeholder="Password" id="password" required><br>
                        <button type="submit" name="">Login</button>
                        <a href="create_account.php"> <button type="button" class="reg-acc"name="reg-acc">Create account</button></a>
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