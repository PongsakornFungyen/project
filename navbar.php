
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>

<nav class="navbar navbar-light bg-light fixed-top mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="user/menu7.php"><i class="bi bi-shop"></i> ร้านส้มตำป้าเชียร</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">สั่งอาหารงานเลี้ยง</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <hr>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user/menu7.php">เมนู</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              สั่งอาหาร
            </a>
            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
              <li><a class="dropdown-item" href="user/index.php">ส้มตำ</a></li>
              <li><a class="dropdown-item" href="user/index1.php">ไก่ทอด</a></li>
              <li><a class="dropdown-item" href="user/index2.php">ลาบ/น้ำตก/ตับหวาน</a></li>
              <li><a class="dropdown-item" href="user/index3.php">ตำแตง/มะม่วง/ถั่วฝักยาว</a></li>
              <li><a class="dropdown-item" href="user/index4.php">หน่อไม้</a></li>
              <li><a class="dropdown-item" href="user/index5.php">ขนมจีน/ข้าวเหนียว</a></li>
              <li><a class="dropdown-item" href="user/index6.php">เหลา</a></li>
              <li><a class="dropdown-item" href="user/index7.php">ทดสอบ</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              เพิ่มรูปหลักฐาน / รูปใบเสนอราคา
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="user/index1-2.php">รูปใบเสนอราคา</a></li>
            <li><a class="dropdown-item" href="user/index1-1.php">รูปหลักฐานเงินมัดจำ</a></li>
            <!--            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>-->
            </ul>
          </li>
          <!--<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="php-crud-master/index.php">ทดสอบ</a>
          </li>-->
        </ul>
      </div>
    </div>
  </div>
</nav>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
