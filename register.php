<?php
include('db.php');

$message = ''; // 初始化消息变量

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO user (username, password) VALUES ('$username', '$password')";
    
    if (mysqli_query($conn, $sql)) {
        $message = "注册成功！";
    } else {
        $message = "注册失败：" . mysqli_error($conn);
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
