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
          '#6a0dad', // purple
          '#ff6384', // pink
          '#36a2eb', // blue
          '#4bc0c0', // teal
          '#ff9f40', // orange
          '#e74c3c'  // red
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
          color: '#fff',
          font: {
            weight: 'bold',
            size: 12
          },
          formatter: (value) => value
        }
      },
      cutout: '60%'
    },
    plugins: [ChartDataLabels]
  });

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
          '#6a0dad', // purple
          '#ff6384', // pink
          '#36a2eb', // blue
          '#4bc0c0', // teal
          '#ff9f40', // orange
          '#e74c3c'  // red
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
          color: '#black',
          font: {
            weight: 'bold',
            size: 12
          },
          formatter: (value) => value
        }
      },
      cutout: '60%'
    },
    plugins: [ChartDataLabels]
  });
</script>







