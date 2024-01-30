<?php
require('db.php');

if (!isset($_SESSION['student_id']) || $_SESSION['student_id'] != true) {
    header("Location: ../../regis.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['plan'])) {
    // var_dump($_POST);
    $plans = get_lists();
    foreach ($plans as $key => $plan) {
        $valid_plans[] = $plan->code;
    }
    if (in_array($_POST['plan'], $valid_plans)) {
        $txt_plan = $_POST['plan'];
        $student_id = $_SESSION['student_id'];

        $student_sql = "SELECT * FROM students WHERE student_id = '$student_id'";
        $student_result = $conn->query($student_sql);
        if ($student_result->num_rows > 0) {
            $student = mysqli_fetch_object($student_result);
            $sql_plan = "SELECT * FROM plans WHERE code = '$txt_plan'";
            $wish_plan = mysqli_fetch_object(query($sql_plan));
            // die(0);
            // var_dump($student);
            
            if ($wish_plan->allow_not_meet_req == 0) {
                if ($student->GPAX < $wish_plan->min_GPAX or $student->GPA_MAT < $wish_plan->min_GPA_MAT or $student->GPA_SCI < $wish_plan->min_GPA_SCI) {
                    http_response_code(403);
                    die();
                }
                if ($wish_plan->allow_ungrade == 0 and $student->GPA_Fail == 1) {
                    http_response_code(403);
                    die();
                }
                if ($wish_plan->allow_behavior_fail == 0 and $student->behavior_pass == 0) {
                    http_response_code(403);
                    die();
                }
            }

            $update_sql = "UPDATE students SET plan = '$txt_plan' WHERE student_id = '$student_id'";
            // die($update_sql);
            if ($conn->query($update_sql) === TRUE) {
                $_SESSION['plan'] = $plan;
                header("location: /account.php");
                exit();
            } else {
                http_response_code(403);
                die('save error');
            }
        } else {
            http_response_code(403);
            die('stu');
        }
    } else {

        exit();
    }
} else {
    header("location: ../../regis.php");
    exit();
}
?>