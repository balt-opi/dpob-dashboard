---
layout: page
title: Crime Information
---

# Crime Information
<small>January 2024–Present</small>

<div style="max-width: 600px; margin: auto; padding-bottom: 40px;">
  <canvas id="donutChart" width="500" height="500"></canvas>
</div>

<!-- Chart.js & Outlabels Plugin -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@nagix/chartjs-plugin-piechart-outlabels"></script>

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
      layout: {
        padding: {
          top: 30,
          bottom: 30
        }
      },
      plugins: {
        legend: {
          display: true,
          position: 'bottom',
          labels: {
            boxWidth: 20,
            padding: 20,
            font: {
              size: 12
            }
          }
        },
        outlabels: {
          text: '%l (%v)',
          color: '#000',
          stretch: 50,
          font: {
            resizable: true,
            minSize: 12,
            maxSize: 16
          },
          lineColor: '#000',
          lineWidth: 1,
          padding: 14
        }
      },
      cutout: '55%'
    }
  });
</script>



