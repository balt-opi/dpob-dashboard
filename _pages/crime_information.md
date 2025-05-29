---
layout: page
title: Crime Information
---

# Crime Statistics 

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


# Total crimes by type

<small>January 2020–Present</small>

<!-- Scrollable container with wide chart -->
<div style="max-width: 1200px; overflow-x: auto; margin: 50px auto;">
  <select id="timeScale" style="margin-bottom: 10px;">
    <option value="daily">By Day</option>
    <option value="monthly" selected>By Month</option>
    <option value="yearly">By Year</option>
  </select>
  <canvas id="typeBarChart" width="1800" height="600"></canvas>
</div>

<!-- Chart.js + Data Labels Plugin -->
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
      labels: [
        '2024-01', '2024-02', '2024-03', '2024-04', '2024-05', 
        '2024-06', '2024-07', '2024-08', '2024-09', '2024-10',
        '2024-11', '2024-12', '2025-01', '2025-02', '2025-03', '2025-04'
      ],
      datasets: {
        'Auto Theft': [120, 130, 110, 125, 135, 140, 138, 142, 144, 139, 137, 145, 148, 150, 149, 147],
        'Robbery': [80, 75, 90, 85, 82, 84, 86, 81, 83, 87, 85, 88, 90, 92, 91, 89],
        'Assault': [65, 70, 60, 68, 64, 66, 67, 63, 69, 71, 70, 72, 74, 73, 76, 75],
        'Burglary': [40, 45, 38, 42, 44, 46, 41, 43, 47, 49, 45, 48, 50, 51, 52, 53],
        'Larceny': [55, 50, 48, 52, 49, 54, 56, 57, 53, 58, 59, 60, 62, 63, 61, 64]
      }
    },
    yearly: {
      labels: ['2020', '2021', '2022', '2023', '2024', '2025'],
      datasets: {
        'Auto Theft': [1300, 1400, 1500, 1600, 1700, 900],
        'Robbery': [700, 750, 800, 850, 900, 500],
        'Assault': [600, 650, 700, 750, 800, 400],
        'Burglary': [300, 350, 400, 450, 500, 300],
        'Larceny': [500, 550, 600, 650, 700, 350]
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
    return Object.entries(crimeData[timeKey].datasets).map(([type, values]) => ({
      label: type,
      data: values,
      backgroundColor: crimeColors[type],
      borderRadius: 6,
      barThickness: 20 // Smaller bars for wider spacing
    }));
  }

  const chart3 = new Chart(ctx3, {
    type: 'bar',
    data: {
      labels: crimeData.monthly.labels,
      datasets: buildDatasets('monthly')
    },
    options: {
      responsive: false,
      indexAxis: 'x',
      scales: {
        x: {
          beginAtZero: true,
          title: {
            display: true,
            text: 'Date / Month / Year'
          },
          ticks: {
            maxRotation: 45,
            minRotation: 45
          }
        },
        y: {
          beginAtZero: true,
          title: {
            display: true,
            text: 'Crime Count'
          }
        }
      },
      plugins: {
        legend: { display: true },
        datalabels: {
          anchor: 'end',
          align: 'top',
          color: '#000',
          font: { weight: 'bold', size: 12 },
          formatter: value => value
        }
      }
    },
    plugins: [ChartDataLabels]
  });

  // Dropdown to switch views
  document.getElementById('timeScale').addEventListener('change', (e) => {
    const scale = e.target.value;
    chart3.data.labels = crimeData[scale].labels;
    chart3.data.datasets = buildDatasets(scale);
    chart3.update();
  });
</script>

# Crime Table

<small>Monthly crime totals by type (2024–2025)</small>
<div style="overflow-x: auto; max-width: 100%;">
  <table style="border-collapse: collapse; width: 100%; min-width: 950px; margin-top: 20px; font-family: sans-serif; font-size: 14px;">
    <thead>
      <tr style="background-color: #f2f2f2;">
        <th style="padding: 8px; border: 1px solid #ccc;">Month</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Auto Theft</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Robbery</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Assault</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Burglary</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Larceny</th>
        <th style="padding: 8px; border: 1px solid #ccc;">Homicide</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>2024-01</td><td>120</td><td>80</td><td>65</td><td>40</td><td>55</td><td>0</td></tr>
      <tr><td>2024-02</td><td>130</td><td>75</td><td>70</td><td>45</td><td>50</td><td>0</td></tr>
      <tr><td>2024-03</td><td>110</td><td>90</td><td>60</td><td>38</td><td>48</td><td>0</td></tr>
      <tr><td>2024-04</td><td>100</td><td>88</td><td>55</td><td>42</td><td>51</td><td>0</td></tr>
      <tr><td>2024-05</td><td>95</td><td>92</td><td>68</td><td>44</td><td>49</td><td>1</td></tr>
      <tr><td>2025-01</td><td>85</td><td>70</td><td>61</td><td>39</td><td>53</td><td>0</td></tr>
      <tr><td>2025-02</td><td>78</td><td>68</td><td>59</td><td>37</td><td>50</td><td>0</td></tr>
      <tr><td>2025-03</td><td>90</td><td>74</td><td>63</td><td>41</td><td>52</td><td>0</td></tr>
      <tr><td>2025-04</td><td>88</td><td>76</td><td>66</td><td>43</td><td>54</td><td>0</td></tr>
    </tbody>
  </table>
</div>













































