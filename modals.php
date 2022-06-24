<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <!-- <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div> -->
                            <div class="modal-body-2">
                                <div class="login" data-aos="fade-right" data-aos-duration="1500">
                                    <p></p>
                                    <h1>Add new user <i class="fa fa-user"></i></h1>
                                    <form action="register.php" method="post" autocomplete="off">
                                        <label for="username">
                                            <i class="fas fa-user"></i>
                                        </label>
                                        <input type="text" name="username" placeholder="Username" id="username" required><br>
                                        <label for="user-role">
                                            <i class="fa fa-hand-o-right"></i>
                                        </label>
                                        <input type="text" name="user_role" placeholder="User role" id="user-role" required><br>
                                        <label for="password">
                                            <i class="fas fa-eye" onclick="myFunction()"></i>
                                        </label>
                                        <input type="password" name="password" placeholder="Password" id="id_password" required> <br>
                                        <label for="email">
                                            <i class="fas fa-envelope"></i>
                                        </label>
                                        <input type="email" name="email" placeholder="Email" id="email" required><br>
                                        <button type="submit" class="btn-reg">Register new user <i class="fa fa-square-plus"></i></button>
                                        <!-- <a href="login.php"> <button type="button" class="reg-acc" name="">Login</button></a> -->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>