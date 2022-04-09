<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
   
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/header.css">

    <title>Document</title>
</head>
<body>
    <!-- HEADER -->
    <header>
        <div class="head--left">
            <!-- LOGO -->
            <img src='./img/ATN.png ' alt="LOGO" class="logo">
        </div>
         
        <div class="head--right">
            <div class="head--right up">
                    <div class="socialmedia">
                        <nav >
                            <a href="">
                                <i class="bi bi-facebook"></i>
                            </a>
                            <a href="">
                                <i class="bi bi-instagram"></i>
                            </a>
                            <a href="">
                                <i class="bi bi-twitter"></i>
                            </a>
                            <a href="">
                                <i class="bi bi-twitch"></i>
                            </a>
                            <a href="">
                                <i class="bi bi-youtube"></i>
                            </a>
                        </nav>
                    </div>
                    <div class="login-register">
                        <nav>
                            <a href="./login.php">Login</a>
                            <a href="./register.php">Register</a>
                        </nav>
                    </div>
            </div>

            <div class="head--right down">
                <nav class="navbar">
                    <a href="">Home</a>
                    <a href="All-Product.php">All product</a>

                    <div class="dropdown">
                        <button class="dropbtn">Toy</button>
                        <div class="dropdown-content">
                        <a href="#">Boys</a>
                        <a href="#">Girls</a>
                        </div>
                      </div>
                    
                    <a href="">Accessories</a>
                    <a href="">About us</a>
                    <a href="adding.php">Adding</a>
                </nav>
            </div>
        </div>
    </header>
    <!-- CAROUSEL -->
    <div class="carousel">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                <img src="./img/banner 2.jpg" class="d-block w-100" alt="Banner">
                </div>
                <div class="carousel-item">
                <img src="./img/banner 2.jpg" class="d-block w-100" alt="Banner">
                </div>
                <div class="carousel-item">
                <img src="./img/banner 2.jpg" class="d-block w-100" alt="Banner">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            </div>
    </div>
    <!-- PRODCUCT -->
    <div class="product">
        <section>New Arrivals</section>
        <div class="product new-arrivals">

            <?PHP 
                include("connect.php");
                $sql = "SELECT * FROM clothing ORDER BY RAND ( ) LIMIT 4";
                $result = mysqli_query($connect, $sql);

                //tìm và trả về kết quả dưới dạng 1 mảng
                // dùng mysql_fetch_array or mysql_fetch_assoc

                while($row =mysqli_fetch_array($result)){
                    // lấy dữ liệu từ các dòng truy vấn được trong CSDL ra
                    $clothing_id = $row['clothing_id'];
                    $clothing_name = $row['clothing_name'];
                    $clothing_price =$row['clothing_price'];
                    $clothing_image =$row['clothing_image'];
                    $clothing_description = $row['clothing_description'];

                    echo" <div class='single_clothing'>
                        <a href='detail_product.php?id=$clothing_id'>
                        <img src='img/$clothing_image' />
                        <h4> $clothing_name </h4>
                        <p> Price : $clothing_price VND </p>
                        </a>
                        </div>
                        ";
                    }     
                    // remove clothing_des and button cart
            ?>
        </div>
            <section>Hot Sales</section>
        <div class="product sales-up">
            <?PHP 
                    include("connect.php");
                    $sql = "SELECT * FROM clothing ORDER BY RAND ( ) LIMIT 4";
                    $result = mysqli_query($connect, $sql);

                    //tìm và trả về kết quả dưới dạng 1 mảng
                    // dùng mysql_fetch_array or mysql_fetch_assoc

                    while($row =mysqli_fetch_array($result)){
                        // lấy dữ liệu từ các dòng truy vấn được trong CSDL ra
                        $clothing_id = $row['clothing_id'];
                        $clothing_name = $row['clothing_name'];
                        $clothing_price =$row['clothing_price'];
                        $clothing_image =$row['clothing_image'];
                        $clothing_description = $row['clothing_description'];

                        echo" <div class='single_clothing'>
                            <a href='detail_product.php?id=$clothing_id'>
                            <img src='img/$clothing_image' />
                            <h4> $clothing_name </h4>
                            <p> Price : $clothing_price VND </p>
                            </a>
                            </div>
                            ";
                        }     
                        // remove clothing_des and button cart
                ?>
        </div>
    </div>
    <!-- FOOTER -->
    <footer class="footer-distributed">

    <div class="footer-left">

        <img src="./img/ATN.png" alt="LOGO"  class="logo">

        <p class="footer-links">
            <a href="#" class="link-1">Home</a>
            
            <a href="#">Blog</a>
        
            <a href="#">Pricing</a>
        
            <a href="#">About</a>
            
            <a href="#">Faq</a>
            
            <a href="#">Contact</a>
        </p>

        <p class="footer-company-name">N'Kien © 2019</p>
    </div>

    <div class="footer-center">

        <div>
            <i class="bi bi-map"></i>
            <p><span>No 1911, Thuy Hai Village</span> Thai Thuy District, Thai Binh</p>
        </div>

        <div>
            <i class="bi bi-telephone"></i>
            <p>+84.962.62.1911</p>
        </div>

        <div>
            <i class="bi bi-envelope"></i>
            <p><a href="kienndbhaf200045@fpt.edu.vn">kienndbhaf200045@fpt.edu.vn</a></p>
        </div>

    </div>

    <div class="footer-right">

        <p class="footer-company-about">
            <span>About N'Kien</span>
            We alwas care your oufit, care mix-ways that you put on your body.<br>
                DYNAMIC | FASHION | TRENDY.
        </p>

        <div class="footer-icons">

            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-twitter"></i></a>
            <a href="#"><i class="bi bi-twitch"></i></a>

        </div>

    </div>

</footer>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
