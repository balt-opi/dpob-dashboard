---
layout: page
title: Crime Information
---

# Crime Information
<small>January 2024–Present</small>

<div style="max-width: 600px; margin: auto; padding-bottom: 40px;">
  <canvas id="donutChart" width="500" height="500"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>
  const ctx = document.getElementById('donutChart').getContext('2d');

  new Chart(ctx, {
    type: 'doughnut',
    data: {
      labels: [
        'Property Larceny/Theft',
        'Robbery',
        'Aggravated Assault',
        'Auto Theft',
        'Rape',
        'Homicide'
      ],
      datasets: [{
        data: [612, 415, 340, 253, 29, 1],
        backgroundColor: [
          '#6a0dad',
          '#ff6384',
          '#36a2eb',
          '#4bc0c0',
          '#ff9f40',
          '#e74c3c'
        ],
        borderColor: '#ffffff',
        borderWidth: 2
      }]
    },
    options: {
      layout: {
        padding: 30
      },
      plugins: {
        legend: {
          position: 'bottom',
          align: 'end', // pushes legend down
          labels: {
            boxWidth: 18,
            padding: 20,
            font: {
              size: 13
            }
          }
        },
        datalabels: {
          formatter: (value) => value,
          color: '#000',
          anchor: 'end',
          align: 'end',
          offset: 10,
          font: {
            weight: 'bold',
            size: 14
          }
        }
      },
      cutout: '55%'
    },
    plugins: [ChartDataLabels]
  });
</script>


