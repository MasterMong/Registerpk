<?php
$hostname = "localhost";
$student_id = "root";
$password = "";
$database = "student_register";
$port = 3307;
$conn = mysqli_connect($hostname, $student_id, $password, $database, $port);
session_start();
if (!$conn) {
    die("เชื่อมต่อกับ database ไม่ได้" . mysqli_connect_error());
}
