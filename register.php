<?php
include('db.php');

$message = ''; // 初始化消息变量

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // 首先检查用户名是否已存在
    $check_sql = "SELECT * FROM user WHERE username=?";
    $check_stmt = mysqli_prepare($conn, $check_sql);
    mysqli_stmt_bind_param($check_stmt, "s", $username);
    mysqli_stmt_execute($check_stmt);
    $check_result = mysqli_stmt_get_result($check_stmt);

    if (mysqli_num_rows($check_result) > 0) {
        $message = "注册失败：用户名已被注册";
    } else {
        // 如果用户名不存在，则进行插入操作
        $insert_sql = "INSERT INTO user (username, password) VALUES (?, ?)";
        $insert_stmt = mysqli_prepare($conn, $insert_sql);
        mysqli_stmt_bind_param($insert_stmt, "ss", $username, $password);

        if (mysqli_stmt_execute($insert_stmt)) {
            $message = "注册成功！";
        } else {
            $message = "注册失败：" . mysqli_error($conn);
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>注册</h2>
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
                    <button type="submit" class="btn btn-primary">注册</button>
                    <a href="login.php" class="btn btn-success ml-2">登陆</a>
                </form>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
