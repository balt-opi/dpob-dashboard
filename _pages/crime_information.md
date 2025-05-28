---
layout: page
title: Crime Information
---

# Crime Information
Detailed information on the crime that has been committed and when. 

<small>January 2024–Present</small>

<canvas id="donutChart" width="400" height="400"></canvas>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  const ctx = document.getElementById('donutChart').getContext('2d');
  const donutChart = new Chart(ctx, {
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
        hoverOffset: 10
      }]
    },
    options: {
      plugins: {
        legend: {
          position: 'right'
        },
        tooltip: {
          callbacks: {
            label: function(context) {
              const total = context.dataset.data.reduce((a, b) => a + b, 0);
              const value = context.parsed;
              const percentage = ((value / total) * 100).toFixed(2);
              return `${context.label}: ${value} (${percentage}%)`;
            }
          }
        }
      },
      cutout: '60%',
    }
  });
</script>








