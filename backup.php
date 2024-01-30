<script>
        AOS.init();
        fetch('datachart.php')
            .then(response => response.json())
            .then(data => {
                const labels = Object.keys(data);
                const databehavior_passs = Object.values(data);

                const chartData = {
                    labels: labels,
                    datasets: [{
                        label: 'วิทยาศาสตร์ – คณิตศาสตร์ : SMT',
                        data: databehavior_passs,
                        borderColor: '#ff8ec1',
                        fill: false,
                        cubicInterpolationMode: 'monotone',
                        tension: 0.4
                    }, {
                        label: 'ภาษาอังกฤษ – คณิตศาสตร์',
                        data: databehavior_passs,
                        borderColor: '#7ad5fd',
                        fill: false,
                        tension: 0.4
                    }, {
                        label: 'การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL',
                        data: databehavior_passs,
                        borderColor: '#88ff91',
                        fill: false
                    }]
                };

                var ctx = document.getElementById('myChart').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: chartData
                });
            })
            .catch(error => console.error('Error fetching data:', error));
    </script>