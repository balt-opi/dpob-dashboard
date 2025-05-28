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


<div style="max-width: 1000px; margin: 50px auto;">
  <select id="timeScale">
    <option value="daily">By Day</option>
    <option value="monthly" selected>By Month</option>
    <option value="yearly">By Year</option>
  </select>

  <div style="overflow-x: auto; border: 1px solid #ccc; padding: 10px; margin-top: 10px; max-width: 1000px;">
    <canvas id="typeBarChart" width="1800" height="600" style="display: block;"></canvas>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>
  const crimeData = {
    daily: {
      labels: ['2024-05-01', '2024-05-02', '2024-05-03'],
      datasets: {
        'Auto Theft': [12, 15, 9],
        'Robbery': [7, 8, 6],
        'Assault': [5, 10, 4],
        'Burglary': [3, 5, 2],
        'Larceny': [6, 4, 7]
      }
    },
    monthly: {
      labels: ['2024-01', '2024-02', '2024-03', '2024-04', '2024-05', '2024-06', '2024-07', '2024-08', '2024-09', '2024-10', '2024-11', '2024-12'],
      datasets: {
        'Auto Theft': [120, 130, 110, 125, 140, 135, 150, 145, 160, 155, 165, 170],
        'Robbery': [80, 75, 90, 85, 78, 88, 92, 85, 89, 90, 93, 95],
        'Assault': [65, 70, 60, 75, 68, 72, 80, 75, 78, 79, 81, 83],
        'Burglary': [40, 45, 38, 50, 43, 48, 52, 47, 55, 53, 56, 58],
        'Larceny': [55, 50, 48, 60, 58, 54, 65, 63, 66, 68, 70, 72]
      }
    },
    yearly: {
      labels: ['2020', '2021', '2022', '2023', '2024', '2025'],
      datasets: {
        'Auto Theft': [1500, 1600, 1700, 1800, 1900, 2000],
        'Robbery': [900, 850, 875, 920, 940, 960],
        'Assault': [700, 750, 780, 800, 820, 840],
        'Burglary': [400, 450, 420, 460, 480, 490],
        'Larceny': [600, 650, 675, 700, 720, 740]
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
  const canvas = document.getElementById('typeBarChart');

  function buildDatasets(timeKey) {
    return Object.entries(crimeData[timeKey].datasets).map(([crimeType, data]) => ({
      label: crimeType,
      data: data,
      backgroundColor: crimeColors[crimeType],
      borderRadius: 8,
      barThickness: 36
    }));
  }

  function resizeCanvas(labelCount) {
    const width = Math.max(1000, labelCount * 100); // wider bars + padding
    canvas.style.width = width + 'px';
    canvas.style.height = '600px';
    canvas.width = width * (window.devicePixelRatio || 1);
    canvas.height = 600 * (window.devicePixelRatio || 1);
    ctx3.setTransform(1, 0, 0, 1, 0, 0);
    ctx3.scale(window.devicePixelRatio || 1, window.devicePixelRatio || 1);
  }

  resizeCanvas(crimeData.monthly.labels.length);

  const chartConfig = {
    type: 'bar',
    data: {
      labels: crimeData.monthly.labels,
      datasets: buildDatasets('monthly')
    },
    options: {
      indexAxis: 'x',
      scales: {
        x: {
          beginAtZero: true,
          title: { display: true, text: 'Date / Month / Year' },
          ticks: {
            maxRotation: 45,
            minRotation: 45,
            font: { size: 16 }
          }
        },
        y: {
          beginAtZero: true,
          title: { display: true, text: 'Crime Count' },
          ticks: {
            font: { size: 16 }
          }
        }
      },
      plugins: {
        legend: { display: true, position: 'top', labels: { font: { size: 16 } } },
        datalabels: {
          anchor: 'end',
          align: 'top',
          color: '#000',
          font: { weight: 'bold', size: 16 },
          formatter: (value) => value
        }
      },
      maintainAspectRatio: false
    },
    plugins: [ChartDataLabels]
  };

  const chart3 = new Chart(ctx3, chartConfig);

  document.getElementById('timeScale').addEventListener('change', e => {
    const scale = e.target.value;
    chart3.data.labels = crimeData[scale].labels;
    chart3.data.datasets = buildDatasets(scale);
    resizeCanvas(crimeData[scale].labels.length);
    chart3.update();
  });
</script>














































