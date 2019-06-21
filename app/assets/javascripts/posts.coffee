window.draw_example_chart = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: ['Wifi', 'テーブルの広さ', '空調', '人の少なさ', '静かさ'],
            datasets: [{
                label: '例',
                data: [5, 2, 4, 5, 3],
                # backgroundColor: 'rgba(255, 206, 86, 0.2)',
                backgroundColor: 'rgba(227,235,179,0.4)',
                borderColor: 'rgba(227, 235, 179, 1.0)',
                borderWidth: 1,
                pointRadius: 3.5,
                pointBackgroundColor: 'rgba(227,235,179,1)',
                pointBorderColor: '#fff'
            }]
        },
        options: {
            animation: false
            scale: {
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    max: 5,
                    stepSize: 1
                }
            }
        }
    });

window.draw_chart = ->
    ctx = document.getElementById("myRadarChart").getContext('2d')
    myRadarChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: ['Wifi', 'テーブルの広さ', '空調', '人の少なさ', '静かさ'],
            datasets: [{
                label: 'chart',
                data: gon.data,
                backgroundColor: 'rgba(227,235,179,0.4)',
                borderColor: 'rgba(227,235,179,1.0)',
                borderWidth: 1,
                pointRadius: 3.5,
                pointBackgroundColor: 'rgba(227,235,179,1.0)',
                pointBorderColor: '#fff'
            }]
        },
        options: {
            animation: false
            scale: {
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    max: 5,
                    stepSize: 1,
                }
            }
        }
    });