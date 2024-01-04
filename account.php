<?php
include('helper/server/db.php');
var_dump('$grade')
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
                    <div><span>ห้อง : </span><?php echo $_SESSION['room'];?></div>
                    <div><span>รหัสนักเรียน : </span><?php echo $_SESSION['username'];?></div>
                    <div><span>เกรดเฉลี่ย : </span>5 เทอม <span class="text-danger"><?php echo $_SESSION['grade'];?></span>, คณิต <span class="text-danger"><?php echo $_SESSION['math'];?></span>, วิทย์ <span class="text-danger"><?php echo $_SESSION['sci'];?></span></div>
                    <div><span>ติด 0 ร มส มผ : </span> <span class="badge bg-danger"></span></div>
                    <hr>
                <?php
                } else {
                ?>
            <?php } ?>
            
            
        </div>
        <div>
            <h4>แนวปฏิบัติและข้อควรทราบ</h4>
            <p>ในการสมัครเรียน (รอบโควตา) สำหรับนักเรียนชั้นมัธยมศึกษาปีที่ 3 โรงเรียนภูเขียว มีแนวปฏิบัติและข้อควรทราบ ดังนี้</p>
            <ul>
                <li>มีแผนการเรียนให้สมัครทั้งสิ้น 3 แผนการเรียน ดังนี้
                    <ol>
                        <li>แผนการเรียนวิทยาศาสตร์ – คณิตศาสตร์</li>
                        <li>แผนการเรียนภาษาอังกฤษ – คณิตศาสตร์</li>
                        <li>แผนการเรียนการจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</li>
                    </ol>
                </li>
                <li>นักเรียน<strong><span style="color: rgb(255, 0, 0);">สามารถสมัครได้เพียง 1 แผนการเรียน</span></strong></li>
                <li>หากต้องการเปลี่ยนแปลงแผนการเรียนที่สมัครนักเรียนจะต้องส่งแบบฟอร์ม <a href="https://drive.google.com/file/d/17p5Unp99m6RwB53ny6BSSKGPxJb9n6fU/view?usp=sharing" target="_blank">นร.01.1</a> ที่ห้องวิชาการ โรงเรียนภูเขียว</li>
            </ul>
            <form method="post" action="pick.php">
                <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1" name="agree" required=""><label class="form-check-label" for="formCheck-1">ข้าพเจ้ารับทราบข้อกำหนดและเงื่อนไขการสมัครเรียนรอบโควตาโรงเรียนภูเขียวดังที่ปรากฏด้านบนเรียนร้อยแล้ว</label></div>
                <div class="text-center" style="margin: 10px;"><button class="btn btn-primary" type="submit"><i class="far fa-edit"></i> สมัครเลย</button></div>
            </form>
        </div>
    </div>


    </main>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
</body>
</html>
    