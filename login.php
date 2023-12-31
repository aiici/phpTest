<?php
include('db.php');

$message = ''; // 初始化消息变量

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // 使用参数化查询
    $sql = "SELECT * FROM user WHERE username=?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($result) {
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            if ($row['status'] == 1) {
                if (password_verify($password, $row['password'])) {
                    session_start();
                    $_SESSION['username'] = $username; // 将用户名保存在会话中

                    // 检查用户名是否为 "admin"，如果是，则重定向到 admin.php
                    if ($username == "admin") {
                        header("Location: admin.php");
                        exit();
                    } else {
                        header("Location: index.php");
                        exit();
                    }
                } else {
                    $message = "登录失败：密码不正确";
                }
            } elseif ($row['status'] == 2) {
                $message = "登录失败：此账号被禁用";
            }
        } else {
            $message = "登录失败：用户名不存在";
        }
    } else {
        $message = "登录失败：数据库查询失败";
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
