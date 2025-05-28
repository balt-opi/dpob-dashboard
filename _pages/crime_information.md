---
layout: page
title: Crime Information
---

# Crime Information
<small>January 2024–Present</small>

<div style="max-width: 300px; margin: auto;">
  <canvas id="donutChart" width="300" height="300"></canvas>
</div>

<!-- Chart.js & plugin for labels -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>
  const ctx = document.getElementById('donutChart').getContext('2d');

  new Chart(ctx, {
    type: 'doughnut',
    data: {
      labels: [
        'Property Larceny/Theft Offenses',
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
        hoverOffset: 8
      }]
    },
    options: {
      plugins: {
        legend: {
          position: 'right',
          labels: {
            boxWidth: 12,
            font: { size: 12 }
          }
        },
        datalabels: {
          color: '#000',
          font: {
            weight: 'bold',
            size: 12
          },
          formatter: (value) => value,
          anchor: 'end',        // move label to outer edge of slice
          align: 'end',         // place label outside the arc
          offset: 10,           // distance from the arc
          clamp: true           // ensures labels don't overlap badly
        }
      },
      cutout: '60%',
    },
    plugins: [ChartDataLabels]
  });
</script>





