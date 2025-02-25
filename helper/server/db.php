<?php
$hostname = "localhost";
$student_id = "root";
$password = "";
$database = "student_register";
$port = 3306;
$conn = mysqli_connect($hostname, $student_id, $password, $database, $port);
session_start();
if (!$conn) {
    die("เชื่อมต่อกับ database ไม่ได้" . mysqli_connect_error());
}
mysqli_set_charset($conn, 'utf8');

function get_lists()
{
    $plans_sql = "SELECT * FROM plans";
    $plans_query = mysqli_query($GLOBALS['conn'], $plans_sql);
    $plans_data = [];
    while ($plan = mysqli_fetch_object($plans_query)) {
        array_push($plans_data, $plan);
    }
    return $plans_data;

}
function get_student($sid, $cid)
{
    $sql = "SELECT * FROM students WHERE student_id = '$sid' AND cid = '$cid'";
    $query = mysqli_query($GLOBALS['conn'], $sql);
    return mysqli_fetch_object($query);
    ;
}

function debug()
{
    print '<pre>';
    var_dump(get_lists());
    var_dump(get_student(37015, 1409903723398));
    die();
}
// debug();

function query($sql) {
    $mysql = $GLOBALS['conn'];
    $result = mysqli_query($mysql, $sql);
    if ($result === false) {
        die('Query failed: '. mysqli_error($mysql));
    }
    return $result;
}