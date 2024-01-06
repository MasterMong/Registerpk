function confirmRegistration(plan) {
    const randomConfirmationCode = Math.floor(100000 + Math.random() * 900000);
    var inputCode = prompt("กรุณาพิมพ์เลข " + randomConfirmationCode + " เพื่อยืนยันการสมัครแผนการเรียน" + "\n" + plan);

    if (inputCode !== null && inputCode.trim() === randomConfirmationCode.toString()) {
        document.getElementById("registrationForm").submit();
    } else {
        if (inputCode !== null) {
            alert("คุณใส่รหัสยืนยันผิดโปรดลองใหม่อีกครั้ง");
        }
        event.preventDefault();
    }
}
