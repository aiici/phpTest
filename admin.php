<?php
session_start();


if (!isset($_SESSION['username']) || $_SESSION['username'] !== 'admin') {
    header("Location: login.php"); 
    exit();
}
error_reporting(E_ALL);
ini_set('display_errors', 1);
include('db.php');

if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit();
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
    <div class="content">
        <h2>欢迎进入后台管理</h2>
        
        <?php
        include('db.php');

        // 查询user表的总数量
        $sqlUser = "SELECT COUNT(*) as total_users FROM user";
        $resultUser = mysqli_query($conn, $sqlUser);

        if (!$resultUser) {
            die("数据库查询失败: " . mysqli_error($conn));
        }

        $rowUser = mysqli_fetch_assoc($resultUser);

        // 查询search_data表的总数量
        $sqlSearchData = "SELECT COUNT(*) as total_data FROM search_data";
        $resultSearchData = mysqli_query($conn, $sqlSearchData);

        if (!$resultSearchData) {
            die("数据库查询失败: " . mysqli_error($conn));
        }

        $rowSearchData = mysqli_fetch_assoc($resultSearchData);
        ?>

        <!-- 用户数量信息框 -->
        <div class="alert alert-primary" role="alert">
            用户总数量: <?php echo $rowUser['total_users']; ?>
        </div>

        <!-- search_data数量信息框 -->
        <div class="alert alert-secondary" role="alert">
            歌曲总数量: <?php echo $rowSearchData['total_data']; ?>
        </div>
    </div>

    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

