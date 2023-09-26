<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

include('db.php');

// 处理登出
if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit();
}

// 查询data表
$data = [];
if (isset($_POST['keyword'])) {
    $keyword = $_POST['keyword'];
    $sql = "SELECT * FROM search_data WHERE title LIKE '%$keyword%'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
    }
} else {
    $sql = "SELECT * FROM search_data";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
    }
}

// 分页逻辑
$results_per_page = 10; // 每页显示的结果数量
$total_results = count($data); // 总结果数量
$total_pages = ceil($total_results / $results_per_page); // 总页数

if (!isset($_GET['page'])) {
    $current_page = 1;
} else {
    $current_page = $_GET['page'];
}

$start_index = ($current_page - 1) * $results_per_page;
$end_index = $start_index + $results_per_page;
?>

<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .jumbotron {
            padding: 2rem 3rem;
        }
        .btn{
            margin-right: 3px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">我的网站</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <form class="form-inline" method="POST">
                        <input type="text" name="keyword" class="form-control mr-sm-2" placeholder="搜索关键词" required>
                        <button type="submit" class="btn btn-outline-primary my-2 my-sm-0">搜索</button>
                    </form>
                </li>
                <li class="nav-item">
                    <form method="POST">
                        <button type="submit" name="logout" class="btn btn-danger">登出</button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="jumbotron">
            <h3 class="display-4 small-welcome">欢迎, <?php echo $_SESSION['username']; ?>！</h3>
            <h5>下列是今年比较流行的音乐</h5>
        </div>

        
        <!-- 显示查询结果 -->
        <?php if (empty($data)): ?>
            <div class="alert alert-warning" role="alert">没有找到匹配的结果</div>
        <?php else: ?>
            <table class="table">
                <thead>
                    <tr>
                        <th>歌名</th>
                        <th>评价</th>
                        <th>歌手</th>
                        <th>存入时间</th>
                        <th>点赞数</th>
                    </tr>
                </thead>
                <tbody>
                    <?php for ($i = $start_index; $i < $end_index; $i++): ?>
                        <?php if ($i < count($data)): ?>
                            <tr>
                                <td><?php echo $data[$i]['title']; ?></td>
                                <td><?php echo $data[$i]['artist']; ?></td>
                                <td><?php echo $data[$i]['genre']; ?></td>
                                <td><?php echo $data[$i]['release_date']; ?></td>
                                <td><?php echo $data[$i]['popularity']; ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endfor; ?>
                </tbody>
            </table>
        <?php endif; ?>
        
        <!-- 分页 -->
        <nav aria-label="Page navigation" class="mt-4">
            <ul class="pagination justify-content-center">
                <?php for ($page = 1; $page <= $total_pages; $page++): ?>
                    <li class="page-item<?php if ($current_page == $page) echo ' active'; ?>">
                        <a class="page-link" href="?page=<?php echo $page; ?>"><?php echo $page; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </nav>
    </div>

    <!-- 页脚 -->
    <footer class="bg-light text-center py-3">
        © <?php echo date("Y"); ?> 我的网站. All Rights Reserved.
    </footer>
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
