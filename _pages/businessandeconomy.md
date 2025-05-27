---
layout: page
title: Business and Economy
---
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Baltimore Dashboard</title>
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
</head>
<body style="background-color: #FFFFFF; color: white; font-family: Arial">

  <h2 style="color:white">Baltimore CBD Office Occupancy (Quarterly)</h2>
  <div id="occupancy" style="width:600px;height:400px;"></div>

<script>
  const data = [{
    x: ["2022-Q1", "2022-Q2", "2022-Q3", "2022-Q4", "2023-Q1", "2023-Q2", "2023-Q3", "2023-Q4", "2024-Q1", "2024-Q2", "2024-Q3"],
    y: [0.777, 0.760, 0.769, 0.771, 0.773, 0.771, 0.768, 0.766, 0.766, 0.775, 0.770],
    type: 'scatter',
    mode: 'lines+markers',
    line: { color: '#3dd598' },
    marker: { size: 8 }
  }];

  const layout = {
    title: {
      text: 'Baltimore CBD Office Occupancy (Quarterly)<br><sup>Source: Baltimore Development Corp, 2024</sup>',
      font: { color: 'white', size: 20 },
      xref: 'paper',
      x: 0.5,
      xanchor: 'center'
    },
    plot_bgcolor: "#0e1c2f",
    paper_bgcolor: "#0e1c2f",
    font: { color: "white" },
    xaxis: { title: "Year (Quarterly)" },
    yaxis: { title: "Average", range: [0.75, 0.785] }
  };

  Plotly.newPlot('occupancy', data, layout);
</script>
</body>
</html>
