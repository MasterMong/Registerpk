<?php
require('helper/server/db.php');
if(!isset($_SESSION['username']) || $_SESSION['username'] != true) {
    header("Location: regis.php");
} else {
    echo(""); 
}
$username = $_SESSION['username'];

$check_plan_sql = "SELECT * FROM students WHERE username = '$username' AND plan IS NOT NULL";
$check_plan_result = $conn->query($check_plan_sql);

if ($check_plan_result->num_rows > 0) {
    $row = $check_plan_result->fetch_assoc();
    $plan = $row['plan'];

    switch ($plan) {
        case 'วิทยาศาสตร์ – คณิตศาสตร์':
            $img_src = 'helper/plan/sci.gif';
            $detail_plan = '
                <li>GPAX ตั้งแต่ 2.75 <span class="badge bg-success">ผ่านเกณฑ์</span> </li>
                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5 <span class="badge bg-success">ผ่านเกณฑ์</span> </li>
                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5 <span class="badge bg-success">ผ่านเกณฑ์</span> </li>
                <li>ผลการเรียน ติด 0 ร มส มผ <span class="badge bg-success">ไม่มี</span> </li>
                ';
            break;

        case 'ภาษาอังกฤษ – คณิตศาสตร์':
            $img_src = 'helper/plan/eng.gif';
            $detail_plan = '<li>GPAX ตั้งแต่ 2.75 <span class="badge bg-success">ผ่านเกณฑ์</span> </li>';
            break;

        case 'การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL':
            $img_src = 'helper/plan/mou.gif';
            $detail_plan = '<li>ผลการเรียน ติด 0 ร มส มผ <span class="badge bg-success">ไม่มี</span> </li>' ;
            break;

        default:
            header("Location: account.php"); 
            exit();
    }

} else {
   
    echo "";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ข้อมูลผู้สมัคร | โรงเรียนภูเขียว</title>
    <link rel="stylesheet" href="helper/bootstrap/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/5134196601.js" crossorigin="anonymous"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="helper/style.css">
</head>
<body style="font-family: Prompt, sans-serif;">
    <?php require('helper/source/header.php'); ?>
    <main>
        <div class="container">

            <div style="padding-top: 10px;">
            
                <h4>ข้อมูลผู้สมัคร</h4>
                <?php
                if (isset($_SESSION['username'])) {
                ?>
                    <div><span>ชื่อ - สกุล : </span><span><?php echo $_SESSION['name'];?></span></div>   
                    <div><span>ห้อง : 3/</span><?php echo $_SESSION['room'];?></div>
                    <div><span>รหัสนักเรียน : </span><?php echo $_SESSION['username'];?></div>
                    <div><span>เกรดเฉลี่ย : </span>5 เทอม <span class="text-danger"><?php echo $_SESSION['grade'];?></span>, คณิต <span class="text-danger"><?php echo $_SESSION['math'];?></span>, วิทย์ <span class="text-danger"><?php echo $_SESSION['sci'];?></span></div>
                    <?php
                    if ($_SESSION['zero'] == 1) {
                    ?>
                        <div><span>ติด 0 ร มส มผ : </span> <span class="badge bg-danger">มี</span></div>
                        <?php
                    } else {
                        ?>
                        <div><span>ติด 0 ร มส มผ : </span> <span class="badge bg-success">ไม่มี</span></div>
                        <?php
                    }
                    ?>
                    <hr>
                <?php
                } else {
                    
                ?>
                <?php } ?>
                <hr>
            </div>
            <div>
                <h4>แผนการเรียนที่สมัคร</h4>
                <div class="row">
                <div class="col-md-5">
                <?php echo "<img src='$img_src' alt='' width='100%'>"; ?>
            </div>
            <div class="col-md-7">
                <p style="margin: 0;">แผนการเรียน<?php echo $plan; ?> </p>
                <ul>
                <?php echo $detail_plan; ?>
                </ul>
            
            </div>
            </div>
                <hr>
                <p>หากต้องการเปลี่ยนแปลงแผนการเรียนให้นักเรียนส่งแบบฟอร์ม <a href="https://drive.google.com/file/d/17p5Unp99m6RwB53ny6BSSKGPxJb9n6fU/view?usp=sharing" target="_blank">นร.01.1</a> ที่ห้องวิชาการ โรงเรียนภูเขียว</p>
            </div>
        </div>


    </main>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
</body>
</html>
    