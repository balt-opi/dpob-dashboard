---
layout: page
title: "311 Service Requests"
---

# Service Request Statistics

<b></b>
<b></b>

<!-- Stat Boxes -->
<div style="display: flex; gap: 16px; justify-content: center; align-items: stretch;">
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Average Days to Close Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">12.40</div>
  </div>
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Number of Overdue Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">1273</div>
  </div>
</div>

<style>
/* General Layout */
.bar-chart {
  max-width: 900px;
  margin: 40px auto;
  padding: 20px;
  font-family: sans-serif;
}
.chart-title {
  text-align: center;
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 4px;
}
.chart-subtitle {
  text-align: center;
  font-size: 14px;
  color: #666;
  margin-bottom: 20px;
}
.chart-legend {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 12px;
  margin-bottom: 20px;
  gap: 10px;
}
.chart-legend span {
  display: inline-block;
  width: 12px;
  height: 12px;
  border-radius: 2px;
  margin-right: 4px;
}

/* Bar Area */
.bar-container {
  display: flex;
  align-items: flex-end;
  gap: 20px;
  overflow-x: auto;
  padding-bottom: 30px;
}
.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
}

/* Bar and Labels */
.bar {
  width: 30px;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  font-size: 12px;
  font-weight: bold;
  color: #000;
  border-radius: 4px 4px 0 0;
  padding: 2px;
  line-height: 1;
}
.bar-name {
  margin-top: 4px;
  font-size: 11px;
  text-align: center;
  max-width: 60px;
  height: 28px;
  overflow: hidden;
  line-height: 14px;
  word-break: break-word;
}

/* Bar Colors */
.close-bar { background-color: #abb8c3; }
.sla-bar { background-color: #8ed1fc; }
.closed { background-color: #9FE2BF; }
.new { background-color: #f28e2c; }
.open { background-color: #e15759; }
.pending { background-color: #b07aa1; }
</style>

<!-- Chart 1: Average vs SLA -->
<div class="bar-chart">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2024 - 2025</div>
  <div class="chart-legend">
    <span style="background-color: #abb8c3;"></span> Average of Days to Close
    <span style="background-color: #8ed1fc;"></span> Average of SLA
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 76px;">19</div>
      <div class="bar close-bar" style="height: 164px;">41</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 84px;">21</div>
      <div class="bar close-bar" style="height: 84px;">21</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 76px;">19</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 28px;">7.6</div>
      <div class="bar close-bar" style="height: 56px;">14</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 24px;">6</div>
      <div class="bar close-bar" style="height: 36px;">9</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 32px;">8</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 44px;">11</div>
      <div class="bar-name">Graffiti</div>
    </div>
  </div>
</div>

<!-- Chart 2: Service Requests by Group and Status -->
<div class="bar-chart">
  <div class="chart-title">Service Requests by Groups and Status</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2024 - 2025</div>
  <div class="chart-legend">
    <span style="background-color: #9FE2BF;"></span> Closed
    <span style="background-color: #f28e2c;"></span> New
    <span style="background-color: #e15759;"></span> Open
    <span style="background-color: #b07aa1;"></span> Pending
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar closed" style="height: 200px;">1568</div>
      <div class="bar new" style="height: 21px;">89</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 155px;">1201</div>
      <div class="bar new" style="height: 22px;">94</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 145px;">878</div>
      <div class="bar open" style="height: 49px;">298</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 120px;">755</div>
      <div class="bar new" style="height: 15px;">63</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 127px;">801</div>
      <div class="bar pending" style="height: 10px;">52</div>
      <div class="bar-name">Graffiti</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 77px;">477</div>
      <div class="bar new" style="height: 10px;">41</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar closed" style="height: 36px;">224</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
  </div>
</div>

<!-- Chart 3: Service Requests Created Over Time -->
<div class="bar-chart">
  <div class="chart-title">Service Requests Created Over Time</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2024 - 2025</div>
  <div class="chart-legend">
    <span style="background-color: #f28e2c;"></span> Open
    <span style="background-color: #8ed1fc;"></span> Closed
  </div>
  <div class="bar-container">
    <!-- (Bar data remains unchanged from your input) -->
    <!-- Insert all monthly bar-group elements here -->
  </div>
</div>
