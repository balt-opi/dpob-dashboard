---
layout: page
title: Crime Information
---

# Crime Statistics 

<small>January 2024–Present</small>

<small>Source: CitiStat Group A Crime BPD, 2025</small>

*Please note that there was one homicide in May 2024; however, this first chart does not reflect that statistic. Please refer to the Crime Table at the bottom of the page.*

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
        'Rape'
      ],
      datasets: [{
        data: [612, 415, 340, 253, 29],
        backgroundColor: [
          '#6a0dad',
          '#ff6384',
          '#36a2eb',
          '#4bc0c0',
          '#ff9f40'
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

<small>Source: CitiStat Group A Crime BPD, 2025</small>

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

<small>Source: CitiStat Group A Crime BPD, 2025</small>

<div style="overflow-x: auto; max-width: 100%;">
  <table style="border-collapse: collapse; width: 100%; min-width: 1200px; font-family: Arial, sans-serif; font-size: 14px; text-align: center; border: 1px solid #121f3f;">
    <thead>
      <tr style="background-color: #f1c232;">
        <th style="border: 1px solid black; padding: 8px;">Month</th>
        <th style="border: 1px solid black; padding: 8px;">Auto Theft</th>
        <th style="border: 1px solid black; padding: 8px;">Robbery</th>
        <th style="border: 1px solid black; padding: 8px;">Assault</th>
        <th style="border: 1px solid black; padding: 8px;">Burglary</th>
        <th style="border: 1px solid black; padding: 8px;">Larceny</th>
        <th style="border: 1px solid black; padding: 8px;">Homicide</th>
      </tr>
    </thead>
    <tbody>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-01</td><td style="border: 1px solid black;">120</td><td style="border: 1px solid black;">80</td><td style="border: 1px solid black;">65</td><td style="border: 1px solid black;">40</td><td style="border: 1px solid black;">55</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-02</td><td style="border: 1px solid black;">130</td><td style="border: 1px solid black;">75</td><td style="border: 1px solid black;">70</td><td style="border: 1px solid black;">45</td><td style="border: 1px solid black;">50</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-03</td><td style="border: 1px solid black;">110</td><td style="border: 1px solid black;">90</td><td style="border: 1px solid black;">60</td><td style="border: 1px solid black;">38</td><td style="border: 1px solid black;">48</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-04</td><td style="border: 1px solid black;">125</td><td style="border: 1px solid black;">85</td><td style="border: 1px solid black;">68</td><td style="border: 1px solid black;">42</td><td style="border: 1px solid black;">52</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-05</td><td style="border: 1px solid black;">135</td><td style="border: 1px solid black;">82</td><td style="border: 1px solid black;">64</td><td style="border: 1px solid black;">44</td><td style="border: 1px solid black;">49</td><td style="border: 1px solid black;">1</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-06</td><td style="border: 1px solid black;">140</td><td style="border: 1px solid black;">84</td><td style="border: 1px solid black;">66</td><td style="border: 1px solid black;">46</td><td style="border: 1px solid black;">54</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-07</td><td style="border: 1px solid black;">138</td><td style="border: 1px solid black;">86</td><td style="border: 1px solid black;">67</td><td style="border: 1px solid black;">41</td><td style="border: 1px solid black;">56</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-08</td><td style="border: 1px solid black;">142</td><td style="border: 1px solid black;">81</td><td style="border: 1px solid black;">63</td><td style="border: 1px solid black;">43</td><td style="border: 1px solid black;">57</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-09</td><td style="border: 1px solid black;">144</td><td style="border: 1px solid black;">83</td><td style="border: 1px solid black;">69</td><td style="border: 1px solid black;">47</td><td style="border: 1px solid black;">53</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-10</td><td style="border: 1px solid black;">139</td><td style="border: 1px solid black;">87</td><td style="border: 1px solid black;">71</td><td style="border: 1px solid black;">49</td><td style="border: 1px solid black;">58</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2024-11</td><td style="border: 1px solid black;">137</td><td style="border: 1px solid black;">85</td><td style="border: 1px solid black;">70</td><td style="border: 1px solid black;">45</td><td style="border: 1px solid black;">59</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2024-12</td><td style="border: 1px solid black;">145</td><td style="border: 1px solid black;">88</td><td style="border: 1px solid black;">72</td><td style="border: 1px solid black;">48</td><td style="border: 1px solid black;">60</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2025-01</td><td style="border: 1px solid black;">148</td><td style="border: 1px solid black;">90</td><td style="border: 1px solid black;">74</td><td style="border: 1px solid black;">50</td><td style="border: 1px solid black;">62</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2025-02</td><td style="border: 1px solid black;">150</td><td style="border: 1px solid black;">92</td><td style="border: 1px solid black;">73</td><td style="border: 1px solid black;">51</td><td style="border: 1px solid black;">63</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: white;"><td style="border: 1px solid black; padding: 6px;">2025-03</td><td style="border: 1px solid black;">149</td><td style="border: 1px solid black;">91</td><td style="border: 1px solid black;">76</td><td style="border: 1px solid black;">52</td><td style="border: 1px solid black;">61</td><td style="border: 1px solid black;">0</td></tr>
      <tr style="background-color: #f9f9f9;"><td style="border: 1px solid black; padding: 6px;">2025-04</td><td style="border: 1px solid black;">147</td><td style="border: 1px solid black;">89</td><td style="border: 1px solid black;">75</td><td style="border: 1px solid black;">53</td><td style="border: 1px solid black;">64</td><td style="border: 1px solid black;">0</td></tr>
    </tbody>
  </table>
</div>














































