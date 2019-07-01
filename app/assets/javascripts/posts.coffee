window.draw_example_chart = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: ['Wifi', 'テーブルの広さ', '空調', '人の少なさ', '静かさ'],
            datasets: [{
                label: '例',
                data: [5, 2, 4, 5, 3],
                backgroundColor: 'rgb(69, 209, 230, 0.4)',
                borderColor: 'rgb(25, 46, 28)',
                borderWidth: 1,
                pointRadius: 3.5,
                pointBackgroundColor: 'rgb(25, 46, 28)',
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

var draw_chart = draw_chart;
window.draw_chart = ->
    ctx = document.getElementById("myRadarChart").getContext('2d')
    myRadarChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: ['Wifi', 'テーブルの広さ', '空調', '人の少なさ', '静かさ'],
            datasets: [{
                label: 'chart',
                data: gon.data,
                backgroundColor: 'rgb(69, 209, 230, 0.4)',
                borderColor: 'rgb(25, 46, 28)',
                borderWidth: 1,
                pointRadius: 3.5,
                pointBackgroundColor: 'rgb(25, 46, 28)',
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