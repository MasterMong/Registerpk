<?php
require('helper/server/db.php');

if (!isset($_SESSION['student_id']) || $_SESSION['student_id'] != true) {
    header("Location: regis.php");
    exit();
}

if (!(isset($_SESSION['user_agreed']) && $_SESSION['user_agreed'] === true)) {
    header('location: account.php');
}

require('helper/server/checkplan.php');

$sql = "SELECT plan, COUNT(*) as total_students FROM students GROUP BY plan";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $plan = $row["plan"];
        $totalStudents = $row["total_students"];
        $planCounts[$plan] = $totalStudents;
    }
}
$totalA = 36;
$totalB = 30;

$countA = $planCounts['วิทยาศาสตร์ – คณิตศาสตร์ : SMT'] ?? 0;
$countB = $planCounts['ภาษาอังกฤษ – คณิตศาสตร์'] ?? 0;

if ($countA != 0) {
    $percentageA = ($totalA / $countA) * 100;
    $roundedPercentageA = round($percentageA, 2);
} else {
    $roundedPercentageA = 0;
}

if ($countB != 0) {
    $percentageB = ($totalB / $countB) * 100;
    $roundedPercentageB = round($percentageB, 2);
} else {
    $roundedPercentageB = 0;
}


?>

<!DOCTYPE html>
<html lang="th">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เลือกแผนการเรียน | โรงเรียนภูเขียว</title>
    <?php require 'helper/source/icon.php'; ?>
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
            <div class="card-background text-center mb-3" data-aos="zoom-in" data-aos-duration="500">
                <div class="text-center">
                    <h3>กรุณาเลือกแผนการเรียนภายใน</h3>
                    <h3 class="text-danger" id="countdownDisplay"></h3>
                    <div style="color: #ff3333;">
                        <h4><i class="bi bi-heart-fill"></i></h4>
                        <h5 class="fw-bolder">สามารถตัดสินใจได้เพียง 1 ครั้ง</h5>
                    </div>
                </div>
            </div>
            <div class="card-background" id="card--choose" data-aos="zoom-in" data-aos-delay="150" data-aos-duration="1000">
                <h4>สมัครเรียนรอบโควตา</h4>
                <div>
                    <span><?php echo $_SESSION['name']; ?></span>
                    <span> เกรดเฉลี่ย : </span>
                    <span class="badge bg-secondary gpa">5 เทอม <?php echo $_SESSION['GPAX']; ?></span>
                    <span class="badge bg-secondary gpa">คณิต <?php echo $_SESSION['GPA_MAT']; ?></span>
                    <span class="badge bg-secondary badge bg-secondary gpa">วิทย์ <?php echo $_SESSION['GPA_SCI']; ?></span>
                </div>
                <div><span>คะแนนความประพฤติ : </span><span class="badge bg-warning"><?php echo $_SESSION['behavior_pass']; ?> คะแนน</span></div>
                <?php if (isset($_SESSION['student_id'])) : ?>
                    <span>
                        <?php
                        if ($_SESSION['GPA_Fail'] == 1) {
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
                                <img class="card-img-top mb-3" src="helper/plan/GPA_SCI.gif">
                            </div>
                            <div class="card-body ">
                                <h5 class="card-title text-center">วิทยาศาสตร์ – คณิตศาสตร์ : SMT</h5>
                                <div class="text-center">
                                    <p class="m-0">จำนวนการสมัครแล้ว <?php echo $planCounts['วิทยาศาสตร์ – คณิตศาสตร์ : SMT'] ?? 0; ?> คน</p>

                                    <?php
                                    if ($countA != 0) {

                                        if ($planCounts['วิทยาศาสตร์ – คณิตศาสตร์ : SMT'] > 36) { ?>
                                            <p class="m-0">โอกาสสอบติด <?php echo $roundedPercentageA ?>% <i class="bi bi-flag-fill"></i></p>
                                        <?php } ?>
                                    <?php
                                    }
                                    ?>

                                </div>
                                <hr>
                                <div>
                                    <?php if (isset($_SESSION['student_id'])) : ?>
                                        <?php if ($_SESSION['GPAX'] >= 2.75 && $_SESSION['GPA_MAT'] >= 2.5 && $_SESSION['GPA_SCI'] >= 2.5 && $_SESSION['GPA_Fail'] == 0) : ?>
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
                                <p class="text-center text-danger">หมดเวลารับสมัครรอบโควต้า</p>
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
                                <div class="text-center">
                                    <p class="m-0">จำนวนการสมัครแล้ว <?php echo $planCounts['ภาษาอังกฤษ – คณิตศาสตร์'] ?? 0; ?> คน</p>
                                    <?php
                                    if ($countB != 0) {
                                        if ($planCounts['ภาษาอังกฤษ – คณิตศาสตร์'] > 30) { ?>
                                            <p class="m-0">โอกาสสอบติด <?php echo $roundedPercentageB ?>% <i class="bi bi-flag-fill"></i></p>
                                        <?php } ?>
                                    <?php
                                    }
                                    ?>

                                </div>
                                <hr>
                                <div>
                                    <?php if (isset($_SESSION['student_id'])) : ?>
                                        <?php if ($_SESSION['GPAX'] >= 2.75) : ?>
                                            <p class="fw-bold">คุณสมบัติ</p>
                                        <?php else : ?>
                                            <p class="fw-bold text-danger">คุณสมบัติ</p>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <ul>
                                        <li class="li--choose">GPAX ตั้งแต่ 2.75</li>
                                    </ul>
                                </div>
                                <p class="text-center text-danger">หมดเวลารับสมัครรอบโควต้า</p>
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
                                <div class="text-center">
                                    <p>จำนวนการสมัครแล้ว <?php echo $planCounts['การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL'] ?? 0; ?> คน</p>
                                </div>
                                <hr>
                                <div>
                                    <?php if (isset($_SESSION['student_id'])) : ?>
                                        <?php if ($_SESSION['GPA_Fail'] == 0) : ?>
                                            <p class="fw-bold">คุณสมบัติ</p>
                                        <?php else : ?>
                                            <p class="fw-bold text-danger">คุณสมบัติ</p>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <ul>
                                        <li class="li--choose">ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                    </ul>
                                </div>
                                <p class="text-center text-danger">หมดเวลารับสมัครรอบโควต้า</p>
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
        var countdownTime = new Date('2024-02-15T00:00:00');
        var countdownInterval;

        function updateCountdown() {
            var now = new Date().getTime();
            var distance = countdownTime - now;

            if (distance > 0) {
                clearInterval(countdownInterval);
                window.location.href = "index.php";
            } else {
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                document.getElementById("countdownDisplay").innerHTML = "เวลาที่เหลือ: " + hours + " ชั่วโมง " + minutes + " นาที " + seconds + " วินาที";
            }
        }
        countdownInterval = setInterval(updateCountdown, 1000);
    </script>

</body>

</html>