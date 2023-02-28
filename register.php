<?php 

    session_start();

    require_once "connection.php";

    if (isset($_POST['submit'])) {

        $username = $_POST['username'];
        $password = $_POST['password'];
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $nickname = $_POST['nickname'];
        $num = $_POST['num'];


        $user_check = "SELECT * FROM user WHERE username = '$username' LIMIT 1";
        $result = mysqli_query($conn, $user_check);
        $user = mysqli_fetch_assoc($result);

        if ($user['username'] === $username) {
            echo "<script>alert('Username already exists');</script>";
        } else {
            $passwordenc = md5($password);

            $query = "INSERT INTO user (username, password, firstname, lastname, nickname, num, role)
                        VALUE ('$username', '$passwordenc', '$firstname', '$lastname', '$nickname', '$num', 'm')";
            $result = mysqli_query($conn, $query);
            if ($result) {
                $_SESSION['success'] = "Insert user successfully";
                header("Location: index.php");
            } else {
                $_SESSION['error'] = "Something went wrong";
                header("Location: index.php");
            }
        }

    }


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register Page</title>

    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        .flex-container {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 110vh;
            background-color: #F0F8FF;
        }
    </style>
</head>
<body>
<div class="flex-container">
        <div class="container">
        <div class="shadow rounded p-5 bg-body h-100">
        <h1 class="mb-5">สมัครสมาชิก</h1>
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">ชื่อผู้ใช้</label>
                    <input type="text" class="form-control" name="username" placeholder="Username" id="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">รหัสผ่าน</label>
                    <input type="password" class="form-control" name="password" placeholder="Password" id="password" required>
            </div>
            <div class="mb-3">
                <label for="firstname" class="form-label">ชื่อจริง</label>
                    <input type="text" class="form-control" name="firstname" placeholder="Firstname" id="firstname" required>
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">นามสกุลจริง</label>
                    <input type="text" class="form-control" name="lastname" placeholder="Lastname" id="lastname" required>
            </div>
            <div class="mb-3">
                <label for="nickname" class="form-label">ชื่อเล่น</label>
                    <input type="text" class="form-control" name="nickname" placeholder="nickname" id="nickname" required>
            </div>
            <div class="mb-3">
                <label for="num" class="form-label">เบอร์โทรศัพท์มือถือ</label>
                    <input type="number" class="form-control" name="num" placeholder="number" id="num" required>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">register</button><br>
            <a href="index.php">Go back to index</a>
        </form>
        </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
</body>
</html>