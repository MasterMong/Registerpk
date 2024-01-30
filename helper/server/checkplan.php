<?php 

$student_id = $_SESSION['student_id'];

$check_plan_sql = "SELECT * FROM students WHERE student_id = '$student_id' AND plan = ''";
$check_plan_result = $conn->query($check_plan_sql);

if ($check_plan_result->num_rows > 0) {

} else {
    header("Location: info.php");
}
?>