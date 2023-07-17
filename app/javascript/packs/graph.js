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
              displayFormats: {
                hour: 'yyyy/MM/DD HH:mm'
              }
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
