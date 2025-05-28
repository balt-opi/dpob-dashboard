---
layout: page
title: Business and Economy
---

**Employment and Labor**

<div id="occupancy" style="width:600px;height:400px;"></div>
<div id="employment" style="width:100%;max-width:700px;height:400px; margin-bottom: 40px;"></div>

<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script>
  // Plot 1: Office Occupancy
  const occupancyData = [{
    x: ["2022-Q1", "2022-Q2", "2022-Q3", "2022-Q4", "2023-Q1", "2023-Q2", "2023-Q3", "2023-Q4", "2024-Q1", "2024-Q2", "2024-Q3"],
    y: [0.777, 0.760, 0.769, 0.771, 0.773, 0.771, 0.768, 0.766, 0.766, 0.775, 0.770],
    type: 'scatter',
    mode: 'lines+markers',
    line: { color: '#00d084' },
    marker: { size: 8 }
  }];

  const occupancyLayout = {
    title: {
      text: 'Baltimore CBD Office Occupancy (Quarterly)<br><sup>Source: Baltimore Development Corp, 2024</sup>',
      font: { color: 'black', size: 20 },
      x: 0.5,
      xanchor: 'center'
    },
    plot_bgcolor: "white",
    paper_bgcolor: "white",
    font: { color: "black" },
    xaxis: { title: "Year (Quarterly)" },
    yaxis: { title: "Average", range: [0.75, 0.785] }
  };

  Plotly.newPlot('occupancy', occupancyData, occupancyLayout);

  // Plot 2: Employment Rates
  const employmentData = [{
    x: [
      "2024-01", "2024-02", "2024-03", "2024-04", "2024-05", "2024-06",
      "2024-07", "2024-08", "2024-09", "2024-10", "2024-11"
    ],
    y: [61.5, 61.4, 61.3, 61.2, 61.1, 61.0, 61.3, 61.6, 61.7, 61.8, 61.9],
    type: 'scatter',
    mode: 'lines+markers',
    line: { color: '#00d084' },
    marker: { size: 6 }
  }];

  const employmentLayout = {
    title: {
      text: 'Employment Rates Over Time<br><sup>Source: BLS, 2025</sup>',
      font: { color: 'black', size: 20 },
      x: 0.5,
      xanchor: 'center'
    },
    plot_bgcolor: "white",
    paper_bgcolor: "white",
    font: { color: "black" },
    xaxis: {
      title: "Month",
      tickangle: -45
    },
    yaxis: {
      title: "Percentage (%)",
      range: [60.5, 62.0]
    }
  };

  Plotly.newPlot('employment', employmentData, employmentLayout);
</script>
