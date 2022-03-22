<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<style>
    html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  background: rgba(0,0,0,.5);
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.submit input[type="submit"]  {
    background-image: linear-gradient(to right, #2980b9 0%, #2c3e50  51%, #2980b9  100%)
}
.submit input[type="submit"]  {
    margin-top: 5px;
    padding: 6px 138px;
    text-align: center;
    text-transform: uppercase;
    transition: 0.5s;
    background-size: 200% auto;
    color: white;            
    border-radius: 10px;
    display: block;
    cursor: pointer;
}

.submit input[type="submit"]:hover {
    background-position: right center; /* change the direction of the change here */
    color: #fff;
    text-decoration: none;
}
        
.exchange {
    display: flex;
    justify-content: space-between;
    font-size: 12px;
    margin: 10px 0;
}
.exchange a {
    text-decoration: none;
    color: #6E85B2;
}
.exchange .register p{
    color: white;
}
.exchange .forget {
    margin-left: 79px;

}

</style>
<body>

<div class="login-box">
    <h2>Login</h2>
    <form action="" method="post">
        <div class="user-box">
            <input type="text" name="users_fullname" required="">
            <label>Fullname</label>
        </div>

        <div class="user-box">
            <input type="text" name="users_name" required="">
            <label>Username</label>
        </div>

        <div class="user-box">
            <input type="password" name="users_password" required="">
            <label>Password</label>
        </div>

        <div class="user-box">
            <input type="text" name="users_email" required="" >
            <label>Email</label>
        </div>

        <div class="submit">
            <input type="submit" name="register" value="Register">
        </div>

        <div class="exchange">
            <div class="register">
                <p>Already have account. <a href="./login.php">Login</a></p>
            </div>
            <div class="forget">
                <p><a href="#"><i>Forget password</i</a></p>
            </div>
        </div>
        
    </form>
  </div>

  <?php
         include("connect.php");

        if (isset($_POST["register"])) {
            //lấy thông tin từ các form bằng phương thức POST
            $users_fullname = $_POST["users_fullname"];
            $users_name = $_POST["users_name"];
            $users_email = $_POST["users_email"];
            $users_password = $_POST["users_password"];

            $sql = "INSERT INTO users_infor(users_id,
                                        users_name,
                                        users_password,
                                        users_fullname,
                                        users_email)
                                VALUES (NULL,
                                        '$users_name',
                                        '$users_password',
                                        '$users_fullname',
                                        '$users_email'
                                    )";

            $result = mysqli_query($connect, $sql);
            if($result) {
              echo"<scrip>alert('Createing new account successfully!')</script>";
              echo"<script>window.open('login.php','_self')</script>";
            } else {
                echo ' Dang ki that bai';
            }
        }

?>
  
</body>
</html>