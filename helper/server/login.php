<?php
include 'db.php';

$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM students WHERE username = ? AND password = ?";
$stmt = mysqli_prepare($conn, $query);


mysqli_stmt_bind_param($stmt, "ss", $username, $password);


mysqli_stmt_execute($stmt);

$result = mysqli_stmt_get_result($stmt);

if ($result->num_rows > 0) {
    $data = mysqli_fetch_object($result);

    session_start();

    $_SESSION['username'] = $data->username;
    $_SESSION['password'] = $data->password;
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
    $_SESSION['error'] = '<div class="text-center pt-2 pb-3 text-danger">รหัสนักเรียน หรือรหัสประชาชนไม่ถูกต้อง </div>';
    session_write_close();
}


mysqli_stmt_close($stmt);


mysqli_close($conn);
?>
