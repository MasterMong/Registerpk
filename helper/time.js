var countdownTime = new Date('2024-02-02T15:00:00'); 
var countdownInterval;

function updateCountdown() {
    var now = new Date().getTime();
    var distance = countdownTime - now;

    if (distance <= 0) {
        clearInterval(countdownInterval);
        window.location.href = "timeout.php"; 
    } else {
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        document.getElementById("countdownDisplay").innerHTML = days + " วัน " + hours + " ชั่วโมง " + minutes + " นาที " + seconds + " วินาที";

        // เพิ่ม animation ในการเปลี่ยนแปลง
        document.getElementById("countdownDisplay").style.opacity = 1;
        requestAnimationFrame(function () {
            document.getElementById("countdownDisplay").style.opacity = 0.8;
        });
    }
}

countdownInterval = setInterval(updateCountdown, 1000);
