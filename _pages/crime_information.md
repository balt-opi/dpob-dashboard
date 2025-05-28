---
layout: page
title: Crime Information
---

# Crime Information
<small>January 2024–Present</small>

<div style="max-width: 300px; margin: auto;">
  <canvas id="donutChart" width="300" height="300"></canvas>
</div>

<!-- Chart.js and outlabels plugin -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@nagix/chartjs-plugin-piechart-outlabels"></script>

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
        borderColor: '#fff',
        borderWidth: 2
      }]
    },
    options: {
      plugins: {
        legend: {
          display: false
        },
        outlabels: {
          text: '%l: %v',
          color: '#00000',
          stretch: 25,
          font: {
            resizable: true,
            minSize: 8,
            maxSize: 12
          },
          lineColor: '#0693e3',
          lineWidth: 1,
          padding: 4
        }
      },
      cutout: '60%',
    },
    plugins: [Chart.PieceLabel, Chart.Outlabels]
  });
</script>






