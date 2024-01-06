<?php 
require('helper/server/db.php');
if(!isset($_SESSION['username']) || $_SESSION['username'] != true) {
    echo(""); 
    
} else {
    header("Location: account.php"); 
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เข้าสู่ระบบ | โรงเรียนภูเขียว</title>
    <link rel="stylesheet" href="helper/bootstrap/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/5134196601.js" crossorigin="anonymous"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="helper/style.css">
</head>
<body style="font-family: Prompt, sans-serif;">
    <?php require 'helper/source/header.php' ?>
    <main class="my-3">
        <div class="d-flex align-items-center" style="min-height: 50vh;padding-top: 10px;padding-bottom: 15px;">
            <div class="container" style="max-width: 400px;border-color: var(--red);">
                <div class="text-center">
                    <img src="helper/media/pklogo.png" width="100">
                </div>
                <h3 class="text-center" style="margin: 30px;">เข้าสู่ระบบ</h3>
                <form method="post" action="helper/server/login.php" class="form-login" style="background-color: #ffffff; padding: 20px; border: 1px solid rgba(0, 0, 0, 0.2); border-radius: 15px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
                <div style="margin-bottom: 10px;">
                    <fieldset>
                        <legend class="fs-5 my-2">เลขประจำตัวนักเรียน</legend>
                        <input class="form-control" type="text" name="username" style="border: 1px solid rgba(0, 0, 0, 0.2); color: rgb(0,0,0); border-radius: 15px; box-shadow: 3px 3px rgba(242,107,138,0.45);" placeholder="ระบุรหัสนักเรียน" required="">
                    </fieldset>

                    <fieldset>
                        <legend class="fs-5 my-2">เลขประจำตัวประชาชน</legend>
                        <input class="form-control" type="text" name="password" style="border: 1px solid rgba(0, 0, 0, 0.2); color: rgb(0,0,0); border-radius: 15px; box-shadow: 3px 3px rgba(242,107,138,0.45);" placeholder="เลขประจำตัวประชาชน" required="">
                    </fieldset>
                </div>
                <div class="text-end d-flex justify-content-end my-3">
                    <button class="btn btn-success animated-button" style="background-color: #56cc9d; margin: 5px 5px" type="submit" role="button" name="login"><i class="far fa-check-circle"></i>&nbsp;ตกลง</button>
                    <button class="btn btn-warning animated-button" style="background-color: #ffce67; margin: 5px 5px" type="reset"><i class="far fa-times-circle"></i>&nbsp;ยกเลิก</button>
                </div>
                <?php 
                if (isset($_SESSION['error'])) {
                    echo $_SESSION['error'];
                    unset($_SESSION['error']);
                }
                ?>
            </form>
            </div>
        </div>
    </main>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
</body>
</html>
