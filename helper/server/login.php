<?php
include 'db.php';

$student_id = $_POST['student_id'];
$cid = $_POST['cid'];

$query = "SELECT * FROM students WHERE student_id = ? AND cid = ?";
$stmt = mysqli_prepare($conn, $query);


mysqli_stmt_bind_param($stmt, "ss", $student_id, $cid);


mysqli_stmt_execute($stmt);

$result = mysqli_stmt_get_result($stmt);

if ($result->num_rows > 0) {
    $data = mysqli_fetch_object($result);

    session_start();

    $_SESSION['student_id'] = $data->student_id;
    $_SESSION['cid'] = $data->cid;
    $_SESSION['room'] = $data->room;
    $_SESSION['grade'] = $data->grade;
    $_SESSION['math'] = $data->math;
    $_SESSION['sci'] = $data->sci;
    $_SESSION['zero'] = $data->zero;
    $_SESSION['name'] = $data->name;
    $_SESSION['plan'] = $data->plan;
    $_SESSION['point'] = $data->point;

    
    session_write_close();

    
    header("Location: ../../account.php");
} else {
    header("Location: ../../regis.php");
    session_start();
    $_SESSION['error'] = '<script>
    Swal.fire({
        icon: "error",
        title: "รหัสไม่ถูกต้อง",
        text: "โปรดเช็ครหัสนักเรียน หรือรหัสประชาชนแล้วลองใหม่",
        confirmButtonColor: "#e25f5f",
        confirmButtonText: "ลองใหม่อีกครั้ง",
    });
    </script>';
    session_write_close();
}


mysqli_stmt_close($stmt);


mysqli_close($conn);
?>
