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
                <div>
                    <span><?php echo $_SESSION['name']; ?></span>
                    <span> เกรดเฉลี่ย : </span>
                    <span class="badge bg-secondary" style="color: #ff3900!important;">5 เทอม <?php echo $_SESSION['grade']; ?></span> ,
                    <span class="badge bg-secondary" style="color: #ff3900!important;">คณิต <?php echo $_SESSION['math']; ?></span> ,
                    <span class="badge bg-secondary badge bg-secondary" style="color: #ff3900!important;">วิทย์ <?php echo $_SESSION['sci']; ?></span>
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
                    <hr>
                <?php endif; ?>
            </div>

            <form method="post" action="helper/server/success.php" id="registrationForm">
                <h6 class="mb-5"><span>กรุณา<strong>เลือกแผนการเรียน</strong>ที่ต้องการสมัคร</span></h6>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card mb-5" style="min-height: 553.8px;">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/sci.gif">
                            </div>
                            <?php if (isset($_SESSION['username'])) : ?>
                                <?php if ($_SESSION['grade'] >= 2.75 && $_SESSION['math'] >= 2.5 && $_SESSION['sci'] >= 2.5 && $_SESSION['zero'] == 0) : ?>
                                    <div class="card-body">
                                        <h5 class="card-title">วิทยาศาสตร์ – คณิตศาสตร์ : SMT</h5>
                                        <hr>
                                        <div>
                                            <p class="fw-bold">คุณสมบัติ</p>
                                            <ul>
                                                <li>GPAX ตั้งแต่ 2.75</li>
                                                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                                <li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                            </ul>
                                        </div>
                                        <button class="btn btn-primary animated-button" name="plan" value="วิทยาศาสตร์ – คณิตศาสตร์" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="confirmRegistration('วิทยาศาสตร์ – คณิตศาสตร์ : SMT')"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                    </div>
                                <?php else : ?>
                                    <div class="card-body">
                                        <h5 class="card-title">วิทยาศาสตร์ – คณิตศาสตร์ : SMT</h5>
                                        <hr>
                                        <div>
                                            <p class="fw-bold text-danger">คุณสมบัติ</p>
                                            <ul>
                                                <li>GPAX ตั้งแต่ 2.75</li>
                                                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                                <li>GPA วิชาคณิตศาสตร์ ตั้งแต่ 2.5</li>
                                                <li>ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                            </ul>
                                        </div>
                                        <p class="text-center text-danger">ไม่สามารถสมัครได้เนื่องจากคุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    </div>
                                <?php endif; ?>
                            <?php endif; ?>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="card2 mb-5" style="min-height: 553.8px;">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/eng.gif">
                            </div>
                            <?php if (isset($_SESSION['username'])) : ?>
                                <?php if ($_SESSION['grade'] >= 2.75) : ?>
                                    <div class="card-body ">
                                        <h5 class="card-title">ภาษาอังกฤษ – คณิตศาสตร์</h5>
                                        <hr>
                                        <div>
                                            <p class="fw-bold">คุณสมบัติ</p>
                                            <ul>
                                                <li style="height: 96px;">GPAX ตั้งแต่ 2.75</li>
                                            </ul>
                                        </div>
                                        <button class="btn btn-primary animated-button" name="plan" value="ภาษาอังกฤษ – คณิตศาสตร์" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="confirmRegistration('ภาษาอังกฤษ – คณิตศาสตร์')"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                    </div>
                                <?php else : ?>
                                    <div class="card-body">
                                        <h5 class="card-title">ภาษาอังกฤษ – คณิตศาสตร์</h5>
                                        <hr>
                                        <div>
                                            <p class="fw-bold text-danger">คุณสมบัติ</p>
                                            <ul>
                                                <li style="height: 96px;">GPAX ตั้งแต่ 2.75</li>
                                            </ul>
                                        </div>
                                        <p class="text-center text-danger">ไม่สามารถสมัครได้เนื่องจากคุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                    </div>
                                <?php endif; ?>
                            <?php endif; ?>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="card3 mb-5" style="min-height: 553.8px;">
                            <div>
                                <img class="card-img-top mb-3" src="helper/plan/mou.gif">
                            </div>
                            <?php if (isset($_SESSION['username'])) : ?>
                                <?php if ($_SESSION['zero'] == 0) : ?>
                                    <div class="card-body">
                                        <h6 class="card-title">การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</h6>
                                        <hr>
                                        <div>
                                            <p class="fw-bold">คุณสมบัติ</p>
                                            <ul>
                                                <li style="height: 96px;">ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                            </ul>
                                        </div>
                                        <button class="btn btn-primary animated-button" name="plan" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="confirmRegistration('การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL')" value="การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL" type="submit"><i class="far fa-edit"></i>&nbsp;สมัคร</button>
                                    </div>
                                <?php else : ?>
                                    <div class="card-body">
                                        <h6 class="card-title">การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL</h6>
                                        <hr>
                                        <div>
                                            <p class="fw-bold text-danger">คุณสมบัติ</p>
                                            <ul>
                                                <li style="height: 96px;">ต้องไม่มีผลการเรียน ติด 0 ร มส มผ</li>
                                            </ul>
                                            <p class="text-center text-danger">ไม่สามารถสมัครได้เนื่องจากคุณสมบัติไม่ตรงตามเงื่อนไข</p>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Confirmation Code</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="confirmationForm">
                            <div class="mb-3">
                                <label for="confirmationCode" class="form-label">Enter the confirmation code:</label>
                                <input type="text" class="form-control" id="inputcode" placeholder="Confirmation Code" required>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="confirmRegistration('{{plan}}')">Confirm Registration</button>
                    </div>
                </div>
            </div>

        </div>
    </main>
    <script src="helper/confirm.js"></script>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
</body>

</html>
