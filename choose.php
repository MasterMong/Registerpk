<?php
require 'helper/server/db.php';

if (!isset($_SESSION['student_id']) || $_SESSION['student_id'] != true) {
    header("Location: regis.php");
    exit();
}

if (!(isset($_SESSION['user_agreed']) && $_SESSION['user_agreed'] === true)) {
    header('location: account.php');
}

require 'helper/server/checkplan.php';

$sql = "SELECT plan, COUNT(*) as total_students FROM students GROUP BY plan";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($plan = $result->fetch_assoc()) {
        $totalStudents = $plan["total_students"];
        $planCounts[$plan["plan"]] = $totalStudents;
    }
}
// $totalA = 36;
// $totalB = 30;

/* 
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

*/

$student = get_student($_SESSION['student_id'], $_SESSION['cid']);
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
    <?php require 'helper/source/header.php'; ?>
    <main>
        <div class="container">
            <div class="card-background text-center mb-3" data-aos="zoom-in" data-aos-duration="500">
                <div class="text-center">
                    <h3>กรุณาเลือกแผนการเรียนภายใน</h3>
                    <h3 class="text-danger" id="countdownDisplay"></h3>
                    <div style="color: #ff5656;">
                        <h4><i class="bi bi-heart-fill"></i></h4>
                        <h5 class="fw-bolder">สามารถตัดสินใจได้เพียง 1 ครั้ง</h5>
                    </div>
                </div>
            </div>
            <div class="card-background" id="card--choose" data-aos="zoom-in" data-aos-delay="150"
                data-aos-duration="1000">
                <h4>สมัครเรียนรอบโควตา</h4>
                <div>
                    <span>
                        <?php echo $_SESSION['name']; ?>
                    </span>
                    <span> เกรดเฉลี่ย : </span>
                    <span class="badge bg-secondary gpa">5 เทอม
                        <?php echo $student->GPAX; ?>
                    </span>
                    <span class="badge bg-secondary gpa">คณิต
                        <?php echo $student->GPA_MAT; ?>
                    </span>
                    <span class="badge bg-secondary badge bg-secondary gpa">วิทย์
                        <?php echo $student->GPA_SCI; ?>
                    </span>
                    <span class="badge bg-secondary badge bg-secondary gpa">ภาษาอังกฤษ
                        <?php echo $student->GPA_ENG; ?>
                    </span>
                </div>
                <div><span>คะแนนความประพฤติ : </span>
                    <?php ($student->behavior_pass == 1 ? print '<span class="badge bg-success">ผ่าน</span>' : print '<span class="badge bg-warning">ไม่ผ่าน</span>'); ?>
                </div>
                <?php if (isset($_SESSION['student_id'])): ?>
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
            <form method="post" action="helper/server/success.php" id="confirmationForm" class="card-background"
                data-aos="zoom-in" data-aos-delay="400" data-aos-duration="1000">
                <h6 class="mb-5"><span>กรุณา<strong>เลือกแผนการเรียน</strong>ที่ต้องการสมัคร</span></h6>
                <div class="row">
                    <?php foreach (get_lists() as $key => $plan) { ?>
                        <div class="col-lg-4 aos-init aos-animate" data-aos="zoom-in"
                            data-aos-delay="<?php print($key + 1) * 300; ?>" data-aos-duration="1000" style="border-color:<?php print $plan->color ?>">
                            <div class="card2 mb-5">
                                <div>
                                    <img class="card-img-top mb-3" src="helper/plan/<?php print $plan->img_cover ?>">
                                </div>
                                <div class="card-body ">
                                    <h5 class="card-title text-center">
                                        <?php print $plan->name; ?>
                                    </h5>
                                    <div class="text-center">
                                        สมัครแล้ว <?php echo $planCounts[$plan->code] ?? 0; ?> คน
                                    </div>
                                    <hr>
                                    <div>
                                        <p class="fw-bold text-danger">คุณสมบัติ</p>
                                        <ul>
                                            <?php echo ($plan->min_GPAX > 0 ? "<li>GPAX ตั้งแต่ " . $plan->min_GPAX . "</li>" : ""); ?>
                                            <?php echo ($plan->min_GPA_SCI > 0 ? "<li>GPA วิชาคณิตศาสตร์ ตั้งแต่ " . $plan->min_GPA_SCI . "</li>" : "") ?>
                                            <?php echo ($plan->min_GPA_MAT > 0 ? "<li>GPA วิชาคณิตศาสตร์ ตั้งแต่ " . $plan->min_GPA_MAT . "</li>" : "") ?>
                                            <?php echo ($plan->allow_ungrade == 0 ? "<li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>" : ""); ?>
                                            <?php echo ($plan->allow_behavior_fail == 0 ? "<li>คะแนนความประพฤติผ่านเกณฑ์</li>" : ""); ?>
                                        </ul>
                                    </div>
                                    <?php
                                    $pass = true;
                                    if ($plan->allow_not_meet_req == 0) {
                                        // เช็กว่าเกรด 3 ตัวผ่านเงื่อนไขไหม
                                        if ($student->GPAX < $plan->min_GPAX or $student->GPA_SCI < $plan->min_GPA_SCI or $student->GPA_MAT < $plan->min_GPA_MAT) {
                                            $pass = false;
                                        }

                                        // ถ้าไม่ให้นักเรียนที่ติด 0 ร มผ สมัคร และ นักเรียนคนนี้ติด
                                        if ($plan->allow_ungrade == 0 and $student->GPA_Fail == 1) {
                                            $pass = false;
                                        }

                                        if ($plan->allow_behavior_fail == 0 and $student->behavior_pass == 0) {
                                            $pass = false;
                                        }
                                    }
                                    ?>
                                    <?php if (!$pass) { ?>
                                        <p class="text-center text-danger">สมัครไม่ได้ คุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    <?php } else { ?>
                                        <div class="text-center">
                                            <button class="btn btn-primary animated-button" type="button" name="plan"
                                                onclick="confirmForm('<?php print $plan->name; ?>', '<?php print $plan->code; ?>')"><i
                                                    class="far fa-edit"></i>&nbsp;สมัคร</button>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
            </form>
        </div>
    </main>
    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
    <script src="helper/time.js"></script>
    <script>
        AOS.init();
    </script>

</body>

</html>