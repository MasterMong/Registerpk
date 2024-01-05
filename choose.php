<?php
require('helper/server/db.php');
if(!isset($_SESSION['username']) || $_SESSION['username'] != true) {
    header("Location: regis.php"); 
    exit();
}
require('helper/server/checkplan.php')

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
            <h4>สมัครเรียนรอบโควตา</h4>
            <?php
                if (isset($_SESSION['username'])) {
                ?>
                    <?php
                    if ($_SESSION['zero'] == 1) {
                        ?>
                        <div><span><?php echo $_SESSION['name'];?></span><span> เกรดเฉลี่ย : </span>5 เทอม <span class="text-danger"><?php echo $_SESSION['grade'];?></span>, คณิต <span class="text-danger"><?php echo $_SESSION['math'];?></span>, วิทย์ <span class="text-danger"><?php echo $_SESSION['sci'];?></span>, <span>ติด 0 ร มส มผ : </span> <span class="badge bg-danger">มี</span><span class="text-end"><span class="text-end">คะแนนความประพฤติ : </span><?php echo $_SESSION['point'];?> คะแนน</span></div>
                        <div class="text-end"><span>คะแนนความประพฤติ : </span><?php echo $_SESSION['point'];?>คะแนน</div>
                        <?php
                    } else {
                        ?>
                        <div><span><?php echo $_SESSION['name'];?></span><span> เกรดเฉลี่ย : </span>5 เทอม <span class="text-danger"><?php echo $_SESSION['grade'];?></span>, คณิต <span class="text-danger"><?php echo $_SESSION['math'];?></span>, วิทย์ <span class="text-danger"><?php echo $_SESSION['sci'];?></span>, <span>ติด 0 ร มส มผ : </span> <span class="badge bg-success">ไม่มี</span><span class="text-end"><span class="text-end">คะแนนความประพฤติ : </span><?php echo $_SESSION['point'];?> คะแนน</span></div>
                        
                        <?php
                    }
                    ?>
                    <hr>
                <?php
                } else {
                    
                ?>
            <?php } ?>
            
        </div>
        <form method="post" action="helper/server/success.php">
            <h6 class="mb-3"><span>กรุณา<strong>เลือกแผนการเรียน</strong>ที่ต้องการสมัคร</span></h6>
            <div class="card-deck mb-3">
                <div class="row">
                    <div class="card col-lg-4 mb-3">
                        <div>
                            <img class="card-img-top" src="helper/plan/sci.gif">
                        </div>
                        <div class="card-body">
                            <h6 class="card-title">วิทยาศาสตร์ – คณิตศาสตร์ : SMT</h6>
                            <hr>
                            <div>
                                <p>คุณสมบัติ</p>
                                <ul>
                                    <li>GPAX ตั้งแต่ 2.75</li> 
                                    <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li> 
                                    <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li> 
                                    <li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li> 
                                </ul>
                            </div>
                            <button class="btn btn-primary animated-button" name="plan" value="วิทยาศาสตร์ – คณิตศาสตร์" type="submit"><i class="far fa-edit"></i>&nbsp;สมัคร</button></form>
                        </div>
                    </div>
                    <div class="card col-lg-4 mb-3">
                        <div>
                            <img class="card-img-top" src="helper/plan/eng.gif">
                        </div>
                        <div class="card-body ">
                            <h6 class="card-title">ภาษาอังกฤษ – คณิตศาสตร์</h6>
                            <hr>
                            <div>
                                <p>คุณสมบัติ</p>
                                <ul>
                                    <li>GPAX ตั้งแต่ 2.75</li> 
                                </ul>
                            </div>
                            <button class="btn btn-primary animated-button" name="plan" value="ภาษาอังกฤษ – คณิตศาสตร์" type="submit"><i class="far fa-edit"></i>&nbsp;สมัคร</button></form>
                        </div>
                    </div>
                    <div class="card col-lg-4 mb-3">
                        <div>
                            <img class="card-img-top" src="helper/plan/mou.gif">
                        </div>
                        <div class="card-body">
                            <h6 class="card-title">การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</h6>
                            <hr>
                            <div>
                                <p>คุณสมบัติ</p>
                                <ul>
                                    <li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                </ul>
                            </div>
                            <button class="btn btn-primary animated-button" name="plan" value="การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL" type="submit"><i class="far fa-edit"></i>&nbsp;สมัคร</button></form>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    </main>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
</body>
</html>
    