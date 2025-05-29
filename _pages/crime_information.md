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


Total crimes by type
<small>January 2020–Present</small>

<!-- Wider scrollable container -->
<div style="max-width: 1000px; overflow-x: auto; margin: 50px auto;">
  <select id="timeScale" style="margin-bottom: 10px;">
    <option value="daily">By Day</option>
    <option value="monthly">By Month</option>
    <option value="yearly">By Year</option>
  </select>
  <canvas id="typeBarChart" width="1400" height="600"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>
  const crimeData = {
    daily: {
      labels: ['2024-05-01', '2024-05-02', '2024-05-03', '2024-05-04', '2024-05-05'],
      datasets: {
        'Auto Theft': [12, 15, 9, 8, 10],
        'Robbery': [7, 8, 6, 9, 5],
        'Assault': [5, 10, 4, 6, 7],
        'Burglary': [3, 5, 2, 4, 3],
        'Larceny': [6, 4, 7, 5, 6]
      }
    },
    monthly: {
      labels: ['2024-01', '2024-02', '2024-03', '2024-04', '2024-05', '2025-01', '2025-02'],
      datasets: {
        'Auto Theft': [120, 130, 110, 125, 135, 140, 128],
        'Robbery': [80, 75, 90, 85, 82, 78, 83],
        'Assault': [65, 70, 60, 68, 64, 70, 66],
        'Burglary': [40, 45, 38, 42, 44, 43, 39],
        'Larceny': [55, 50, 48, 52, 49, 54, 51]
      }
    },
    yearly: {
      labels: ['2023', '2024', '2025'],
      datasets: {
        'Auto Theft': [1500, 1600, 800],
        'Robbery': [900, 850, 400],
        'Assault': [700, 750, 300],
        'Burglary': [400, 450, 200],
        'Larceny': [600, 650, 250]
      }
    }
  };

  const crimeColors = {
    'Auto Theft': '#6a0dad',
    'Robbery': '#ff6384',
    'Assault': '#36a2eb',
    'Burglary': '#4bc0c0',
    'Larceny': '#ff9f40'
  };

  const ctx3 = document.getElementById('typeBarChart').getContext('2d');

  function buildDatasets(timeKey) {
    return Object.entries(crimeData[timeKey].datasets).map(([crimeType, data]) => ({
      label: crimeType,
      data: data,
      backgroundColor: crimeColors[crimeType],
      borderRadius: 8,
      barThickness: 20  // ⬅️ Smaller/thinner bars
    }));
  }

  const chartConfig = {
    type: 'bar',
    data: {
      labels: crimeData.daily.labels,
      datasets: buildDatasets('daily')
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      indexAxis: 'x',
      scales: {
        x: {
          beginAtZero: true,
          title: { display: true, text: 'Date / Month / Year' },
          ticks: {
            maxRotation: 45,
            minRotation: 45
          }
        },
        y: {
          beginAtZero: true,
          title: { display: true, text: 'Crime Count' }
        }
      },
      plugins: {
        legend: { display: true },
        datalabels: {
          anchor: 'end',
          align: 'top',
          color: '#000',
          font: { weight: 'bold', size: 12 },
          formatter: (value) => value
        }
      }
    },
    plugins: [ChartDataLabels]
  };

  const chart3 = new Chart(ctx3, chartConfig);

  document.getElementById('timeScale').addEventListener('change', e => {
    const scale = e.target.value;
    chart3.data.labels = crimeData[scale].labels;
    chart3.data.datasets = buildDatasets(scale);
    chart3.update();
  });
</script>















































