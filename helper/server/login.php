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
    $_SESSION['average_grade'] = $data->grade;
    $_SESSION['grade_math'] = $data->math;
    $_SESSION['grade_science'] = $data->sci;
    $_SESSION['zero_status'] = $data->zero;
    $_SESSION['name'] = $data->name;
    session_write_close();
    header("Location: ../../account.php");
} else {
    echo "login not pass";
}