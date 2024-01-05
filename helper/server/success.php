<?php
require('db.php');
$plan = $_POST['plan'];

if(!isset($_SESSION['username']) || $_SESSION['username'] != true) {
    header("Location: regis.php"); 
    exit();
}

// ตรวจสอบว่ามีการส่งฟอร์มมาหรือไม่
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // ตรวจสอบว่าค่า 'plan' ถูกต้อง
    $valid_plans = array("วิทยาศาสตร์ – คณิตศาสตร์", "ภาษาอังกฤษ – คณิตศาสตร์", "การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL");
    if (isset($_POST['plan']) && in_array($_POST['plan'], $valid_plans)) {
        $plan = $_POST['plan'];
        $name = $_SESSION['name'];
        $grade = $_SESSION['grade'];
        $math = $_SESSION['math'];
        $sci = $_SESSION['sci'];
        $zero = ($_SESSION['zero'] == 1) ? 'มี' : 'ไม่มี';

        // ตรวจสอบว่าข้อมูลนี้ได้ถูกบันทึกไว้แล้วหรือไม่
        $check_sql = "SELECT * FROM students WHERE name = '$name'";
        $check_result = $conn->query($check_sql);

        if ($check_result->num_rows > 0) {
            $update_sql = "UPDATE students 
                           SET plan = '$plan'
                           WHERE name = '$name'";
            
            if ($conn->query($update_sql) === TRUE) {
                // อัพเดทข้อมูลใน Session ด้วยค่าที่ได้จากฟอร์ม
                $_SESSION['plan'] = $plan;
                echo "";
                header("Location: ../../info.php"); 
            } else {
                echo "ผิดพลาดในการอัพเดทข้อมูล: " . $conn->error;
            }
        } else {
            
        }
    } else {
        echo "";
    }
}
?>
