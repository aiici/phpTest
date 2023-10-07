<?php
session_start();

// 检查用户是否已登录，且用户名为admin
if (!isset($_SESSION['username']) || $_SESSION['username'] !== 'admin') {
    header("Location: index.php"); // 重定向到登录页面或其他适当的页面
    exit();
}

include('db.php');

// 分页参数
$itemsPerPage = 10;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$offset = ($page - 1) * $itemsPerPage;

// 查询user表的数据，包括状态为1（启用）和2（禁用）的用户
$sql = "SELECT * FROM user WHERE status IN (1, 2) LIMIT $offset, $itemsPerPage";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die("数据库查询失败: " . mysqli_error($conn));
}

$userData = [];

while ($row = mysqli_fetch_assoc($result)) {
    $userData[] = $row;
}

if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit();
}

// 处理删除用户、禁用用户和启用用户操作
if (isset($_POST['delete_user'])) {
    $userId = $_POST['user_id'];
    $sql = "DELETE FROM user WHERE user_id = $userId";
    if (mysqli_query($conn, $sql)) {
        // 成功删除用户
        header("Location: user_management.php");
        exit();
    } else {
        echo "删除用户失败: " . mysqli_error($conn);
    }
} elseif (isset($_POST['disable_user'])) {
    $userId = $_POST['user_id'];
    $sql = "UPDATE user SET status = 2 WHERE user_id = $userId";
    if (mysqli_query($conn, $sql)) {
        // 成功禁用用户
        header("Location: user_management.php");
        exit();
    } else {
        echo "禁用用户失败: " . mysqli_error($conn);
    }
} elseif (isset($_POST['enable_user'])) {
    $userId = $_POST['user_id'];
    $sql = "UPDATE user SET status = 1 WHERE user_id = $userId";
    if (mysqli_query($conn, $sql)) {
        // 成功启用用户
        header("Location: user_management.php");
        exit();
    } else {
        echo "启用用户失败: " . mysqli_error($conn);
    }
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
        .btn-danger {
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
        <h2>用户管理</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>用户名</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($userData as $user): ?>
                    <tr>
                        <td><?php echo $user['username']; ?></td>
                        <td>
                            <?php if ($user['status'] == 1): ?>
                                启用
                            <?php elseif ($user['status'] == 2): ?>
                                禁用
                            <?php endif; ?>
                        </td>
                        <td>
                            <form method="POST" style="display: inline;">
                                <input type="hidden" name="user_id" value="<?php echo $user['user_id']; ?>">
                                <?php if ($user['status'] == 1): ?>
                                    <button type="submit" name="disable_user" class="btn btn-warning btn-sm">禁用</button>
                                <?php elseif ($user['status'] == 2): ?>
                                    <button type="submit" name="enable_user" class="btn btn-success btn-sm">启用</button>
                                <?php endif; ?>
                            </form>
                            <form method="POST" style="display: inline;">
                                <input type="hidden" name="user_id" value="<?php echo $user['user_id']; ?>">
                                <button type="submit" name="delete_user" class="btn btn-danger btn-sm" onclick="return confirm('确认删除吗？')">删除</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <!-- 分页链接 -->
        <?php
        $sql = "SELECT COUNT(*) as total_users FROM user WHERE status IN (1, 2)";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $totalUsers = $row['total_users'];
        $totalPages = ceil($totalUsers / $itemsPerPage);
        ?>
        <nav>
            <ul class="pagination">
                <?php for ($i = 1; $i <= $totalPages; $i++): ?>
                    <li class="page-item <?php echo $i === $page ? 'active' : ''; ?>">
                        <a class="page-link" href="user_management.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </nav>
    </div>

    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
