<?php
require('helper/server/db.php');

if (!isset($_SESSION['username']) || $_SESSION['username'] != true) {
    header("Location: regis.php");
    exit();
}

if (!(isset($_SESSION['user_agreed']) && $_SESSION['user_agreed'] === true)) {
    header('location: account.php');
}

require('helper/server/checkplan.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เลือกแผนการเรียน | โรงเรียนภูเขียว</title>
    <link rel="stylesheet" href="helper/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://kit.fontawesome.com/5134196601.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="helper/style.css">
</head>

<body>
    <?php require('helper/source/header.php'); ?>
    <main>
        <div class="container">
            <div class="card-background" id="card--choose" data-aos="zoom-in" data-aos-delay="150" data-aos-duration="1000">
                <h4>สมัครเรียนรอบโควตา</h4>
                <div>
                    <span><?php echo $_SESSION['name']; ?></span>
                    <span> เกรดเฉลี่ย : </span>
                    <span class="badge bg-secondary" class="gpa">5 เทอม <?php echo $_SESSION['grade']; ?></span> 
                    <span class="badge bg-secondary" class="gpa">คณิต <?php echo $_SESSION['math']; ?></span> 
                    <span class="badge bg-secondary badge bg-secondary" class="gpa">วิทย์ <?php echo $_SESSION['sci']; ?></span>
                </div>
                <div><span>คะแนนความประพฤติ : </span><span class="badge bg-warning"><?php echo $_SESSION['point']; ?> คะแนน</span></div>
                <?php if (isset($_SESSION['username'])) : ?>
                    <span>
                        <?php
                        if ($_SESSION['zero'] == 1) {
                            echo 'ติด 0 ร มส มผ : <span class="badge bg-danger">มี</span>';
                        } else {
                            echo 'ติด 0 ร มส มผ : <span class="badge bg-success">ไม่มี</span>';
                        }
                        ?>
                    </span>
                    
                <?php endif; ?>
            </div>
            <hr>
            <form method="post" action="helper/server/success.php" id="confirmationForm" class="card-background" data-aos="zoom-in" data-aos-delay="400" data-aos-duration="1000">
                <h6 class="mb-5"><span>กรุณา<strong>เลือกแผนการเรียน</strong>ที่ต้องการสมัคร</span></h6>
                <div class="row">
                    <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="800" data-aos-duration="1000">
                        <div class="card mb-5" class="choose-plan--choose">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/sci.gif">
                            </div>
                            <div class="card-body ">
                                <h5 class="card-title text-center">วิทยาศาสตร์ – คณิตศาสตร์ : SMT</h5>
                                <hr>
                                <div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['grade'] >= 2.75 && $_SESSION['math'] >= 2.5 && $_SESSION['sci'] >= 2.5 && $_SESSION['zero'] == 0) : ?>) : ?>
                                        <p class="fw-bold">คุณสมบัติ</p>
                                    <?php else : ?>
                                        <p class="fw-bold text-danger">คุณสมบัติ</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <ul>
                                    <li>GPAX ตั้งแต่ 2.75</li>
                                    <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                    <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                    <li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                </ul>
                                </div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['grade'] >= 2.75 && $_SESSION['math'] >= 2.5 && $_SESSION['sci'] >= 2.5 && $_SESSION['zero'] == 0) : ?>) : ?>
                                        <div class="text-center">
                                        <button class="btn btn-primary animated-button" type="button" name="plan" value="วิทยาศาสตร์ – คณิตศาสตร์ : SMT" onclick="confirmForm('วิทยาศาสตร์ – คณิตศาสตร์ : SMT')"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                        </div>
                                    <?php else : ?>
                                        <p class="text-center text-danger">สมัครไม่ได้ คุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="800" data-aos-duration="1000">
                        <div class="card2 mb-5" class="choose-plan--choose">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/eng.gif">
                            </div>
                            <div class="card-body ">
                                <h5 class="card-title text-center">ภาษาอังกฤษ – คณิตศาสตร์</h5>
                                <hr>
                                <div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['grade'] >= 2.75) : ?>
                                        <p class="fw-bold">คุณสมบัติ</p>
                                    <?php else : ?>
                                        <p class="fw-bold text-danger">คุณสมบัติ</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <ul>
                                    <li class="li--choose">GPAX ตั้งแต่ 2.75</li>
                                </ul>
                                </div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['grade'] >= 2.75) : ?>
                                        <div class="text-center">
                                        <button class="btn btn-primary animated-button" type="button" name="plan" value="ภาษาอังกฤษ – คณิตศาสตร์" onclick="confirmForm('ภาษาอังกฤษ – คณิตศาสตร์')"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                        </div>
                                    <?php else : ?>
                                        <p class="text-center text-danger">สมัครไม่ได้ คุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="1200" data-aos-duration="1000">
                        <div class="card3 mb-5" class="choose-plan--choose">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/mou.gif">
                            </div>
                            <div class="card-body">
                                <h6 class="card-title text-center">การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</h6>
                                <hr>
                                <div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['zero'] == 0) : ?>
                                        <p class="fw-bold">คุณสมบัติ</p>
                                    <?php else : ?>
                                        <p class="fw-bold text-danger">คุณสมบัติ</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <ul>
                                    <li class="li--choose">ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                </ul>
                                </div>
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <?php if ($_SESSION['zero'] == 0) : ?>
                                        <div class="text-center">
                                            <button class="btn btn-primary animated-button" type="button" name="plan" value="การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL" onclick="confirmForm('การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL')"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                        </div>
                                    <?php else : ?>
                                        <p class="text-center text-danger">สมัครไม่ได้ คุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    <?php endif; ?>
                                <?php endif; ?>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </main>
    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
    
    <script>
        AOS.init();
    </script>
    
</body>

</html>
