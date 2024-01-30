<?php
require('helper/server/db.php');

$count = [];
$sql = "SELECT plan, COUNT(*) as total_students FROM students WHERE plan != '' GROUP BY plan ";
$result = $conn->query($sql);
$reg_plan = get_lists();
$reg_plan_code = [];
foreach ($reg_plan as $key => $p) {
    array_push($reg_plan_code, $p->code);
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $plan = $row["plan"];
        $totalStudents = $row["total_students"];
        $planCounts[$plan] = $totalStudents;
    }
}

foreach ($reg_plan_code as $i => $plan) {
    if (isset($planCounts[$plan])) {
        $count[$plan] = intval($planCounts[$plan]);
    } else {
        $count[$plan] = 0;
    }
}

?>
<!DOCTYPE html>
<html lang="th">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>สถิติการสมัครเรียน | โรงเรียนภูเขียว</title>
    <?php require 'helper/source/icon.php'; ?>
    <link rel="stylesheet" href="helper/bootstrap/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/5134196601.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="helper/style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body style="font-family: Prompt, sans-serif;">
    <?php require 'helper/source/header.php' ?>
    <main>
        <div class="container">
            <?php foreach ($reg_plan as $key => $p) { ?>
                <p class="card-background" id="countsmt" style="background-color:<?php print $p->color ?>">
                    <?php echo $p->name ?>
                    <?php echo $count[$p->code] ?> คน
                </p>
            <?php } ?>
            <div class="card-background">
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </main>

    <?php require 'helper/source/footer.php' ?>
    <?php require 'helper/source/script.php' ?>
    <script>
        // AOS.init();
        // var planData = <?php echo json_encode($planCounts); ?>;
        // var labels = Object.keys(planData);
        // var values = Object.values(planData);

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [
                    <?php foreach ($reg_plan as $key => $p) {
                        print "'$p->name', ";
                    } ?>
                ],
                datasets: [{
                    label: 'จำนวนคนที่สมัครตามแผน',
                    data: [
                        <?php foreach ($reg_plan as $key => $p) {
                            print "Math.floor(" . $count[$p->code] . "), ";
                        } ?>
                    ],
                    backgroundColor: [
                        <?php foreach ($reg_plan as $key => $p) {
                            print "'$p->color', ";
                        } ?>
                    ],
                    // backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgb(81, 226, 144, 0.2)'],
                    // borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgb(81, 226, 144, 1)'],
                    borderWidth: 1
                }]
            },
            options: {
                // scales: {
                //     y: {
                //         // beginAtZero: true
                //     }
                // }
            },
        });
    </script>


</body>

</html>