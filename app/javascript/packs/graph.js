document.addEventListener('turbolinks:load', function() {
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'line',
      data: {
        datasets: datasets
      },
      options: {
        /*plugins: {
          title: {
            display: true,
            text: 'グラフ'
          }
        },*/
        scales: {
          x: {
            type: 'time',
            time: {
              unit: 'day', // 日単位で表示
              tooltipFormat: 'YYYY/MM/DD', // ツールチップの表示形式
            },
            display: true,
            title: {
              display: true,
              text: '日時'
            }
          },
          y: {
            display: true,
            title: {
              display: true,
              text: 'ボリューム'
            }
          },
        }
      }
  });
});
