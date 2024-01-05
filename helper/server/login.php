<?php
include 'db.php';
$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM students WHERE username = $username AND password = $password";
$result = mysqli_query($conn, $query);

if($result->num_rows > 0) {
    $data = mysqli_fetch_object($result);
    $_SESSION['username'] = $data->username;
    $_SESSION['password'] = $data->password;
    $_SESSION['room'] = $data->room;
    $_SESSION['grade'] = $data->grade;
    $_SESSION['math'] = $data->math;
    $_SESSION['sci'] = $data->sci;
    $_SESSION['zero'] = $data->zero;
    $_SESSION['point'] = $data->point;
    $_SESSION['name'] = $data->name;
    $_SESSION['plan'] = $data->plan;
    
    session_write_close();
    header("Location: ../../account.php");
} else {
    header("Location: ../../regis.php");
    $_SESSION['error'] = '<div class="text-center pt-2 pb-3 text-danger">รหัสนักเรียน หรือรหัสประชาชนไม่ถูกต้อง </div>';
}