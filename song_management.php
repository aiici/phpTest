<?php
session_start();

// 检查用户是否已登录，且用户名为admin
if (!isset($_SESSION['username']) || $_SESSION['username'] !== 'admin') {
    header("Location: index.php"); // 重定向到登录页面或其他适当的页面
    exit();
}

include('db.php');

$successMessage = '';
$errorMessage = '';

if (isset($_POST['delete_song'])) {
    $id = $_POST['id'];
    $deleteSql = "DELETE FROM search_data WHERE data_id = $id";
    $deleteResult = mysqli_query($conn, $deleteSql);

    if ($deleteResult) {
        $successMessage = '删除成功！';
    } else {
        $errorMessage = '删除失败：' . mysqli_error($conn);
    }
}

// 分页参数
$itemsPerPage = 10;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$offset = ($page - 1) * $itemsPerPage;

// 查询search_data表的数据
$sql = "SELECT * FROM search_data LIMIT $offset, $itemsPerPage";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die("数据库查询失败: " . mysqli_error($conn));
}

$searchData = [];

while ($row = mysqli_fetch_assoc($result)) {
    $searchData[] = $row;
}

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
    <div class="container">
        <h2>歌曲管理</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>歌名</th>
                    <th>链接</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($searchData as $data): ?>
                    <tr>
                        <td><?php echo $data['title']; ?></td>
                        <td><?php echo $data['addr']; ?></td>
                        <td>
                            <!-- 在“修改”按钮链接中添加id参数 -->
                            <a href="edit_song.php?id=<?php echo $data['data_id']; ?>" class="btn btn-primary btn-sm">修改</a>
                            <form method="POST" style="display: inline;">
                                <input type="hidden" name="id" value="<?php echo $data['data_id']; ?>">
                                <button type="submit" name="delete_song" class="btn btn-danger btn-sm">删除</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <!-- 分页链接 -->
        <?php
        $sql = "SELECT COUNT(*) as total_data FROM search_data";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $totalData = $row['total_data'];
        $totalPages = ceil($totalData / $itemsPerPage);
        ?>
        <nav>
            <ul class="pagination">
                <?php for ($i = 1; $i <= $totalPages; $i++): ?>
                    <li class="page-item <?php echo $i === $page ? 'active' : ''; ?>">
                        <a class="page-link" href="song_management.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
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
