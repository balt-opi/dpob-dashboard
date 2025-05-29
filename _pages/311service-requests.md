---
layout: page
title: "311 Service Requests"
---

<style>
.bar-chart {
  font-family: Arial, sans-serif;
  width: 650px;
  margin: 20px auto;
}

.chart-title {
  text-align: center;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 4px;
}

.chart-subtitle {
  text-align: center;
  font-size: 12px;
  color: #555;
  margin-bottom: 20px;
}

.chart-legend {
  text-align: center;
  font-size: 12px;
  margin-bottom: 20px;
}
.chart-legend span {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-right: 5px;
  vertical-align: middle;
  border-radius: 50%;
}

.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 80px;
  margin: 0 8px;
}

.bar-labels {
  display: flex;
  justify-content: center;
  gap: 8px;
  margin-top: 8px;
  font-size: 10px;
  text-align: center;
}

.bar-container {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  height: 220px;
  gap: 8px;
}

.bar {
  width: 20px;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  color: #black;
  font-size: 10px;
  font-weight: bold;
}

.close-bar {
  background-color: #008080;
}
.sla-bar {
  background-color: #00FFFF;
}

.bar-name {
  width: 80px;
  font-size: 11px;
  text-align: center;
}
</style>

<div class="bar-chart">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>
  <div class="chart-legend">
    <span style="background-color: #008080;"></span> Average of Days to Close &nbsp;&nbsp;
    <span style="background-color: #00FFFF;"></span> Average of SLA
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar close-bar" style="height: 164px;">41</div>
      <div class="bar sla-bar" style="height: 76px;">19</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 84px;">21</div>
      <div class="bar sla-bar" style="height: 84px;">21</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 76px;">19</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 56px;">14</div>
      <div class="bar sla-bar" style="height: 28px;">7.6</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 36px;">9</div>
      <div class="bar sla-bar" style="height: 24px;">6</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 32px;">8</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 44px;">11</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Graffiti</div>
    </div>
  </div>
</div>

