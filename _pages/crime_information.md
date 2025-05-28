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
    padding: {
      top: 30,
      bottom: 80  // increased from 50 to 80 for more space below chart
    }
  },
  plugins: {
    legend: {
      position: 'bottom',
      align: 'center',
      labels: {
        boxWidth: 18,
        padding: 50,  // increased padding between legend items and chart
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


Total Crime in Downtown by Year
<small>January–April, 2020–2024</small>

<div style="max-width: 600px; margin: auto; padding-bottom: 40px;">
  <canvas id="barChart" width="600" height="400"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>
  const ctx2 = document.getElementById('barChart').getContext('2d');

  new Chart(ctx2, {
    type: 'bar',
    data: {
      labels: ['2020', '2021', '2022', '2023', '2024'],
      datasets: [{
        label: 'Crimes Reported',
        data: [2200, 2400, 2100, 2500, 1980], // Replace with your actual values
        backgroundColor: '#6a0dad',
        borderRadius: 5,
        barThickness: 30
      }]
    },
    options: {
      indexAxis: 'y', // Makes it horizontal
      scales: {
        x: {
          beginAtZero: true,
          ticks: {
            precision: 0
          }
        },
        y: {
          ticks: {
            font: {
              size: 14
            }
          }
        }
      },
      plugins: {
        legend: {
          display: false
        },
        datalabels: {
          anchor: 'end',
          align: 'right',
          color: '#000',
          font: {
            weight: 'bold',
            size: 14
          },
          formatter: (value) => value
        }
      }
    },
    plugins: [ChartDataLabels]
  });
</script>


<small>Total crimes by type</small>

<div style="max-width: 650px; margin: 50px auto;">
  <canvas id="typeBarChart" width="650" height="400"></canvas>
</div>

<script>
  const ctx3 = document.getElementById('typeBarChart').getContext('2d');

  new Chart(ctx3, {
    type: 'bar',
    data: {
      labels: ['Auto Theft', 'Robbery', 'Assault', 'Burglary', 'Larceny'],
      datasets: [{
        label: 'Crime Count',
        data: [890, 740, 682, 545, 322], // Replace with your real data
        backgroundColor: [
          '#6a0dad', // Auto Theft
          '#ff6384', // Robbery
          '#36a2eb', // Assault
          '#4bc0c0', // Burglary
          '#ff9f40'  // Larceny
        ],
        borderRadius: 6,
        barThickness: 32
      }]
    },
    options: {
      indexAxis: 'y',
      scales: {
        x: {
          beginAtZero: true,
          ticks: {
            stepSize: 200,
            font: {
              size: 12
            }
          }
        },
        y: {
          ticks: {
            font: {
              size: 14
            }
          }
        }
      },
      plugins: {
        legend: {
          display: false
        },
        datalabels: {
          anchor: 'end',
          align: 'right',
          color: '#000',
          font: {
            weight: 'bold',
            size: 14
          },
          formatter: (value) => value
        }
      }
    },
    plugins: [ChartDataLabels]
  });
</script>














































