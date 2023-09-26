<?php
include('db.php');

$message = ''; // 初始化消息变量

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM user WHERE username='$username'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row['password'])) {
            session_start();
            $_SESSION['username'] = $username;
            header("Location: index.php");
            exit();
        } else {
            $message = "登录失败：密码不正确";
        }
    } else {
        $message = "登录失败：用户名不存在";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>登录</h2>
                <script>
                    window.onload = function() {
                        var message = "<?php echo $message; ?>";
                        if (message !== "") {
                            alert(message);
                        }
                    };
                </script>
                <form method="POST">
                    <div class="form-group">
                        <label>用户名:</label>
                        <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>密码:</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary">登录</button>
                    <a href="register.php" class="btn btn-success ml-2">注册</a>
                </form>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
