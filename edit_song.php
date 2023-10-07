<?php
session_start();

// 检查用户是否已登录，且用户名为admin
if (!isset($_SESSION['username']) || $_SESSION['username'] !== 'admin') {
    header("Location: index.php"); // 重定向到登录页面或其他适当的页面
    exit();
}

include('db.php');

if (isset($_GET['id'])) {
    $songId = $_GET['id'];

    // 查询数据库以获取要编辑的歌曲信息
    $sql = "SELECT * FROM search_data WHERE data_id = $songId";
    $result = mysqli_query($conn, $sql);

    if (!$result) {
        die("数据库查询失败: " . mysqli_error($conn));
    }

    $songData = mysqli_fetch_assoc($result);

    // 处理表单提交
    if (isset($_POST['update_song'])) {
        $newTitle = mysqli_real_escape_string($conn, $_POST['title']);
        $newAddr = mysqli_real_escape_string($conn, $_POST['addr']);

        // 更新数据库中的歌曲信息
        $updateSql = "UPDATE search_data SET title = '$newTitle', addr = '$newAddr' WHERE data_id = $songId";
        $updateResult = mysqli_query($conn, $updateSql);

        if ($updateResult) {
            // 重定向回歌曲管理页面或其他适当的页面
            header("Location: song_management.php");
            exit();
        } else {
            echo "更新失败: " . mysqli_error($conn);
        }
    }
} else {
    echo "无效的歌曲ID";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        /* 左侧导航栏样式 */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #333;
            padding-top: 20px;
        }
        
        .sidebar a {
            padding: 10px 25px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }
        
        .sidebar a:hover {
            background-color: #555;
        }
        
        .content {
            margin-left: 270px; 
            padding: 20px;
        }
        .btn-danger{
            margin-left: 25px;
        }
    </style>
</head>
<body>
    <!-- 左侧导航栏 -->
    <div class="sidebar">
        <a href="admin.php">首页</a>
        <a href="song_management.php">歌曲管理</a>
        <a href="user_management.php">用户管理</a>
        <form method="POST">
            <button type="submit" name="logout" class="btn btn-danger">登出</button>
        </form>
    </div>
    <div class="container">
        <h2>编辑歌曲</h2>
        <form method="POST">
            <div class="form-group">
                <label for="title">歌名:</label>
                <input type="text" class="form-control" id="title" name="title" value="<?php echo $songData['title']; ?>">
            </div>
            <div class="form-group">
                <label for="addr">链接:</label>
                <input type="text" class="form-control" id="addr" name="addr" value="<?php echo $songData['addr']; ?>">
            </div>
            <button type="submit" name="update_song" class="btn btn-primary">保存</button>
        </form>
    </div>
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
