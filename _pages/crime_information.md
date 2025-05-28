---
layout: page
title: Crime Information
---

# Crime Information
<small>January 2024–Present</small>

<div style="max-width: 520px; margin: auto;">
  <canvas id="donutChart" width="500" height="500"></canvas>
</div>

<!-- Chart.js and Outlabels plugin -->
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
        borderColor: '#ffffff',
        borderWidth: 2
      }]
    },
    options: {
      plugins: {
        legend: {
          display: false
        },
        outlabels: {
          text: '%l (%v)',   // Label name + value
          color: '#000',
          stretch: 40,       // Pull labels farther from center
          font: {
            resizable: true,
            minSize: 12,
            maxSize: 16
          },
          lineColor: '#000',
          lineWidth: 1,
          padding: 12
        }
      },
      cutout: '55%' // Adjust inner radius
    }
  });
</script>




