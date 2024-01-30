<?php
require('helper/server/db.php');

if (!isset($_SESSION['student_id']) || $_SESSION['student_id'] != true) {
    header("Location: regis.php");
    exit();
}

// if (isset($_SESSION['user_agreed']) && $_SESSION['user_agreed'] === true) {
//     header('location: choose.php');
// }
$student = get_student($_SESSION['student_id'], $_SESSION['cid']);
// require('helper/server/checkplan.php');
?>

<!DOCTYPE html>
<html lang="th">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ข้อมูลผู้สมัคร | โรงเรียนภูเขียว</title>
    <?php require 'helper/source/icon.php'; ?>
    <link rel="stylesheet" href="helper/bootstrap/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/5134196601.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="helper/style.css">
</head>

<body>
    <?php require('helper/source/header.php'); ?>
    <main>
        <div class="container">
            <div class="card-background" id="card--account" data-aos="zoom-in" data-aos-delay="150"
                data-aos-duration="1000">
                <h4>ข้อมูลผู้สมัคร</h4>
                <?php if (isset($_SESSION['student_id'])): ?>
                    <div><span>รหัสนักเรียน : </span>
                        <?php echo $_SESSION['student_id']; ?>
                    </div>
                    <div>
                        <span>ชื่อ - สกุล : </span>
                        <span>
                            <?php echo $_SESSION['name']; ?>
                        </span>
                        <span> ห้อง : 3/</span>
                        <?php echo $_SESSION['room']; ?>
                    </div>
                    <div></div>
                    <span>
                        <?php echo $_SESSION['name']; ?>
                    </span>
                    <span> เกรดเฉลี่ย : </span>
                    <span class="badge bg-secondary gpa">
                        5 เทอม
                        <?php echo $_SESSION['GPAX']; ?>
                    </span>
                    <span class="badge bg-secondary gpa">
                        คณิต
                        <?php echo $_SESSION['GPA_MAT']; ?>
                    </span>
                    <span class="badge bg-secondary gpa">
                        วิทย์
                        <?php echo $_SESSION['GPA_SCI']; ?>
                    </span>
                    <span class="badge bg-secondary gpa">
                        ภาษาอังกฤษ
                        <?php echo $_SESSION['GPA_ENG']; ?>
                    </span>
                    <div><span>คะแนนความประพฤติ :
                            <?php ($student->behavior_pass == 1 ? print '<span class="badge bg-success">ผ่าน</span>' : print '<span class="badge bg-warning">ไม่ผ่าน</span>'); ?>
                    </div>
                    <?php if ($_SESSION['GPA_Fail'] == 1): ?>
                        <div><span>ติด 0 ร มส มผ : </span> <span class="badge bg-danger">มี</span></div>
                    <?php else: ?>
                        <div><span>ติด 0 ร มส มผ : </span> <span class="badge bg-success">ไม่มี</span></div>
                    <?php endif; ?>

                <?php endif; ?>
            </div>
            <hr>
            <?php if ($student->plan == '') { ?>
                <div class="card-background" data-aos="zoom-in" data-aos-delay="400" data-aos-duration="1000">
                    <h4>แนวปฏิบัติและข้อควรทราบ</h4>
                    <p>ในการสมัครเรียน (รอบโควตา) สำหรับนักเรียนชั้นมัธยมศึกษาปีที่ 3 โรงเรียนภูเขียว
                        มีแนวปฏิบัติและข้อควรทราบ ดังนี้</p>
                    <ul>
                        <li>มีแผนการเรียนให้สมัครทั้งสิ้น 3 แผนการเรียน ดังนี้
                            <ol>
                                <li>แผนการเรียนวิทยาศาสตร์ – คณิตศาสตร์ : SMT</li>
                                <li>แผนการเรียนภาษาอังกฤษ – คณิตศาสตร์</li>
                                <li>แผนการเรียนการจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</li>
                            </ol>
                        </li>
                        <li>นักเรียน<strong><span id="span-danger--account">สามารถสมัครได้เพียง 1
                                    แผนการเรียน</span></strong></li>
                        <li>หากต้องการเปลี่ยนแปลงแผนการเรียนที่สมัครนักเรียนจะต้องส่งแบบฟอร์ม <a
                                href="https://drive.google.com/file/d/17p5Unp99m6RwB53ny6BSSKGPxJb9n6fU/view?usp=sharing"
                                target="_blank">นร.01.1</a> ที่ห้องวิชาการ โรงเรียนภูเขียว</li>
                    </ul>
                    <form method="post" action="helper/server/checkagree.php">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="formCheck-1" name="check" required="">
                            <label class="form-check-label"
                                for="formCheck-1">ข้าพเจ้ารับทราบข้อกำหนดและเงื่อนไขการสมัครเรียนรอบโควตาโรงเรียนภูเขียวดังที่ปรากฏด้านบนเรียนร้อยแล้ว</label>
                        </div>
                        <div class="text-center mt-3" id="btn--account">
                            <button class="btn btn-primary animated-button" type="submit" value="agree"><i
                                    class="far fa-edit"></i>&nbsp;สมัครเลย</button>
                        </div>
                    </form>
                </div>
            <?php } else {
                $sql = "SELECT * FROM plans WHERE code = '$student->plan'";
                $query = mysqli_query($conn, $sql);
                $plan = mysqli_fetch_object($query);
                ?>
                <div class="card-background mb-3" data-aos="zoom-in" data-aos-delay="150" data-aos-duration="1000">
                    <h4 class="mb-5">แผนการเรียนที่สมัคร</h4>
                    <div class="row mb-4">
                        <div class="col-md-5">
                            <div class="img-fluid"><img class="img-fluid card-img-top2 info"
                                    src="helper/plan/<?php print $plan->img_cover ?>" alt=""></div>
                        </div>
                        <div class="col-md-7 mt-3">
                            <p id="p-plan--info">แผนการเรียน
                                <?php echo $plan->name; ?>
                            </p>
                            <ul>
                                <?php echo ($plan->min_GPAX > 0 ? "<li>GPAX ตั้งแต่ " . $plan->min_GPAX . "</li>" : ""); ?>
                                <?php echo ($plan->min_GPA_SCI > 0 ? "<li>GPA วิชาคณิตศาสตร์ ตั้งแต่ " . $plan->min_GPA_SCI . "</li>" : "") ?>
                                <?php echo ($plan->min_GPA_MAT > 0 ? "<li>GPA วิชาคณิตศาสตร์ ตั้งแต่ " . $plan->min_GPA_MAT . "</li>" : "") ?>
                                <?php echo ($plan->allow_ungrade == 0 ? "<li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>" : ""); ?>
                                <?php echo ($plan->allow_behavior_fail == 0 ? "<li>คะแนนความประพฤติผ่านเกณฑ์</li>" : ""); ?>
                            </ul>
                        </div>
                    </div>
                    <div>
                        <hr>
                        <p>หากต้องการเปลี่ยนแปลงแผนการเรียนให้นักเรียนส่งแบบฟอร์ม <a
                                href="https://drive.google.com/file/d/17p5Unp99m6RwB53ny6BSSKGPxJb9n6fU/view?usp=sharing"
                                target="_blank">นร.01.1</a> ที่ห้องวิชาการ โรงเรียนภูเขียว</p>
                    </div>
                </div>
            <?php } ?>
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